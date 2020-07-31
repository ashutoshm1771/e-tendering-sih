<!DOCTYPE html>
<html>
<title>Web Page Design</title>
<head>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script>
function sayHello() {
  var url = 'https://api.textlocal.in/send/?apikey=qbgAjg/MTKQ-bTkeWfcroxm7WV1FdZaeCSHSBibftp&numbers=9849760963&sender=TXTLCL&message='+encodeURIComponent('123');



// Make a request for a user with a given ID

axios.get(url);


.then(function (response) {

// handle success

console.log("------ SMS Gateway Response ------");

console.log(response.data);

})

.catch(function (error) {

// handle error

console.log(error);

})

.finally(function () {


// always executed

}); 
document.write("Hello, Coding Ground!");
}
sayHello();
</script>
</head>
<body>
</body>
</html>