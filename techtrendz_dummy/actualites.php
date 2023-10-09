<?php
require_once __DIR__ . "/lib/config.php";
require_once __DIR__ . "/lib/pdo.php";
require_once __DIR__ . "/lib/article.php";
require_once __DIR__ . "/lib/session.php";
require_once __DIR__ . "/templates/header.php";

$articles = getArticles($pdo);
?>

<h1>TechTrendz Actualités</h1>
    <div class="row text-center">
<?php

foreach ($articles as $article){
?>
    <div class="col-md-4 my-2 d-flex">
        <div class="card">
            <img src="<?php if($article['image'] == null){echo _ARTICLES_DEFAULT_IMAGES_FOLDER_;}else{
                echo _ARTICLES_IMAGES_FOLDER_.$article['image'];}?>" class="card-img-top" alt="Les meilleurs outils DevOps">
            <div class="card-body">
                <h5 class="card-title"><?php echo $article['title'] ?></h5>
                <a href="actualite.php?id=<?php echo $article['id'] ?>" class="btn btn-primary">Lire la suite</a>
            </div>
        </div>
    </div>
    <?php
}
    ?>
    </div>
<?php require_once __DIR__ . "/templates/footer.php"; ?>