<?php

class Deportes extends Controller{

    function __construct(){
        parent::__construct();        
    }

    function render(){
        $noticias = $this->model->getdeportes();
        $this->view->noticias = $noticias;
        $this->view->render('deportes/index');
    }

}

?>