<?php

class RegistroModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function insertuser($datos){
        
        try{
            $query = $this->db->connect()->prepare('INSERT INTO usuarios (EMAIL, CLAVE, NOMBRE) 
            VALUES (:email, :password, :nombre)');
            $query->execute(['email' => $datos['email'], 'password' => $datos['password'], 'nombre' => $datos['nombre']]);
            return true;
            
        }catch(PDOException $e){
            //echo $e->getMessage();
            //echo "Email Previamente Registrado. Intente con uno Nuevo";
            return false;
        }
        
    }
}
