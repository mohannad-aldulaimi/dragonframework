# The Main File

load "lib.ring"
/*# Load the FrameWork
load '../../tools/ringpm/packages/dragonframework/dragon-ring/route.ring'*/
path = currentdir()
func main
	if not fexists(substr(path,'tools/ringpm/packages/dragonframework/','bin/load/dragon-ring.ring'))
	? 'the file not exist'
	else
	? 'the file is exist'
	ok
	chdir('dragon-ring')
	system('ring manage.ring run')