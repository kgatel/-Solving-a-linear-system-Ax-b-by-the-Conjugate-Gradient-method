gradient :
	gfortran -g gradient.f90
conv_exe : 
	rm conv; gfortran conversion_binaire_decimale_DP.f90 -o conv

out :
	rm outconv; conv < dconv > outconv

clean :
	rm a.out conv
