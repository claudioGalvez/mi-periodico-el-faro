<?php

include_once 'models/noticia.php';

class NegociosModel extends Model{

    public function __construct(){
        parent::__construct();
    }

    public function getnegocios(){
        $items = []; 

        try{
            $query = $this->db->connect()->query("SELECT SECCION,TITULO,CATEGORIA,NOTICIA,ARCHIVOIMAGEN,ARCHIVOVIDEO,ARCHIVOAUDIO FROM noticias WHERE SECCION=3 ORDER BY TIMESTAMP_REGISTRO DESC");

            while($row = $query->fetch()){
                $item = new Noticia();
                $item->seccion     = $row['SECCION'];
                $item->titulo      = $row['TITULO'];
                $item->categoria   = $row['CATEGORIA'];
                $item->noticia     = $row['NOTICIA'];
                $item->imagen      = $row['ARCHIVOIMAGEN'];
                $item->video       = $row['ARCHIVOVIDEO'];
                $item->audio       = $row['ARCHIVOAUDIO'];
                $item->rutaimagen  = "";
                $item->rutavideo   = "";
                $item->rutaaudio   = "";
    
                if($row['ARCHIVOIMAGEN']!=""){
                    $rutai = 'src="views/img/' . $item->imagen . '"';
                    $item->rutaimagen  = $rutai;
                }   

                if($row['ARCHIVOVIDEO']!=""){
                    $rutav = '<video src="views/video/' . $item->video . '" controls>';
                    $item->rutavideo = $rutav;
               // }else{
                 //   $item->rutavideo = "<video></video>";
                }

                if($row['ARCHIVOAUDIO']!=""){
                    $rutaa = '<audio controls> <source src="views/audio/' . $item->audio . 
                    '" type="audio/mp3"> <audio>';
                    $item->rutaaudio  = $rutaa;
             //   }else{
               //     $item->rutaaudio = "<audio></audio>";
                }   
                
                array_push($items, $item);
                
            }
            return $items;

        }catch(PDOException $e){
            return[];
        }

    }
}

?>