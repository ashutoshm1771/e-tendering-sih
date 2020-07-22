package sihcookiearmy;
import java.io.BufferedReader;
import java.util.Random;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.io.*;
import java.util.Scanner;

public class otp {
public int otttp;
public String otpg() {
try {
// Construct data
Random rand = new Random();

otttp = rand.nextInt(1000);
String str1 = Integer.toString(otttp);
String apiKey = "apikey=" + "yxbzTlFGr7I-nP8xiJROykIgFR4veMcQSUR7CMB0sK";
String message = "&message=" + "hi" ;
String sender = "&sender=" + "TXTLCL";
String numbers = "&numbers=" + "917337380840";

// Send data
HttpURLConnection conn = (HttpURLConnection) new URL("https://api.textlocal.in/send/?").openConnection();
String data = apiKey + numbers + message + sender;
conn.setDoOutput(true);
conn.setRequestMethod("POST");
conn.setRequestProperty("Content-Length", Integer.toString(data.length()));
conn.getOutputStream().write(data.getBytes("UTF-8"));
final BufferedReader rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
final StringBuffer stringBuffer = new StringBuffer();
String line;
while ((line = rd.readLine()) != null) {
stringBuffer.append(line);
}
rd.close();

return stringBuffer.toString();
} catch (Exception e) {
System.out.println("Error SMS "+e);
return "Error "+e;
}
}
public static void main(String args[])
{
otp n=new otp();

System.out.println(n.otpg());
Scanner s = new Scanner(System.in);
int numb = s.nextInt();
if(n.otttp == numb)
{
System.out.println("success");
}else
{
System.out.println("fail");

}

}
}

