#!ring  -cgi 
load 'main/base.ring'
import system.Web
# Thank you for using our Framework
# keep going ...
# Mohannad Al-Dulaimi 
/* contact me on E-mail :- dragon-ring@hi2.in */

func getstartedwithdragonring()
	path = currentdir()
	chdir(frmpath+'\dragon-ring')
		system('xcopy . '+path+' /E /H /C /I')

	#/E /H /C /I