# The Main File
load "lib.ring"
 mystr = "# Load the FrameWork
load '../../tools/ringpm/packages/dragonframework/route.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\load\dragon-ring.ring')
basestr = substr(read('main/base.ring') , '#(frameworkmainpath)',path)
func main
	write(libpath,mystr)
	write('main/base.ring',basestr)
	chdir('dragon-ring')
	? copy('*',75)
	? TAB+'The "Dragon-Ring" Framework Has Been Installed successfully ...'
	? copy('*',73)