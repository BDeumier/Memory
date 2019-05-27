<?php
require_once('model\LevelManager.php');
require_once('model\KanaManager.php');

function loadLevel($levelId)
{
	$levelManager = new LevelManager();
	$level = $levelManager->getLevel($levelId);
	$levelList = $levelManager->getLevelList();

	$kanaManager = new KanaManager();
	$kanas = $kanaManager->getKanas($level['kanaGroup1']);
	//$pronounciation = $kanaManager->getInformation($kanas);

	require('view\frontend\levelView.php');
}