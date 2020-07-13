<!DOCTYPE html>
<html>
<head>
<style>
table {
  width:50%;
}
table,th,tr, td {
  border: 1px solid black;
  border-collapse: collapse;
  PADDING-RIGHT: 5px;
  PADDING-LEFT: 5px;
  FONT-WEIGHT: bold;
  FONT-SIZE: 11px;
  PADDING-BOTTOM: 4px;
  COLOR: #822C00;
  PADDING-TOP: 4px;
  FONT-FAMILY: tahoma; 
  HEIGHT: 22px; 
  BACKGROUND-COLOR: #F1F1F1
}
th, td {
  padding: 15px;
  text-align: left;
}

body{
  background: #f2f2f2;
  font-family: 'Open Sans', sans-serif;
}

.search {
  width: 60%;
  position: relative;
  display: flex;
}

.searchTerm {
  width: 100%;
  border: 3px solid #00B4CC;
  border-right:none;
  padding: 5px;
  height: 20px;
  border-radius: 5px 0 0 5px;
  outline: none;
  color: #9DBFAF;
}

.searchTerm:focus{
  color: #00B4CC;
}

.searchButton {
  width: 40px;
  height: 36px;
  border: 1px solid #00B4CC;
  background: #00B4CC;
  color: #fff;
  border-radius: 0 5px 5px 0;
  cursor: pointer;
  font-size: 20px;
}

/*Resize the wrap to see the search bar change!*/
.wrap{

  width: 30%;
  position: absolute;
  top: 40%;
  left: 85%;
  transform: translate(-50%, -50%);
}


table#t01 th,tr {
  background-color: lightpink;
  color: white;
   PADDING-RIGHT: 5px;
  PADDING-LEFT: 5px;
  FONT-WEIGHT: normal;
  FONT-SIZE: 11px; 
  PADDING-BOTTOM: 2px; 
  COLOR: #000000; 
  PADDING-TOP: 2px; 
  FONT-FAMILY: Tahoma; 
  HEIGHT: 20px; 
  BACKGROUND-COLOR: #FFFFFF
}

.testbutton {
  position: absolute;
  left: 100px;
  width: 50px;
  font-family: arial;
  color: #14396a !important;
  font-size: 14px;
  text-shadow: 1px 1px 0px #7cacde;
  box-shadow: 1px 1px 1px #bee2f9;
  padding: 3px 12px;
  -moz-border-radius: 10px;
  -webkit-border-radius: 10px;
  border-radius: 10px;
  border: 2px solid #3866a3;
  background: #63b8ee;
  background: linear-gradient(top,  #63b8ee,  #468ccf);
  background: -ms-linear-gradient(top,  #63b8ee,  #468ccf);
  background: -webkit-gradient(linear, left top, left bottom, from(#63b8ee), to(#468ccf));
  background: -moz-linear-gradient(top,  #63b8ee,  #468ccf);
}
.testbutton:hover {
  color: #14396a !important;
  background: #468ccf;
  background: linear-gradient(top,  #468ccf,  #63b8ee);
  background: -ms-linear-gradient(top,  #468ccf,  #63b8ee);
  background: -webkit-gradient(linear, left top, left bottom, from(#468ccf), to(#63b8ee));
  background: -moz-linear-gradient(top,  #468ccf,  #63b8ee);

}
</style>
</head>
<body>
  <h1 align="center" color="brown">GOVERNMENT OF INDIA E-TENDERING PORTAL</h1> 
    <img src="C:\Users\Shaik Fayazuddin\OneDrive\Desktop\WEB\\1.png" alt="Girl in a jacket" style="width:1265px;height:100px; >
<img src="C:\Users\Shaik Fayazuddin\OneDrive\Desktop\WEB\\1.png" alt="none">
<div class="wrap"  >
   <div class="search" >
      <input type="text" class="searchTerm" placeholder="What are you looking for?">
      <button type="submit" class="searchButton" >
        <img src="C:\Users\Shaik Fayazuddin\OneDrive\Desktop\WEB\\2.png" style="width:15px;height:20px;>
        <i class="fa fa-search"></i>
     </button>
   </div>
</div>


<br><br><br>
<h2 align="center" style="color:Brown"> MY TENDERS</h2>
<table id="t01" align="center">
  <tr class="tableheader">
    <th >Title</th>
    <th>Refr No</th> 
  </tr>
  <tr>
    <td>1</td>
    <td>teja</td>
  </tr>
  <tr>
    <td>2</td>
    <td>Austosh</td>
  </tr>
  <tr>
    <td>3</td>
    <td>sumanth</td>
  </tr>
</table>
<br><br>
<button class="testbutton" > Back</button>
</body>
</html>
