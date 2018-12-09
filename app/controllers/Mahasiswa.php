<?php

class Mahasiswa extends Controller {

    public function index()
    {
        $data['title'] = 'List Mahasiswa';

        $data['mhs'] = $this->model('Mahasiswa_model')->getMahasiswa();
        $this->view('templates/header', $data);
        $this->view('mahasiswa/index', $data);
        $this->view('templates/footer');
    }

    public function detail($id)
    {
        $data['title'] = 'Detail Mahasiswa';

        $data['mhs'] = $this->model('Mahasiswa_model')->getMahasiswaById($id);
        $this->view('templates/header', $data);
        $this->view('mahasiswa/detail', $data);
        $this->view('templates/footer');
    }

    public function tambah()
    {
        if ($this->model('Mahasiswa_model')->tambahMahasiswa($_POST) > 0) {
            Flasher::setFlash('Berhasil','Ditambahkan','success');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash('Gagal','Ditambahkan','danger');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        }
    }

    public function hapus($id)
    {
        if ($this->model('Mahasiswa_model')->hapusMahasiswa($id) > 0) {
            Flasher::setFlash('Berhasil','Dihapus','success');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash('Gagal','Dihapus','danger');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        }
    }

    public function getEdit()
    {
        echo json_encode($this->model('Mahasiswa_model')->getMahasiswaById($_POST['id']));
    }

    public function edit()
    {
        if ($this->model('Mahasiswa_model')->editMahasiswa($_POST) > 0) {
            Flasher::setFlash('Berhasil','Diubah','success');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        } else {
            Flasher::setFlash('Gagal','Diubah','danger');
            header ('Location: '. BASEURL .'/mahasiswa');
            exit;
        }
    }

    public function cari()
    {
        $data['title'] = 'List Mahasiswa';

        $data['mhs'] = $this->model('Mahasiswa_model')->cariMahasiswa();
        $this->view('templates/header', $data);
        $this->view('mahasiswa/index', $data);
        $this->view('templates/footer');
    }

}