<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Etendering</title>
<link rel="stylesheet" href="mislogin.css" >
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<script src="https://www.google.com/recaptcha/api.js" async defer></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style type="text/css">
    .header{
        display: grid;
        grid-template: "sat headtitle mapindia";
        grid-template-columns: auto auto auto;
        grid-template-rows: auto auto auto auto auto;
        height: 100%;
        padding: 2px;
        color:black;
        font-size: 2em;
    }
    main{
        margin-left: 10px;
    }
    .logo
    {
        height: 100px;
    }
    .logo1
    {
        height: 100px;
        float:right;
    }
    .main-body{
        margin-top:10px;
        display: grid;
        grid-template:"aside main login";
        grid-gap:20px;
    }
    .form-group{
        margin-left: 15px;
    }
    input[type=email],input[type=password]
         {
        width: 80%;
        padding: 12px 20px;
        margin: 8px 0;
        box-sizing: border-box;
        }
    aside{
        background-color:#e8e8e8;
        width:auto;
    }
    
    login{
        justify-content: end;
    }
    .login-form{
        background-color: #e8e8e8;
        width: 60%;
        margin-left: 10px;
        margin-right: 10px;
        float: center;
    }
    .links
    {
        border-radius: 10px;
        padding: 5PX;
        width: 	180PX;
    }
    .g-recaptcha{
        margin-left: 5px;
        width:auto;
    }
    .datass
    {
        display: inline-block;
        color: white;
        width: 100%;
        background-color: maroon;
    }
    .home-container
    {
        display: flex;
        width: 100%;
        border: 2px solid black;
    }
    .home-container-1
    {
        display: flex;
        width: 100%;
        border: 2px dotted black;
    }
    .item-1
    {
        flex: 1;
    }
    .item-2
    {
        flex: 1;
    }
    .item-3
    {
        flex: 1;
    }
    .item-4
    {
        flex: 1;
    }
    @media only screen and (max-width: 600px) 
    {
        body{
            font-size: 2em;
        }
        .main-body{
        margin-top:10px;
        display: grid;
        grid-template:"	main main"
                        "aside aside"
                        "login login";
        grid-gap:20px;
    }
    }
    
</style>
</head>
<body>
    <div class="header">
        <sat><img class="logo" src="images/satya3.png" alt="goi-logo"></sat>
        <headtitle><img class="logo" src="images/topban.png" alt="goi-logo"></headtitle>
        <mapindia><img class="logo1" src="images/india2.png" alt="goi-logo"></mapindia>
    </div>
    <main>
    <div class="jumbotron">
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Bidder Login</h1>
            <hr class="my-4">
            <div class="account-wall">
                <img class="profile-img" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=120"
                    alt="">
                <form class="form-signin" action="misloginsessionBid.jsp">
                <input type="text" name="username" class="form-control" placeholder="Login Id" required autofocus>
                <input type="password" name="password" class="form-control" placeholder="Password" required>
                <button class="btn btn-lg btn-primary btn-block" type="submit">
                    Sign in</button>
                <label class="checkbox pull-left">
                    <input type="checkbox" value="remember-me">
                    Remember me
                </label>
                <a href="mislogin.jsp" class="pull-right need-help">Back </a><span class="clearfix"></span>
                </form>
            </div>
            <a href="newUserReg.jsp" class="text-center new-account">New User? Register Here! </a>
            <a href="onlineBidderEnrollment.jsp" class="text-center new-account">Online Bidder Enrollment</a><br>
        </div>
    </div>
</div>
</div>
</main>
</body>
</html>