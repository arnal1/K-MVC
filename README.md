# K-MVC
A Verry SImple MVC Framework for PHP


#FITUR:
1. Akses model menggunakan metode binding PDO, jadi aman dari SQL injection.
2. Menggunakan driver db connection PDO;


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
