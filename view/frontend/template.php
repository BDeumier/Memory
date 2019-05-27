<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <!-- On modifie le viwport pour que les mobiles ne dézooment pas automatiquement -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">

        <title><?= $title?></title>
        <link rel="stylesheet" href="public/css/style.css" />
    </head>

    <body>
    	<?= $content ?>

    	<script src="./public/js/App.js"></script>
        <script src="./public/js/Card.js"></script>
    </body>
</html>