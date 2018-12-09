<?php

class Anime_model {

    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAnime()
    {
        $this->db->query('SELECT * FROM anime ORDER BY judul ASC');
        return $this->db->resultSet();
    }

    public function getAnimeEpisode()
    {
        $this->db->query('SELECT * FROM anime_perepisode ORDER BY waktu_rilis DESC');
        return $this->db->resultSet();
    }

    public function getAnimeById($id)
    {
        $this->db->query('SELECT * FROM anime WHERE id=:id');
        $this->db->bind('id', $id);
        return $this->db->single();
    }

}