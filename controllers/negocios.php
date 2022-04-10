<?php

class Negocios extends Controller{

    function __construct(){
        parent::__construct();
    }

    function render(){
        $noticias = $this->model->getnegocios();
        $this->view->noticias = $noticias;
        $this->view->render('negocios/index');
    }

}

?>