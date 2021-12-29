# Dragon-Ring Web Framework
_It's very easy to create your own web-sites using [The Ring Programming Language](http://ring-lang.net)_

## Install (From RingPM):-
#### (1) Use this command for installation 
	 ringpm install dragonframework from mohannad-aldulaimi
#### (2) Run The Dragon-Ring installation:-
	ringpm run dragonframework
#### (3) Go to any directory and type this commanad:-
	dring create <porject_name>
##### For example:-
	dring create first_web_app
## Run :-
#### To run just use this command :-
	ring manage.ring run
#### Or :-
	dring run <porject_name>
## What Is New:-
### Beta Version (1.1)
    1. Make the execute files more faster 
        --> (It Takes 0.2s for executing).
    2. Dispensing (.htaccess) file [On Windows].
    3. The Documentation has been updated.
    4. (GET and POST) Methods (Better Code).
    5. (dring) The Installation Tool Has Been Updated.
    6. (dring) Add The Run command.
    7. The Framework Documentation Has Been Added To The Language Website.
    
### alpha Version 1.0.4
	1. Add the ability to create projects using command line .
	2. Add PostGreSql database extention with many useful functions.
	3. Cookies Errors fixed.
	4. weblib tempates (better code).
	5. Add route2 function .
	6. Error 404 Page (better code to be faster).
	7. Auto Error Avoiding during execute files (if any error occurred on page it will return error 404 page not found (during the executing) not on code error).
	8. Made the Page executing more faster .
	9. updating the bootstrap and J-Query files.
	10. Showflash() function (better code).
	11. Add Get_Flashed_Messages() function.
	12. Add (dangerous) Class for Flash messages.
	13. Add 'Working With PostgreSql' document.
	14. Add Employees example.
	15. Add Login&signup example.
### alpha Version 1.0.2
		1. Add manage.ring so that you can manage your project easily.
		2. Add [run] command to control the server :-
			* run:startserver
			* run:stopserver
			* run:restartserver 
		3. Add the ability to run the project from any path without Ring notepad or Xampp or Apache [only for windows]
