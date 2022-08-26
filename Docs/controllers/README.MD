# Dragon-Ring --> Controllers
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
 
  <ul class="wy-breadcrumbs">
    <li>Controllers</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <h3>(3) Controllers :-</h3><br>
  <strong>we will talk about :-</strong><br>
  <ul style="margin-top:4%;">
    <li>Controllers Using .</li>
    <li>Main Directory .</li>
    <li>How to Send variables from Controllers To Templates ?</li>
  </ul>
  <br>
    <strong>Controllers Using</strong><br>
    <p>The Controllers directory in the folder "WebSite" as there you can put all controllers.</p>
    <br>
    <p>As we learned we have to import System.Web Packages at the first line of any controller.<br>
    <strong>Main Directory</strong><br>
    <p> The main directory for controllers is starting from 'website' folder and you do not have to write the full path ...<br>
    So In this example I put the hello.ring in the folder website so in the route.ring we have
<pre>
      #!ring -cgi 
      load 'dragon-ring.ring'
      import system.Web
      app.route('HelloWorld',:ringfile,"hello.ring")</pre>
    <br>And I put the hello.html in the folder website/templates so I have to put this code in website/hello.ring
  
<pre>
  dring{
        html(template('hello.html',null))
     }</pre>
  <br>
In the WebSite/templates/hello.html I have this code 
 
<pre>
  &lt;h1&gt;Hello World From Template .&lt;/h1&gt;</pre>
  <br>
  it displayed the same result ...
     </p><br>
     <strong>How to Send variables from Controllers To Templates ?</strong><br> 
<p>I will use the same files names ...</p>
<p>There is many ways to send Variables to templates </p>
<h2>(1) The First Way</h2>
<p>Define Your Variables in the route.ring file</p>
    <strong>In the route.ring we have this code</strong><br>  
<pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
name = "Mohannad"
app.route('HelloWorld',:ringfile,"hello.ring")</pre>
  <br>
<strong>In the website/hello.ring we have this code</strong> 
  <pre>
import system.Web
dring{
        html(template('hello.html',self))
     }</pre>
  <br>
<strong>In the website/templates/hello.html we have this code</strong><br>
  
  <pre>
Hello {%=name%}</pre>
  <br>
  The Page returns :- <br>
  
  <pre>
Hello Mohannad</pre>
  <br>
  <p>Note:- You can Define Your Variables in route.ring as null and edit them in the controller as in this example :-</p>
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
name = null
app.route('HelloWorld',:ringfile,"hello.ring")</pre>
  <br>
<strong>In the website/hello.ring we have this code</strong><br>
  
  <pre>
import system.Web
name = "Mohannad"
dring{
        html(template('hello.html',self))
     }</pre>
  <br>
<strong>In the website/templates/hello.html we have this code</strong><br>
  
  <pre>
Hello {%=name%}</pre>
  <br>
  The Page returns :- <br>
  
   <pre>
Hello Mohannad</pre>

  <h2>(2) Send Variables Using Functions</h2><br>
  <h3>Use SendVars(var_Name) function to send Variables .</h3>
<h4>The var_Name Can be a list of Variables,but you have to put them as a string like this example </h4>

   <br>
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('test_vars',:ringfile,"test_vars.ring")</pre>
  <br>
<strong>In the website/test_vars.ring we have this code</strong><br>
  
<pre>
import system.Web
SendVars('name')
SendVars('age')
SendVars('salary')
/*or*/
SendVars(['name','age','salary'])
dring{
  Name = 'Mohannad' 
  Age = 20
  Salary = 1200
  html(template('test_vars.html',self))
}
</pre>
  <br>
<strong>In the WebSite/templates/test_vars.html we have this code</strong><br>
  
<pre>Hello {%=name%} , Your age is :- {%=age%} ,Your salary is :- {%=salary%}$.</pre>
  <br>
The Page returns :- <br>
  
  <pre>
Hello Mohannad , Your age is :- 20 ,Your salary is :- 1200$.</pre>
  <br>
  <h2>(3) Send Variables Using Classes</h2><br> 
    <strong>In the route.ring we have this code</strong><br>  
    <pre>
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('test_vars',:ringfile,"test_vars.ring")</pre>
  <br>
<strong>In the website/test_vars.ring we have this code</strong><br>
  
  <pre>
import system.Web
new test_vars{start()} 
class test_vars
   name = "Mohannad"
   func start
   dring{
   html(template('test_vars.html',this))
     }</pre>
  <br>
<strong>In the WebSite/templates/test_vars.html we have this code</strong><br>
  
<pre>Hello {%=name%}</pre>
  <br>
The Page returns :- <br>
  
  <pre>
Hello Mohannad</pre>
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>
