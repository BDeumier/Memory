<?php

class Manager
{
	protected function dbConnect()
	{
    	$db = new PDO('mysql:host=localhost;dbname=memorygame;charset=utf8', 'root', '');
    	return $db;
	}
}