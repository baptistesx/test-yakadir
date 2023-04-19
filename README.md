# test_yakadir

Démarche:

- lecture complète du cahier des charges
- analyse rapide du figma
- création du projet flutter
- réutilisation de quelques éléments de projets précédents (pour le thème et navigation notamment et bloc)
- j'ai commencé par le fond avec gradient
- puis l'AppBar avec la librairie flutter_advanced_switch pour se rapprocher le plus vite possible du résultat attendu
- puis la NavigationBottomBar (les icones ne correspondent pas tous car manque de temps, voir explication plus bas)
- recherche d'une librairie pour les cartes swipables => appinio_swiper + implémentation du body de la page
- implémentation de la navigation au clic sur le micro
- refactorisation (séparation dans différents fichiers etc...)
- mise en ligne du code sur github
- gestion dynamique avec Bloc du switch speaking/writting
- début init firebase/bloc/respository pour fetch la data au backend mais pas eu le temps de terminer

Note pour les icones:
Pour les icones custom (en l'occurrence seulement celui de yakadir car pas le temps), je l'ai exporté en svg via le figma puis utilisé https://www.fluttericon.com/ pour l'exporter en custom font, afin de pouvoir l'utiliser en tant qu'icone réel dans flutter.
