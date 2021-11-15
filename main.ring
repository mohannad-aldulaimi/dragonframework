# The Main File
 mystr = "# Load the FrameWork route file
load '../../tools/ringpm/packages/dragonframework/route.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\load\dragon-ring.ring')
basestr = substr(read('main/base.ring') , '#(frameworkmainpath)',path)
func main
	write(libpath,mystr)
	write('main/base.ring',basestr)
	chdir('dragon-ring')
	? copy('*',77)
	? TAB+'The "Dragon-Ring" Web Framework Has Been Installed successfully ...'
	? copy('*',77)
