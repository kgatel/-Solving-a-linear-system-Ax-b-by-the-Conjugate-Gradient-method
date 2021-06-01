# Etude des erreurs sur la méthode du Gradient Conjugué


# Caractéristiques des machines :
  - M1 : Asus Zenbook, Intel® Core™ i5-7200U CPU @ 2.50GHz × 4, 4Go de mémoire, OS Ubuntu 20.04.1 LTS, 64 bits
  - M2 :  Asus Zenbook, Intel® Core™ i5-8265U CPU @ 1.60GHz × 8, 8Go de mémoire, OS Ubuntu 20.04.1 LTS, 64 bits. 
  
#Version gdb
 - M1 : (fait gdb --version sur un terminal)
 
 - M2 :
GNU gdb (Ubuntu 9.2-0ubuntu1~20.04) 9.2
Copyright (C) 2020 Free Software Foundation, Inc.

# Compilateur :
  - M1 : gcc/gfortran version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04)
  - M2 : gcc/gfortran version 9.3.0 (Ubuntu 9.3.0-17ubuntu1~20.04) 

# Nomenclature des fichiers résultats :
  - 0_prdt_sc_r_0_-10_bin_m2.txt contient le vecteur résidu à l'étape 0 et son produit scalaire en binaire avec une tolérance 10^-10, calculs effectués sur la machine M2
  - 0_prdt_sc_r_0_-10_dec_m2 contient la valeur décimale du vecteur résidu à l'étape 0 et son produit scalaire avec une tolérance 10^-10, calculs effectués sur la machine M2 
  - 0_prdt_sc_r_0_-10_err_m1 contient l'analyse de l'erreur de la norme deux du vecteur résidu à l'étape 0 avec une tolérance de 10^-10, calcul effectué sur la machine m1 
  
# Fichiers _bin :
 - obtenu grâce à gdb sur un terminal (versions au-dessus)
 - Capture d'écran d'une session gdb : ./CaptureDEcran/Exemple_gdb
 
# Fichiers _dec :
 - r2 représente la norme 2 du vecteur r, au carré
 - Le calcul final est calculé sur wolframalpha.com avec 20 chiffres significatifs
 - Capture d'écran d'un calcul sur wolframalpha.com : ./CaptureDEcran/Exemple_dec_r_0(1)

# Fichiers _err :
  - Le calcul du carré des composantes du vecteur r se fait sur wolframalpha.com avec 20 chiffres significatifs
  - Le calcul de z (somme des carrés des composantes de r) se fait sur wolframalpha.com avec 20 chiffres significatifs
  - Le calcul de l'erreur absolue se fait sur wolframalpha.com
  - Le calcul de l'erreur relative se fait sur wolframalpha.com avec 20 chiffres significatifs
  
  - Capture d'écran du calcul du carré de r_0(1) sur wolframalpha.com : ./CaptureDEcran/Exemple_err_r_0(1)^2
  - Capture d'écran de calcul de z pour r_0 sur wolframalpha.com : ./CaptureDEcran/Exemple_err_z
  - Capture d'écran de calcul de l'erreur absolue pour r_0 sur wolframalpha.com : ./CaptureDEcran/Exemple_err_abs
  - Capture d'écran de calcul de l'erreur relative pour r_0 sur wolframalpha.com : ./CaptureDEcran/Exemple_err_rel


# Contenu des fichiers de résultats :
  - 1_soust_x_1_x_0_alpha_0_p_0_-10_bin...
  
  - 0_prdt_sc_r_0_-10_bin_m2.txt contient le vecteur résidu à l'étape 0 et son produit scalaire en binaire avec une tolérance 10^-10, calculs effectués sur la machine M2
  - 0_prdt_sc_r_0_-10_dec_m2 contient la valeur décimale du vecteur résidu à l'étape 0 et son produit scalaire avec une tolérance 10^-10, calculs effectués sur la machine M2 
  - 0_prdt_sc_r_0_-10_err_m1 contient l'analyse de l'erreur de la norme deux du vecteur résidu à l'étape 0 avec une tolérance de 10^-10, calcul effectué sur la machine m1 


# Test d'arrêt :
  -  tol^2*b^2 > r^2 
  

# Nomenclature matrice :
  - H_4_-10_0_0.d = Matrice de Hilbert de dim 4, tolérance 10^-10, sans perturbation, conditionnement 0 (infini), .d pour données
  
  
# Commande sur le shell script grace au Makefile
  - make conv_exe --> compile le programme conversion_binaire
  - make out --> dirige le fichier de donnée "dconv" dans l'exécutable "conv" en écrivant la sortie dans le fichier "outconv"


# Logiciel extérieur utilisé pour les calculs :
 - Wolfram Alpha (https://www.wolframalpha.com)
