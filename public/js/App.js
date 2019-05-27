function App()
{
	console.log("on lance le jeu");
	//var card = new Card();

	var cards = document.getElementsByClassName("card");
	//cards

	for (var i = 0; i < cards.length; i++)
	{
		cards[i].addEventListener("click", function ()
		{
			console.log("On clique sur une carte");
		});
	}	
}

var app = new App();