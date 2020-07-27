Entrevoisins


Description:

Ce projet a pour but de mettre en place le Backend c'est-à-dire concevoir une API qui permet de répondre aux différentes opérations telles que:

	*-Ajout d’un voisin
	*-Lister les voisins
	*-Consulter le detail d’un voisin
	*-Marquer un voisin comme favoris

Pré-requis :
Nous avons eu à installer:
	*-rails
	*-postman
	*-yarn
	*-DbBrowser

Installation:

rails new api-voisin
Placez vous a la racine de votre projet
rails g scaffold Voisin name:string number:integer address:string aboutme:text favori:boolean
rails db:create : Pour créer une base de données vide
rails db:migrate : Pour migrer vers la base de donnée
pour tester:http://localhost:3000/voisin

*-Pour mettre le lien vers le code source de l’API sur Github
1.create repository
	nom: api-voisin

*-Au niveau de git bash

	*- git --version : Pour afficher la version de git bash existant
	*- cd api-voisin/ : Pour se déplacer dans le repertoire de notre application
	*- git init : Crée un dépôt Git. Elle permet de convertir un projet existant, sans version en un dépôt Git ou d'initialiser un nouveau dépôt vide
	*- git status : Utilisée pour obtenir un récapitulatif des fichiers dont les modifications sont préparées pour la prochaine validation.
	*- git add . :  Pour "ajouter" de manière incrémentielle les modifications à l'index avant d'utiliser la commande commit (Remarque: même les fichiers modifiés doivent être "ajoutés");
	*- git commit -m "first commit" : Lorsque vous modifiez votre repository, vous devez demander à Git d'enregistrer vos modifications en faisant un git commit. 
	git commit utilise '-m' comme indicateur pour un message pour définir les validations avec le contenu où la description complète est incluse, et un message est écrit dans une phrase impérative de 50 caractères maximum et définissant 
	"ce qui a été changé" et "pourquoi a été le changement effectué ".
	*- git remote add origin https://github.com/koubra251/api-voisins.git :Pour ajouter un nouveau serveur distant, nous avons utilisé la commande "git remote add" sur le terminal, dans le répertoire où votre référentiel est stocké.
	La commande git remote add prend deux arguments:
		*-Un nom distant, par exemple, "origin"
		*-Une URL distante, par exemple, https://github.com/koubra251/api-voisins.git : Le HTTPS ou l'URL est copié à partir du compte GitHub donné, qui est l'emplacement du référentiel distant
	*- git push -u origin master : est utilisé pour pousser le contenu local vers GitHub.
	Dans le code, l'origine est le nom de votre référentiel distant par défaut et l'indicateur «-u» est en amont, ce qui équivaut à «-set-upstream». et le master est la branche, name.upstream est le référentiel sur lequel nous avons cloné le projet.
	Saisissez votre nom d'utilisateur et votre mot de passe GitHub.


Démarrage
	C:\Users\koubra\api-voisin> rails s
	*-Pour l'ajout d'un nouveau voisin nous avons utiliser la requête POST via le lien : http://localhost:3000/api/new
	*-Pour Lister les voisins existant dans la table Voisins nous avons utiliser la requête Get via le lien : http://localhost:3000/api/voisins
	*-Marquer un voisin comme favoris dans la Liste des voisins existant dans la table nous avons utiliser la requête Get via le lien : http://localhost:3000/api/voisinsfavoris
	*-Consulter le detail d’un voisin dans la Liste des voisins existant dans la table nous avons utiliser la requête Get via le lien avec le id comme paramètre : http://localhost:3000/api/consulterdetailsvoisins/#id

Fabriqué avec
	Rails 6.0.3.2
	VS Code pour Framework (front-end)
	
Auteurs

DIOP Sawdatoul Koubra
DIOP Khadidiatou
