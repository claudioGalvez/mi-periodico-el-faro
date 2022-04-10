<?php

class FormularioModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function insertnew($datos){
        try{
            $query = $this->db->connect()->prepare('INSERT INTO noticias (SECCION, TITULO, NOTICIA, CATEGORIA, ARCHIVOIMAGEN, ARCHIVOVIDEO, ARCHIVOAUDIO, TIMESTAMP_REGISTRO) VALUES (:seccion, :titulo, :noticia, :categoria, :archivoimagen, :archivovideo, :archivoaudio, CURRENT_TIMESTAMP)');
            $query->execute([
                'seccion'       => $datos['seccion'], 
                'titulo'        => $datos['titulo'],
                'noticia'       => $datos['noticia'], 
                'categoria'     => $datos['categoria'], 
                'archivoimagen' => $datos['archivoimagen'], 
                'archivovideo'  => $datos['archivovideo'], 
                'archivoaudio'  => $datos['archivoaudio'] 
                ]);
            return true;
        }catch(PDOException $e){
            return false;
        }
    }
}

?>