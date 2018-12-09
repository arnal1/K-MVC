<!-- content -->
<section class="content">
    <div class="container">
        <div class="row">
            <div class="col-md-8 konten">

                <div class="row mb-3">
                    <div class="col-md-5 bg-primary">
                        <h5 class="text-center">Latest Release</h5>
                    </div>
                    <div class="col-md-7 bg-dark">
                        
                    </div>
                </div>

                <!-- list anime -->

                <div class="row">
                    <div class="col-md-12 mb-2">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title text-primary">Download Anime "<?= $data['anime']['judul']; ?>" Subtitle Indonesia</h5>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-3">
                                        <img class="card-img-top" src="<?= BASEURL; ?>/data/cover/<?= $data['anime']['cover']; ?>" alt="">
                                    </div>
                                    <div class="col-md-9">
                                        <p><?= $data['anime']['deskripsi']; ?></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="listinfo">
                            <ul>
                                <li><b>Title</b> : <?= $data['anime']['judul']; ?></li>
                                <li><b>Episode</b> : <?= $data['anime']['total_episode']; ?></li>
                                <li><b>Status</b> : <?= $data['anime']['status']; ?></li>
                                <li><b>Rating</b> : <?= $data['anime']['rating']; ?></li>
                                <li><b>Genre</b> : <?= $data['anime']['genre']; ?></li>
                                <li><b>Release Date</b> : <?= $data['anime']['jadwal_rilis']; ?></li>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12 mb-2">
                        <div class="card">
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-12">

                                        <table class="table">
                                            <thead class="thead-dark">
                                                <tr>
                                                    <th scope="col">Episode #</th>
                                                    <th scope="col">Episode Title</th>
                                                    <th scope="col">Download</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <th scope="row">1</th>
                                                    <td>Mark</td>
                                                    <td><a class="btn btn-block btn-primary" href="">Download</a></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">2</th>
                                                    <td>Jacob</td>
                                                    <td><a class="btn btn-block btn-primary" href="">Download</a></td>
                                                </tr>
                                                <tr>
                                                    <th scope="row">3</th>
                                                    <td>Larry</td>
                                                    <td><a class="btn btn-block btn-primary" href="">Download</a></td>
                                                </tr>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- end list anime -->

            </div>

            <!-- sidebar -->
            <div class="col-md-4 sidebar">

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                INFO
                            </div>
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus laudantium natus illo nobis odio quae fugit autem placeat ratione? Porro placeat sint qui dicta accusantium fugit tempore explicabo quos. Nemo.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                LATEST SERIES
                            </div>
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus laudantium natus illo nobis odio quae fugit autem placeat ratione? Porro placeat sint qui dicta accusantium fugit tempore explicabo quos. Nemo.
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row mb-3">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                TOP ANIME
                            </div>
                            <div class="card-body">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Ducimus laudantium natus illo nobis odio quae fugit autem placeat ratione? Porro placeat sint qui dicta accusantium fugit tempore explicabo quos. Nemo.
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- end sidebar -->

        </div>
    </div>
</section>
<!-- end content -->