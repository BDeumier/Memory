<?php
require('controller/controller.php');

//on route vers le bon controller en fonction de l'action

try
{
	if(isset($_GET['action']))
	{
		//succession de tests pour router
		//on utilisera le lastLevel si un user est connecté
		if($_GET['action'] == 'level')
		{
			if(isset($_GET['levelNumber']) && $_GET['levelNumber'] > 0)
			{
				loadLevel($_GET['levelNumber']);
			}
			else
			{
				throw new Exception("Le niveau demandé n'existe pas", 1);
				
			}
		}
	}
	
	else
	{
		loadLevel(1);
	}

}

catch(Exception $e)
{
	//gestion des erreurs
}