plataforma - app service. No "ves una máquina virtual". Obviamente debe existir en algún lado, pero no es una única máquina a la que puedes acceder. No tienes la administración de esa computadora.

---> serverless es una abstracción todavía mayor de la plataforma. Ni siquiera hay una plataforma. Azure = azure functions. AWS = Lambda functions. GitHub = github actions

Si pensamos en serverless, debemos pensar en lo siguiente:
- está pensado para que uno ponga ahí una función en particular. Algo en concreto que quieras realizar. Un endpoint. Por ejemplo, una función lambda que haga el post, otra que haga el push, otra que haga el delete, otra que haga el get. 
- NO es necesario crear toda una aplicación, solo una función lambda que haga una petición. 

Tiene limitaciones:
- peso específico en el código. No puede subir una aplicación completa. Hablamos de KBs. 
- tiempo. No puede tardar mucho, debe ser rápido o te cobran.