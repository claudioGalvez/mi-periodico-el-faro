<?php

class Registro extends Controller{

    function __construct(){
        parent::__construct();
        $this->view->mensaje = "";
    }

    function render(){
        $this->view->render('registro/index');
    }

    function registrarNuevoUsuario(){
        $nombre   = $_POST['nombre'];
        $email    = $_POST['email'];
        $password = $_POST['password'];

        $mensaje = "";

        if($this->model->insertuser(['nombre' => $nombre, 'email' => $email, 'password' => $password])){
            $mensaje = "Usuario Registrado Correctamente";
        }else{
            $mensaje = "Usuario Previamente Registrado";
        }

        $this->view->mensaje = $mensaje;
        $this->render();
    }
}

?>