<?php

class Contacto extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->mensaje = "";
    }

    function render(){
        $this->view->render('contacto/index');

    }

    function registrarNuevoContacto(){
        $nombre   = $_POST['user_name'];
        $email    = $_POST['user_email'];
        $asunto   = $_POST['user_subject'];
        $msg      = $_POST['user_msg'];

        $mensaje = "";

        if($this->model->insertcontact(['nombre' => $nombre, 'email' => $email, 
        'asunto' => $asunto, 'msg' => $msg])){
            $mensaje = "Gracias por Contactanos. Atenderemos su solicitud a la brevedad";
        }else{
            $mensaje = "Problemas al registrar el contacto. Intentelo Nuevamante";
        }

        $this->view->mensaje = $mensaje;
        $this->render();
    }
}

?>