#!ring  -cgi 
load 'main/base.ring'

import system.Web
# http://localhost/index or http://localhost/

# http://localhost/index/hello
app.route2('index/hello',:htmlstr,"<h1>..Hello..</h1>")

#app.route(['index','hello'],:htmlstr,"<h1>..Hello..</h1>")
# http://localhost/test/hello
# the file test.ring is located in 'website' folder
app.route2('test/hello',:ringfile,"test.ring")

# Thank you for using our Framework
# keep going ...
# Mohannad Al-Dulaimi 
/* contact me on E-mail :- dragon-ring@hi2.in */

func getstartedwithdragonring()
	path = currentdir()
	chdir(frmpath+'\dragon-ring')
		system('xcopy . '+path+' /E /H /C /I')

	#/E /H /C /I