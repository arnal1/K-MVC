<?php

class Anime extends Controller {

    public function index()
    {
        $data['title'] = 'KS-Anime | List Anime';

        $data['anime'] = $this->model('Anime_model')->getAnime();
        $this->view('templates/header', $data);
        $this->view('anime/index', $data);
        $this->view('templates/footer');
    }

    public function detail($id)
    {
        $data['title'] = 'KS-Anime | Detail';

        $data['anime'] = $this->model('Anime_model')->getAnimeById($id);
        $this->view('templates/header', $data);
        $this->view('anime/detail', $data);
        $this->view('templates/footer');
    }
}