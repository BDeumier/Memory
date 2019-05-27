<?php
require_once('model\Manager.php');

class LevelManager extends Manager
{
	public function getLevel($levelId)
	{
		$db = $this->dbConnect();
		$req = $db->prepare('SELECT id, levelNumber, symbolNumber, cardNumber, kanaType, specialRule, kanaGroup1 FROM leveldata WHERE levelNumber = ?');
		$req->execute(array($levelId));
		$level = $req->fetch();

		return $level;
	}

	public function getLevelList()
	{
		$db = $this->dbConnect();
		$req = $db->query('SELECT levelNumber FROM leveldata ORDER BY levelNumber');

		return $req;
	}
}