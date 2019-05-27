<?php $title = 'Kana memory'; ?>

<?php ob_start(); ?>
<!-- Header? dans un autre fichier en include?-->
<h1>Kana memory</h1>

<!-- Corps de la page-->
<div id="mainGame">
	<div id="progression">
		<h2>Progression</h2>

<!-- While $data = $levelList->fetch? -->
		<p>Niveau en cours : <?= $level['levelNumber']; ?></p>
		<a href="index.php?action=level&levelNumber=1">Niveau 1</a>
		<a href="index.php?action=level&levelNumber=2">Niveau 2</a>
		<a href="index.php?action=level&levelNumber=3">Niveau 3</a>
		<a href="index.php?action=level&levelNumber=4">Niveau 4</a>
		<?= var_dump($levelList); ?>
	</div>

	<div id="gameScreen">
		<div id ="cards">
			<?php
				$i = 1; 
				while ($i <= $level['cardNumber'])
				{
			?>
					<div class="card" value=""></div>
			<?php
					$i++;
				}
			?>
		</div>
	</div>

	<div id="levelData">
		<h2>Données du niveau</h2>
		<p>Niveau <?= $level['levelNumber']; ?></p>
		<p>Nombre de symboles : <?= $level['symbolNumber']; ?></p>
		<p>Nombre de cartes : <?= $level['cardNumber']; ?></p>
		<p>Symboles : <?= $level['kanaType']; ?></p>
		<p>Groupe de kanas: <?= $level['kanaGroup1']; ?></p>
		<p>Kanas : <?= $kanas['kana1']; ?>, <?= $kanas['kana2']; ?>, <?=  $kanas['kana3']; ?>, <?= $kanas['kana4']; ?>, <?= $kanas['kana5']; ?></p>
	</div>
</div>

<!-- Footer? dans un autre fichier en include?-->

<?php $content = ob_get_clean(); ?>

<?php require('view\frontend\template.php'); ?>