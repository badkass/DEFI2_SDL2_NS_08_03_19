# DEFI2_SDL2_NS_08_03_19
Rendu du défi du second trimestre SDL2

Les questions du défi :

-Les différences entre SDL et SDL 2 : 

SDL2 est la version la plus récente de sdl, elle contient donc beaucoup d'améliorations commme : 

-Ajout de la gestion de plusieurs fenêtres.
-Ajout de la gestion de fenêtre à forme arbitraire.
-Ajout de la gestion des boites de dialogues.
-gestion du dépôt de documents depuis le système (en glisser-déposer).
-gestion du presse-papier. 

Ce sont les principales améliorations mais il y en a encore beaucoup d'autres (comme l'option lecteur cd qui a été retiré)


-Pourquoi sdl_image ? 
En effet, la SDL n'est capable d'importer que des images au format Windows bitmap dont l'extension est .bmp. 
Il existe une librairie permettant de manipuler d'autres formats : SDL_Image.

SDL_image permet de manipuler des fichiers du type :

-JPG (.jpg ou .jpeg)
-PNG
-GIF
-BMP
-TGA
-XPM
-PNM
-PCX
-TIF (.tif ou .tiff)
-LBM (.lbm ou.iff)

Impréssions : 

Je préfère être sincère, ce défi était assez déprimant. En effet, pour commencer, l'installation de la bibliothèque graphique a été 
très laborieuse (mon ordinateur a crashé a de nombreuses reprises, pour une raison inconnu). Ensuite, en utilisant FreePascal, 
a 2 reprises j'ai perdu mon fichié (la totalité du programme du défi), ce qui m'a fait passé sur un autre éditeur de texte (sublime text par exemple).
Malgré ces nombreux problèmes, j'ai a peu près réussit a faire ce que je voulait (afficher le bitmap en fond, animé l'hélico et le faire se déplacer
grâce aux touches ZQSD. Cependant, j'ai due mettre le programme des formes géométriques à part car je n'ai pas réussit la l'incorporer dans le programme
principal, sans provoquer un assez gros bug, qui fesait en sorte que le programme se ferme immédiatement. 

PS : Désolé pour le texte assez long et j'éspère que le prochain défi sera un peu plus motivant. 
