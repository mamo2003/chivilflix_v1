const {filmhome} = require('../controllers/filmhome')
const { ErrorPage } = require('../controllers/ErrorPage');
const { SearchId } = require('../controllers/SearchId');
const { DeleteCode } = require('../controllers/DeleteCode');
const { HomePage} = require('../controllers/HomePage');
const { createCode } = require('../controllers/createCode');
const { changeCode } = require('../controllers/changeCode');
const { SearchCat } = require('../controllers/SearchCat');
const { SearchGenero } = require('../controllers/SearchGenero');
const { SearchFilm } = require('../controllers/SearchFilm');
const {SearchAct} = require('../controllers/SearchAct');
const { SearchActrizFilms } = require('../controllers/SearchActrizFilms');
const { Searchtrailers } = require("../controllers/Searchtrailers");
const router = require('express').Router();

router.get('/', HomePage);

router.get('/film', filmhome);

router.get('/id/:idfilm', SearchId);

router.get('/categoria/:categoria', SearchCat);

router.get('/genero/:genero', SearchGenero);

router.get('/buscar/:query', SearchFilm);

router.get('/reparto/:query', SearchAct);

router.get("/actrices/", SearchActrizFilms);

router.get("/trailers/", Searchtrailers);

router.post('/cargar/', createCode);

router.put('/cambiar/:idfilms', changeCode);

router.delete('/eliminar/:idfilms', DeleteCode);

router.get('*', ErrorPage);

module.exports = router;
