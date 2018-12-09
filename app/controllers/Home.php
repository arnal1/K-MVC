<?php

class Home extends Controller {

    public function index()
    {
        $data['title'] = 'KS-Anime | Home';

        $data['anime'] = $this->model('Anime_model')->getAnimeEpisode();
        $this->view('templates/header', $data);
        $this->view('home/index', $data);
        $this->view('templates/footer');
    }
}