<?php

//echo $_POST['title'];

class Solicitud{
    public $title;
    public $category;
    public $article;

    function set_title($title){
        $this->titulo = $title;
    }

    function get_title(){
        return $this->titulo;
    }
}

$misolicitud = new Solicitud();
$misolicitud->set_title($_POST['title']);
echo $misolicitud->get_title();

?>