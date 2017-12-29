{literal} 

    <style>
        #btnLogin,
        #btnCreate,
        #btnRequestInvite,
        #btnLoginFacebook {
            /* width: 258px;*/
            width: 100%;
        }
        #btnLoginFacebook {
            background-color: #4267B2;
            color: white;
        }
    </style>
{/literal} 
<h2 class="light">Welcome to our</h2>
<h1 class="light">Forum</h1>
<h3 class="light">Enjoy great discussions.</h3>

<p id="msg">{$msg}</p>
<p class="p-t-0">Sign into your account</p>

<div class="form-group form-group-default">

    <label>Login</label>
    <div class="controls">
        {$user}
    </div>
</div>

<div class="form-group form-group-default">
    <label>Password</label>
    <div class="controls">
        {$senha}
    </div>
</div>


<div class="row">
    <div class="col-md-6 no-padding">
        <div class="checkbox ">
            <input type="checkbox" value="1" id="checkbox1">
            <label for="checkbox1">Keep Me Signed in</label>
        </div>
    </div>
    <div class="col-md-6 text-right">
        <a href="#" class="text-info small">Forgot my password</a>
    </div>
</div>


<div class="row"> 
    <div class="col-md-4  text-center">
        {$btnLogin}
    </div>
    <div class="col-md-8  text-center">
        {$btnLoginFacebook}
        {*        <div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="continue_with" data-show-faces="false" data-auto-logout-link="false" data-use-continue-as="false"></div>*}
    </div> 
    <div class="col-md-12 no-padding text-center"> 
        <p class="p-t-20">Not registered yet?</p>
    </div> 
    <div class="col-md-12 no-padding text-center"> 
        {$btnCreate} 
    </div> 
    <div class="col-md-12 no-padding text-center"> 
        <button id="btnRequestInvite" class="btn btn-success btn-cons m-t-10" type="submit">Request invite</button> 
    </div> 
</div> 