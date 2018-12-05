# K-MVC
A Verry SImple MVC Framework for PHP



#template controller
<?php

class Home extends Controller {

    public function index()
    {
        
    }
}



#template model
<?php

class Mahasiswa_model {

    private $table = 'table_name';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function method_name()
    {
        
    }
}


credit : Ahmat Arnal Kastana
