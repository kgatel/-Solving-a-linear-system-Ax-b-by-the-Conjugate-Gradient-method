# Etude des erreurs sur la méthode du Gradient Conjugué


# Caractéristiques des machines :
  - M1 : Asus Zenbook, Intel® Core™ i5-7200U CPU @ 2.50GHz × 4, 4Go de mémoire, OS Ubuntu 20.04.1 LTS, 64 bits
  - M2 :  Asus Zenbook, Intel® Core™ i5-8265U CPU @ 1.60GHz × 8, 8Go de mémoire, OS Ubuntu 20.04.1 LTS, 64 bits. 
  
  
# Compilateur :
  - M1 : gcc/gfortran version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)
  - M2 : gcc/gfortran version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04) 

# Nomenclature des répertoires :
  - 
  - 
  - 
  
 
# Contenu des fichiers de données :
  - 
  - 
  - 


# Contenu des fichiers de résultats :
  - 0_prdt_sc_r_0_-10_bin_m2.txt contient le vecteur résidu à l'étape 0 et son produit scalaire en binaire avec une tolérance 10^-10, calculs effectués sur la machine M2
  - 0_prdt_sc_r_0_-10_dec_m2 contient la valeur décimale du vecteur résidu à l'étape 0 et son produit scalaire avec une tolérance 10^-10, calculs effectués sur la machine M2
  

# Tests d'arrêt :
  -  
  - 


# Nom des fichiers :
  - H_4_-10_0_0.d = Matrice de Hilbert de dim 4, tolérance 10^-10, sans perturbation, conditionnement 0 (infini), .d pour données
  
# Commande sur le shell script grace au Makefile
  - make conv_exe --> compile le programme conversion_binaire
  - make out --> dirige le fichier de donnée "dconv" dans l'exécutable "conv" en écrivant la sortie dans le fichier "outconv"
