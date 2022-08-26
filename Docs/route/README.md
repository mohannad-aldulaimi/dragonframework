# Dragon-Ring --> Route
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">
      <li>Route</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <h1>(1) Route :-</h1><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>What is the Route Way ?</li>
    <li>What is the Route.ring file ?</li>
    <li>How to use Route.ring file and route function ? </li>
    <li>Hello World Application .</li>

  </ul>
  <br>
    <strong>What is the Route Ways ?</strong><br>
    <p>The route way is a method to route your project urls ,so can the user access to it easily and secure.</p>
    <br>
    <strong>What is the Route.ring file </strong><br>
    <p>The Route.ring file is the main file in the project , It is like the heart of the body .</p>
  <br>
    <strong>How to use Route.ring file </strong><br>
    <p>First of all be sure the first line is:- <ul>
    <li>In Windows  :- [ #!ring -cgi ]</li>
    <li>In Linux OS :- [ #!/usr/bin/ring -cgi
 ]</li>
    <li>In Mac OS  :- [#!/usr/local/bin/ring -cgi] </li>
  </ul>
  <br>
  Why ? :- The web application will not work on the browser if there is no line like that...
  <br>
  The Second thing make sure to load this file and import the web packages :-<br>
  <pre>
  load 'dragon-ring.ring'
  import system.Web</pre>
  <br>
  Third step is the strat working with Dragon-Ring by route function :-<br>
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('index',:htmlstr,"&lt;h1&gt;The Index Page&lt;/h1&gt;")</pre>
  <br> 
  the route function used from app class and it takes three parameters ,So app.route(CUrl,Croutetype,Ccode)<br>
  <ul>
    <li>Curl the page url (It takes one page like 'index' , 'about' , 'login'; Or a list like routing "localhost/index/hello" ['index','hello'] ).</li>
    <li>Ctype the type of the page , the types is :-
      <ul>
    <li>(:htmlstr) execute html code from strings.</li>
    <li>(:ringfunc) execute html code from ring functions.</li>
    <li>(:ringfile) execute html code from ring file as a (Controller),[it reads the ring file from 'website' folder]</li>
    <li>(:htmlfile) execute html code from html files (not templates).</li>
  </ul></li>
    <li>Ccode is the code is going to execute depends on Ctype .</li>
  </ul>
  </p>
    <br>
    <strong>Hello World Application  </strong><br>
    <p>Now we will learn how to create Hello World app in a different methods:-
      <br>
    <strong>(1) First Way :-</strong><br/>
<pre style="background-color:yellow !important;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('helloworld',:htmlstr,"&lt;h1&gt;Hello World&lt;/h1&gt;")</pre>
  <br> 
  <strong>(2) Second way :-</strong><br>
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('HelloWorld',:ringfunc,"hello()")
func hello()
     return html('Hello World')</pre>
  <br>
  according to html() function it has defined in Page class in "Weblib.ring" but this function can be used as any other function (because it will add the html code inside the object).
  <br/>
  <strong>(3) Third way :-</strong><br/>
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('HelloWorld',:ringfile,"hello.ring")</pre>
<br>
  In the website/hello.ring File we have this code
    <pre style="background-color:yellow;">
 html('Hello World')</pre>
<br>
  also we can use Object :-
    <pre style="background-color:yellow;">
import system.Web
dring{ 
      h1('Hello World')  /* or */ html('&lt;h1&gt;Hello World&lt;/h1&gt;')
     }</pre>
  <br>
  you Don`t have to import System.Web in any .ring file you want to use it as a controller.
    </p>
  <br>
    <strong>For advanced code and experience developers</strong><br>
    <p>You can create your class and use it . in the website/hello.ring we have this code and in the route.ring we have the same code in the first way ...</p>
<pre style="background-color:yellow;">
import system.Web

new hello{start()}

class hello
     func start
          dring{ 
               h1('Hello World')  /* or */ html('&lt;h1&gt;Hello World&lt;/h1&gt;')
         }</pre>
<br>
    <p>I hope it was easy for you ...</p>
</div>
  <hr/>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>