# The Main File
load "lib.ring"
 mystr = "# Load the FrameWork
load '../../tools/ringpm/packages/dragonframework/route.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\load\dragon-ring.ring')
basestr = substr(read('dragon-ring/main/base.ring') , '#(frameworkmainpath)',path)
func main
	if not fexists(libpath)
		write(libpath,mystr)
		write('dragon-ring/main/base.ring',basestr)
	ok
	chdir('dragon-ring')
	system('ring manage.ring run')