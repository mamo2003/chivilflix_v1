# chivilflix

aqui se gfuardan todos los films que poseemos , con el fin de poder administrarlos y visualizar de una forma organizada cada uno de los registros que se desprenden de cada Films incluido dentro de nuestra coleccion.
ademas nos permite AGREGAR , EDITAR, ELIMINIAR  en el momento que sea necesario.

## iniciar el servidor

Incializar desde new terminal con comando=  npm run  start.

### Gettin Started

Para acceder a la base de datos  se debe usar la siguiente URL:

 <http://localhost:7000/>

#### Endpoints

metodo|first header | second header | :parameters | detalle
------|-------------|---------------|-------------|----------
GET  |/films /      |               |             |   trae resultado  total de articulos en almacen.
GET  |/films/       |  :nombre      |             |  trae resultado segun nombre parcial o  total de la pelicula .
GET  |/films/       |  categoria/   | :categoria  |  trae resultado por categoria  de apto edad .
GET  |/films/       |  :actor       |             | trae resultado segun nombre parcial o  total de actores en el reparto.
POST  |/films/cargar/|              |             | ingresar a traves de posmant // thunder , options: POST  ingresar la ruta , definir opcion JSON  -- RAW  y colocar en el body: {"id": n,"filmName":"Abcdef","filmImage":xxx,"categoria":"Asgdefcewa","genero":"Asgdefcewa","resumen":"Asgdefcewa","duracion":"Asgdefcewa","actores":"Asgdefcewa"}.luego presionar SEND. y el articulo sera creado en la base mongoDB.
PUT | api/films/films|/cambiar/     |  :id         |ingresar el id  en la bara del navegador  seguido de la ruta  e ingresar a traves de posmant // thunder , options: PUT  ingresar la ruta , definir opcion JSON  -- RAW  y colocar en el body con el siguiente formato: {"id": n,"filmName":"Abcdef","filmImage":xxx,"categoria":"Asgdefcewa","genero":"Asgdefcewa","resumen":"Asgdefcewa","duracion":"Asgdefcewa","actores":"Asgdefcewa"}. los datos que se quieran actualizar . luego presionar SEND. y el articulo se actualizaran los datos ingresados en la base mongoDB.
DELETE|api/films /eliminar/|  :id           |             |ingresa el numero de Id  a continuacion de la ruta marcada en el navegador  de posmant // thunder , options: DELETE,  luego presiona "SEND".

### LINKS NAVBAR

Entre las opciones de accesos , al colocar la ruta raiz en el navegador, trae un NAVBAR  con acceso a cada endpoin con metodo GET que se ha generado  para este trabajo. por el momento falta desarrollar los metodos PUT-PATCH-POST-DELETE, lo cual se encuentra en desarrollo para evitar tener que gestionarlos voa posmant,thunderclient, etc.
