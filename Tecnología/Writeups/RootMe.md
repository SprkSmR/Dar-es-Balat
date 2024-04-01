A ctf for beginners, can you root me? 

# Writeup
## 1. Deploy machine and connect to VPN
![[Pasted image 20240228025156.png]]

Connect using [[OpenVPN]]. 
![[Pasted image 20240228025431.png]]

## 2. Reconnaissance
First, run a basic [[NMap]] scan on the target [[IP]] to find out the open ports and services.
![[Pasted image 20240228030510.png]]

**Therefore, there are 2 ports open and the service running in port 22 is ssh.**

In order to find out the [[Apache]] version, I sent a [[Curl]] to the [[IP]] address, so that it sent me back the headers. There I could expect to receive the [[Apache]] version.
![[Pasted image 20240228030805.png]]

**Apache version is 2.4.29, then.**

Next, I ran a [[GoBuster]] scan on the [[Web]] address for that [[IP]] using the common.txt [[Wordlist]]. 
![[Pasted image 20240228031052.png]]

At first, I couldn't notice any remarkably *hidden* directory so I thought I had to keep looking for something more obvious. I tried using the other [[Wordlist]]s like big.txt. After some lengthy scans, I didn't notice anything different, so I went for "panel" since it matched the answer length.

Looking back, I should have tried opening the [[URL]] on my web browser and from there I could have come to the following conclusions:
- .hta, .htaccess and .htpasswd are default hidden directories. Those are not the target. Besides, they are forbidden.
- css and js are just to store the [[Javascript]] and [[CSS]] files that support the rest of the [[Web]]site.
- index.php is the default page.
- server-status is forbidden, so the road was blocked.
- That leaves me with just panel and uploads, but since uploads is empty and I don't have any way of modifying it (yet), it must have been panel.

**The hidden directory was /panel/**

## 3. Getting a shell
I was mostly clueless from this point on. At first I tried using [[MSFVenom]] to create a [[Reverse Shell]], but it wasn't working out. My plan was creating an [[.exe]] for the [[Linux]] (since the [[Curl]] response said it was running on [[Ubuntu]]), but it had to be executed somehow from the inside.

I used the Hint button and learned that I had to research ways of bypassing the [[PHP]] extension (https://book.hacktricks.xyz/pentesting-web/file-upload) and how to do a [[PHP]] [[Reverse Shell]] (https://www.youtube.com/watch?v=gQuhHZ3Wb-A). It made a lot of sense, since I understood this logic:
- If I managed to upload a [[PHP]] file on the [[Web]]site, then I could navigate to it like a normal page.
- This would allow me to run the command which would in turn give me a [[Shell]].

I ended up uploading this file on the panel page:
![[cmd.png.php5]]

And that allowed me to execute console commands from the browser like so:
![[Pasted image 20240228033036.png]]

Now, I created a small [[Web]] [[Server]] that allowed me to listen to that [[Shell]] from my own. 

I started by creating this [[HTML]] file. This allows me to execute a [[Bash]] script once that [[Server]] starts running, which creates the connection to the [[Reverse Shell]] using [[Port]] 443 from my machine:
![[index.html]]

Then, fired up a [[Python]] [[Server]] on [[Port]] 80 
![[Pasted image 20240228033347.png]]

And started listening on [[Port]] 443 from my [[Terminal]].
![[Pasted image 20240228033959.png]]

Lastly, I had to create the connection from the target machine's end. I used [[Burp Suite]] to encode a [[Curl]] to my machine piped to [[Bash]].

This successfully completed the [[Reverse Shell]]:
![[Pasted image 20240228034318.png]]

After a lot of messing around, checking files and trying to find the flag in the darkest corners of the file system, I finally found it:

![[Pasted image 20240228034544.png]]

**The flag was stored inside the user.txt file**

## 4. Privilege escalation
Again, I had no idea what to do exactly, so I began by researching [[Privilege Escalation]] on my own (https://www.youtube.com/watch?v=nj-dYB3D2dA).

I learned a lot of things from that video, one of the most important ones, was using the following command to find out which directories had [[SUID]] permission. 

![[Pasted image 20240228035013.png]]

That video also taught me to think about what to look for among these directories. Anything that allowed me to manipulate (read or write) files, would go a long way. Among all these options, the [[Python]] directory stood out for me. 

**The weirdest file was /usr/bin/python**

From the same video, I learned about [[GTFOBins]]. There I could basically find out what I could do given access to those directories. Having access to Python meant I could write and execute scripts from my [[Shell]], so I had a plan:
- Through the accidental extra reconnaissance I performed in the third step, I saw a "root" folder I had no access to. I knew something was hidden here, so I had to know what files were inside.
- Upon knowing the directory's contents, I could then read the file and get that flag at last.

After some errors and missed attempts, I came to these two small scripts:

![[Pasted image 20240228035840.png]]

**The result of that last [[Python]] script was the last flag for this room.** 