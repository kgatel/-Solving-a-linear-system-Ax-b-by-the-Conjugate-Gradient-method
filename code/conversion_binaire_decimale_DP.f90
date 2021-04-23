program conversion

	integer, dimension(64) :: nombre
	integer, dimension(11) :: exposant
	integer, dimension(52) :: mantisse
	integer signe,exposantdec
	character*400 :: c1,c2
	logical :: denormalise,positif
	integer :: i
	
	read(*,*) nombre
	signe=nombre(1)
	
	if (nombre(1)==0) then
		positif= .true.
	else
		positif= .false.
	endif
	
	do i=2,12
		exposant(i-1)=nombre(i)
	enddo
	
	do i=13,64
		mantisse(i-12)=nombre(i)
	enddo
	
	print*, 'Nombre en écriture binaire :\n'
	write(*,*) nombre
	print*, '\n'
	print*, 'bit de signe : '
	write (*,*) signe
	print*, 'bits d''exposants : '
	write(*,*) exposant
	print*, 'bits de mantisses : '
	write(*,*) mantisse
	print*, ('\n')
	denormalise=.false.
	do i=1,11
		if (exposant(i)/=0) then
			denormalise= .true.
		endif
	enddo
	
	if (positif) then
		c1 = "positif"
	else
		c1 = "negatif"
	endif
	
	if (denormalise) then
		c2 = "dénormalisé"
	else
		c2 = "normalisé"
	endif
	
	if (denormalise) then
		print*, 'Le nombre est ',c1,' car le bit de signe est à ',signe,' ; ',c2,' car les bits d''exposants sont tous égaux à 0\n'
	else
		print*, 'Le nombre est ',c1,' car le bit de signe est à ',signe,' ; ',c2
		print*, ' car les bits d''exposants sont différents de : 00000000000\n'
	endif
	
	print*, '\n'
	c1=""
	exposantdec=0.d0
	do i=1,11
		if (exposant(12-i)==1) then
			
			c1= c1//"2^("//11-i//") + "
			exposantdec=exposantdec+2**(11-i)
		endif
	enddo
	print*, 'exposant biaisé = ',c1,'= ',exposantdec,'\n'
	print*, 'exposant réel = ',exposantdec,'-d = ',exposantdec,'-1023 = ',(exposantdec-1023),'\n'
	c2=""
	mantissedec=0.d0
	do i=1,52
		if (mantisse(i)==1) then
			c2=c2+"2^("+i+") + "
			mantissedec=mantissedec+2**(-i)
		endif
	enddo
	print*, 'mantisse = ',c2,' = A (à calculer sur https://www.dcode.fr/calcul-sommation par exemple)\n\n'
	print*, 'Valeur décimale exacte : ((-1)^',signe,')*(A)*(2^(',exposantdec,')) = B (à calculer avec wolfraalpha par exemple)'
	
end program conversion
	
		
	
	
			
			
	
	

