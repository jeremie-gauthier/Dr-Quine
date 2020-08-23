# Sully's rules

- L’exécutable se nomme Sully.

- Lors de son exécution le programme écrit dans un fichier nommé Sully_X.c/Sully_X.s.
	- Le X sera alors un entier donné dans la source. Une fois le fichier créé, le programme compile ce fichier puis exécute le nouveau programme (qui aura le nom de son fichier source).

- L’arrêt du programme se fait en fonction du nom du fichier : si l’entier X est à 0, le programme résultant n’est pas exécuté.

- Un entier est donc présent dans la source de votre programme et devra évoluer en se décrémentant à chaque création d’un fichier source depuis l’exécution du programme.

- Vous n’avez aucune contrainte au niveau du code source, mis à part l’entier qui sera défini à 5 dans un premier temps.
