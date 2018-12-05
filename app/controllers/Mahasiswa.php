<?php

class Mahasiswa extends Controller {

    public function index()
    {
        $data['title'] = 'Mahasiswa';

        $data['mhs'] = $this->model('Mahasiswa_model')->getMahasiswa();
        $this->view('templates/header', $data);
        $this->view('mahasiswa/index', $data);
        $this->view('templates/footer');
    }
}