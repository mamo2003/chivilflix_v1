# chivilflix

aqui se guardan todos los films que poseemos , con el fin de poder administrarlos y visualizar de una forma organizada cada uno de los registros que se desprenden de cada Films incluido dentro de nuestra coleccion de peliculas y series.
ademas nos permite AGREGAR , EDITAR, ELIMINIAR  en el momento que sea necesario.

## iniciar el servidor

Incializar desde new terminal con comando=  npm run  start.

### Gettin Started

Para acceder a la base de datos  se debe usar la siguiente URL:

 <http://localhost:7000/>

#### Endpoints

metodo|first header | second header | :parameters | detalle
------|-------------|---------------|-------------|----------
GET  |/      |               |             | trae resultado  total de filmms.
GET  |/films /      |               |             | trae resultado  total de films .
GET  |/films/       |  id/          |  :id        | trae resultado segun el id  de la pelicula(ingresarlo en barra navegador).
GET  |/films/       |  categoria/   | :categoria  | trae resultado por categoria (ingresarlo en barra navegador: peliculas,series,etc) .
GET  |/films/       |  genero/      | :genero     | trae resultado por generos (ingresarlo en barra navegador: aventura, cficcion, drama, etc).
GET  |/films/       |  reparto  /    | :query      | trae resultado segun nombre parcial o  total de actores en el reparto (ingresarlo en barra navegador).
GET  |/films/       |  buscar  /     | :query      | trae resultado segun nombre parcial o  total de nombre pelicula o serie (ingresarlo en barra navegador).
GET  |/films/       |  actrices/    |             | trae resultado nombre de pelicula y actriz que que es parte del reparto.
GET  |/films/       |  trailers/    |             | trae resultado nombre de pelicula , genero y trailers ordenados por films.
POST  |/films/      |  cargar/      |             | ingresar a traves de posmant // thunder , options: POST  ingresar la ruta , definir opcion JSON  -- RAW  y colocar en el body: {"poster":"Abcdef","titulo":"abdgcers","categoria":"Asgdefcewa","genero":"Asgdefcewa","resumen":"Asgdefcewa","temporada":xx ,"reparto":"Asgdefcewa","trailers": "jcbsdkahiuw" }.luego presionar SEND. y el articulo sera creado en la base sql.
PUT | /films/    | cambiar/      |  :id         |ingresar el id  en la bara del navegador  seguido de la ruta  e ingresar a traves de posmant // thunder , options: PUT  ingresar la ruta , definir opcion JSON  -- RAW  y colocar en el body con el siguiente formato: {"poster":"Abcdef","titulo":"abdgcers","categoria":"Asgdefcewa","genero":"Asgdefcewa","resumen":"Asgdefcewa","temporada":xx ,"reparto":"Asgdefcewa","trailers": "jcbsdkahiuw"}. los datos que se quieran actualizar . luego presionar SEND. y el articulo se actualizaran los datos ingresados en la base mongoDB.
DELETE|api/films/   |eliminar/      |  :id          |ingresa el numero de Id  a continuacion de la ruta marcada en el navegador  de posmant // thunder , options: DELETE,  luego presiona "SEND".

### LINKS NAVBAR

Entre las opciones de accesos , al colocar la ruta raiz en el navegador, trae un NAVBAR  con acceso a cada endpoin con metodo GET que se ha generado  para este trabajo. por el momento falta desarrollar los metodos PUT-PATCH-POST-DELETE, lo cual se encuentra en desarrollo para evitar tener que gestionarlos desde posmant.