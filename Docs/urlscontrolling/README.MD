# Dragon-Ring --> Urls Controlling
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">    
      <li>Urls Controlling</li>
  </ul>

  
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <strong>(7) Urls Controlling :-</strong><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>Url_for() function.</li>
    <li>MainUrl Variable.</li>
    <li>Use Url_for() example.</li>
  </ul>

  <br>
  <strong>(1) Url_for() function.</strong>
    <br><p>Url_for(cRoute_Name) <br>
      this function take one parameter as a string (Not the full url just the route name ...).   
    </p>

<strong>(2) MainUrl Variable.</strong><br>
<p>The defult Value for this Variable is (http://localhost/) </p>
<strong>Note:-</strong><p>When you set this variable end it with back slash ('/') like in this example</p><br>
  <strong>(3) Use Url_for() example.</strong><br/>
 <strong>In the route.ring we have this code</strong><br> 
    <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
MainUrl = 'http://192.168.0.108/'
app.route('testurls',:ringfile,"testurls.ring")
app.route('testurls2',:ringfile,"testurls2.ring")</pre>
<br>
<strong>In the website/testurls.ring we have this code :</strong>
    <pre style="background-color:yellow;">
import system.web
dring{
  html(template('testurls.html',self))
}</pre>
  <br>
  <strong>In the website/testurls2.ring we have this code :</strong>
<pre style="background-color:yellow;">
import system.web
dring{
  html(template('testurls2.html',self))
}</pre>
  <br>
<strong>In the website/templates/testurls.html we have this code</strong><br>
    <pre style="background-color:yellow;"> &lt;div class='justify-content-center'&gt;
    &lt;a class="btn btn-primary" href="{%=url_for('TestUrls2')%}"&gt;Go to TestUrls2 Page&lt;/a&gt;
  &lt;/div&gt;</pre>
  <br>
  <strong>In the website/templates/testurls2.html we have this code</strong><br>
    <pre style="background-color:yellow;">&lt;div class='justify-content-center'&gt;
    &lt;a class="btn btn-primary" href="{%=url_for('TestUrls')%}"&gt;Go to TestUrls Page&lt;/a&gt;
  &lt;/div&gt;</pre>
  <br>
  <p><strong>Note:-</strong> You can set one MainUrl (one domain name)</p>

  <br>
  <p><strong>Note:-</strong>You have to Set the value of MainUrl Variable in the top of route.ring file</p>
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
           <br>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>