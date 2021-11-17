# The Main File
load "ziplib.ring"
dringstr = '@echo off
#(ringbindir)\ring #(ringbindir)\dringinstaller.ring %1 %2 %3
'
 mystr = "# Load the FrameWork route file
load '../../tools/ringpm/packages/dragonframework/route.ring'"
path = currentdir()
libpath = substr(path,'tools\ringpm\packages\dragonframework','bin\')
ringbindir = libpath
	zip_extract_allfiles("dragonframework.zip",path)
basestr = substr(read('main/base.ring') , '#(frameworkmainpath)',path)

func main
	write(ringbindir+'load\dragon-ring.ring',mystr)
	write(ringbindir+'dring.bat',substr(dringstr,'#(ringbindir)',ringbindir))
	write(ringbindir+'dringinstaller.ring',read('dringinstaller.ring'))
	write('main/base.ring',basestr)
	chdir('dragon-ring')
	? copy('*',77)
	? TAB+'The "Dragon-Ring" Web Framework Has Been Installed successfully ...'
	? copy('*',77)
