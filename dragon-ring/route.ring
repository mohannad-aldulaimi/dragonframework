#!ring  -cgi 
load 'dragon-ring.ring'
import system.Web
# http://localhost/index or http://localhost/
app.route('index',:htmlstr,dragonindexpage)
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
