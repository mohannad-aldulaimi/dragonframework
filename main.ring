# The Main File
load "lib.ring"
 mystr = "# Load the FrameWork
load '../../tools/ringpm/packages/dragonframework/dragon-ring/route.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\load\dragon-ring.ring')
func main
	if not fexists(libpath)
		write(libpath,mystr)
	ok
	chdir('dragon-ring')
	system('ring manage.ring run')