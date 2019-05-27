<?php
require_once('model\Manager.php');

class KanaManager extends Manager
{
	public function getKanas($kanaGroup)
	{
		$db = $this->dbConnect();
		$req = $db->prepare('SELECT kana1, kana2, kana3, kana4, kana5 FROM kanagroup WHERE id = ?');
		$req->execute(array($kanaGroup));
		$kanas = $req->fetch();

		return $kanas;
	}

	public function getInformation($kanas)
	{
		$db = $this->dbConnect();
		$req = $db->prepare('SELECT pronounciation FROM kanadata WHERE id = ?');
		$req->execute(array());
		$pronounciation = $req->fetch($kanas['kana1'], );

		return $pronounciation;
	}
}