<?php

class Main extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->noticias = [];
    }

    function render(){
        $noticias = $this->model->get();
        $this->view->noticias = $noticias;
        $this->view->render('main/index');
    }

}

?>