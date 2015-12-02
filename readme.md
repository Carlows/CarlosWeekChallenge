* Lunes:
	- Crea un repositorio en github y haz tu primer commit. Manten el código de cada actividad separado en carpetas llamadas por el dia
	- Realiza una animación de css3 totalmente libre, utilizando la libreria Animate.css.
	- Realiza una animación de css3 totalmente libre sin utilizar librerias.
	- Copia el diseño de una página web sencilla sin utilizar librerias, solo HTML y CSS.

---------------------------------------------------------------------------------------------------------

* Martes:
	- Crea dos tablas, llamadas Partido y Equipo, con los campos que consideres que estas tablas puedan necesitar (id, nombreEquipo, fecha, etc..), para SQL Server, MySQL y para MongoDB
	o sea, una base de datos con esas tablas por separado para cada una. Debes crear consultas para obtener todos los partidos y también para un equipo en especifico. Como extra, realiza 
	una relación de uno a muchos entre Equipo y Partido, y haz una consulta para obtener todos los partidos de un equipo en especifico.
	- Utilizando Express.JS, crea una conexión a esta base de datos (la de mongodb) y crea un controlador, que devuelva los resultados de todos los partidos.
	- Utilizando Express.JS, crea una aplicación que le pida al usuario sus datos personales a través de un formulario, este formulario se envie al servidor, y el servidor los almacene
	en memoria o en una base de datos (MySQL o MongoDB) y luego en otra página, se muestren todas las personas que se inscribieron.

---------------------------------------------------------------------------------------------------------

* Miercoles:
	- Realiza una página web libre utilizando Bootstrap. Descarga un template de internet y utilizalo.
	- Utilizando Express.JS, crea una api (un controlador) que devuelva una lista de usuarios con usuario y contraseña en formato JSON. Ahora, crea una página web,
	montala en el servidor de WAMPServer (el de express.js tendra su propio puerto y servidor), y en esta página web utiliza JQuery para hacer una petición AJAX a esa api,
	y que muestre en una tabla todos los usuarios.
	- Lo mismo que el anterior, utilizando la api, pero haciendo la peticion AJAX desde AngularJS.

---------------------------------------------------------------------------------------------------------

* Jueves:
	- Utiliza Jquery y haz una página web con un carousel slider, también utiliza jquery para crear un plugin propio, totalmente libre.
	- Crea varios gráficos utilizando Google Charts con data aleatoria.
	- Crea varios gráficos utilizando Chart.js con data aleatoria.
	- Utilizando una framework para aplicaciones en tiempo real, como Signal.R(asp.net) o Socket.IO (para node.js), haz que el servidor mande datos en tiempo real a estas
	gráficas, y se actualicen automáticamente sin tener que actualizar el navegador.

---------------------------------------------------------------------------------------------------------

* Viernes:
	- Crea una aplicación de escritorio en Java, utilizando ventanas, utilizando Swing. Que muestre una tabla de datos de usuarios. Esa data TIENE que venir de un servidor,
	puede ser la api de express.js, o de otro lado, y la aplicacion tiene que hacer una petición http y convertir la data en un formato que java pueda poner en la tabla.
	- La misma actividad anterior pero utilizando JavaFX en vez de Swing.
	- Crea una aplicación de consola en C#, que haga lo mismo que las actividades anteriores, una petición http a un servidor para pedirle datos de usuarios. y muestre estos
	datos en consola.


El código de todas las actividades debe de estar en el repositorio de github, separado por carpetas (lunes, martes, miercoles..) y dentro de cada una el nombre de la actividad.
Las actividades no dependen una de otra. Si una actividad te pide que desde JQUERY hagas una peticion ajax a la api de la actividad anterior la cual usaba una base de datos, 
puedes reemplazar esa base de datos simplemente por un array con datos de personas.