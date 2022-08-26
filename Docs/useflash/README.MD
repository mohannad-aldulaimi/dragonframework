# Dragon-Ring --> Using Flashs Messages
<img alt="Dragon-Ring" src="https://dragonring.live/favicon.ico" width="10%" height="10%">
<h2> Dragon-Ring documentation</h2>
<h3> Welcome to the "Dragon-Ring" Web Framework Documentation.</h3>
  <ul class="wy-breadcrumbs">
    <li>Using Flashs</li>
  </ul>
  <hr/>
</div>
          <div role="main" class="document" itemscope="itemscope" itemtype="http://schema.org/Article">
           <div itemprop="articleBody">
            
  <div class="section" id="welcome-to-read-the-docs">
  <strong>(5) Using Flashs :-</strong><br>
  <strong>we will talk about :-</strong><br>

  <ul style="margin-top:4%;">
    <li>What is flashs ?</li>
    <li>How to use flashs ?</li>
    <li>Use flashs example.</li>
  </ul>

  <br>
  <strong>(1) What is flashs ?</strong>
    <br><p>The flash is a method to send messages to the UI (User Interface) ... 
    </p>

  <strong>How To Use Flash ?</strong><br/>
  Use {Flash(cType,Cmessage)} to Send flash to templates...<br>
  This function take two parameters :-
  <ul>
    <li>Ctype:- The type of the message 'success','danger','info' ...</li>
    <li>Cmessage :- The Message that you want to send.</li>
  </ul>
  <strong>Example :- </strong>
  <br>
 <strong>In the route.ring we have this code</strong><br>  
  <pre style="background-color:yellow;">
#!ring -cgi 
load 'dragon-ring.ring'
import system.Web
app.route('testflash',:ringfile,'testflash.ring')</pre>

<br>
<strong>In the website/testflash.ring we have this code :</strong>
  
  <pre style="background-color:yellow;">
import system.web
if isNameFound('btn')
   flash('success','You have clicked on the button')
   flash('danger','Testing the danger Type !')
else
   flash('danger','You have not clicked on the button')
ok
dring{
  html(template('testflash.html',self))
}

</pre>
  <br>
<strong>In the website/templates/testflash.html we have this code</strong><br>
  
  <pre style="background-color:yellow;">{%=showflash()%}
&lt;form&gt;
    &lt;button name='btn'&gt;Click Me&lt;/button&gt;
&lt;/form&gt;</pre>
  <br>
  <p><strong>Note:-</strong> You can use ShowFlash() or Get_Flashed_Messages() functions to show all messages that you sent...</p>

  <br>
  <p><strong>Note:-</strong> The Flash types are :-</p>
<ul>
  <li>primary .</li>
  <li>secondary .</li>
  <li>success .</li>
  <li>danger .</li>
  <li>dangerous .</li>
  <li>warning .</li>
  <li>info .</li>
  <li>light .</li>
  <li>dark .</li>
</ul>
  <br>
    <p>I hope it was easy for you ...</p>
  
</div>
           </div>
<br>
    <p>
        &#169; Copyright 2022.        
        Dragon-Ring 2021-2022.
    </p>
    