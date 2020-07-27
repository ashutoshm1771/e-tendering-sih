package sihcookiearmy;
import java.security.Key;
import java.util.Base64;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.HashMap;
import java.util.Map;
public class dsaalgo {
	 public static final String KEY_ALGORITHM1 = "RSA";
	 public static final String SIGNATURE_ALGORITHM1 = "MD5withRSA"; 
	 
	 public static final String KEY_ALGORITHM = "DSA";
	 public static final String SIGNATURE_ALGORITHM = "DSA";
	 
	 public static final String DEFAULT_SEED = "$% ^ *% ^ () (HJG8awfjas7";
	 public static final String PUBLIC_KEY = "DSAPublicKey";
	 public static final String PRIVATE_KEY = "DSAPrivateKey";
	 
	 public static void main (String [] args) throws Exception {
	 String str = "! @ # $! # ^ $ # & ZXVDF Silent Military Road Loves You * () _ +";
	 byte [] data = str.getBytes ();
	  
	 Map <String, Object> keyMap = initKey (); // Build key
	 PublicKey publicKey = (PublicKey) keyMap.get (PUBLIC_KEY);
	 PrivateKey privateKey = (PrivateKey) keyMap.get (PRIVATE_KEY);
	 System.out.println ("Private key format:" + privateKey.getFormat ());
	 System.out.println ("Public key format:" + publicKey.getFormat ());
	  
	  
	 // Generate signature
	 byte[] sign = sign (data, getPrivateKey (keyMap));
	  
	 // verify signature
	 boolean verify1 = verify ("aaa" .getBytes (), getPublicKey (keyMap), sign);
	 System.err.println ("Verified data and signature match:" + verify1);
	  
	 boolean verify = verify (data, getPublicKey (keyMap), sign);
	 System.err.println ("Verified data and signature match:" + verify);
	 }
	 public static Map <String, Object> initKey (String seed) throws Exception {
	 System.out.println ("Generate key");
	  
	 KeyPairGenerator keygen = KeyPairGenerator.getInstance (KEY_ALGORITHM1);
	 SecureRandom secureRandom = new SecureRandom ();
	 secureRandom.setSeed (seed.getBytes ());
	 // Modulus size must range from 512 to 1024 and be a multiple of 64
	 keygen.initialize (640, secureRandom);
	  
	 KeyPair keys = keygen.genKeyPair ();
	 PrivateKey privateKey = keys.getPrivate ();
	 PublicKey publicKey = keys.getPublic ();
	  
	 Map <String, Object> map = new HashMap <String, Object> (2);
	 map.put (PUBLIC_KEY, publicKey);
	 map.put (PRIVATE_KEY, privateKey);
	 return map;
	 }

	 public static Map <String, Object> initKey () throws Exception {
	 return initKey (DEFAULT_SEED);
	 }
	
	 public static byte[] getPrivateKey (Map <String, Object> keyMap) throws Exception {
	 Key key = (Key) keyMap.get (PRIVATE_KEY);
	 return encryptBASE64 (key.getEncoded ()); // base64 encrypted private key
	 }

	 public static byte[] getPublicKey (Map <String, Object> keyMap) throws Exception {
	 Key key = (Key) keyMap.get (PUBLIC_KEY);
	 return encryptBASE64 (key.getEncoded ()); // base64 encrypted public key
	 }
	
	 public static byte[] sign (byte [] data, byte[] bs) throws Exception {
	 System.out.println ("Digitally sign information with a private key");
	  
	 byte [] keyBytes = decryptBASE64 (bs);
	 PKCS8EncodedKeySpec keySpec = new PKCS8EncodedKeySpec (keyBytes);
	 KeyFactory factory = KeyFactory.getInstance (KEY_ALGORITHM1);
	 PrivateKey priKey = factory.generatePrivate (keySpec); // Generate private key
	  
	 // Digitally sign information with a private key
	 Signature signature = Signature.getInstance (SIGNATURE_ALGORITHM1);
	 signature.initSign (priKey);
	 signature.update (data);
	 return encryptBASE64 (signature.sign ());
	 }
	 private static byte[] encryptBASE64 (byte [] data) {
	 Base64.Encoder encoder = Base64.getEncoder();
	 byte[] encode = encoder.encode (data);
	 return encode;
	 }
	 
	
	 private static byte [] decryptBASE64 (byte[] bs) throws Exception {
	 Base64.Decoder decoder = Base64.getDecoder();
	 byte [] buffer = decoder.decode (bs);
	 return buffer;
	 }
	 
	 
	 public static boolean verify (byte [] data, byte[] bs, byte[] sign) throws Exception {
	 byte [] keyBytes = decryptBASE64 (bs);
	 X509EncodedKeySpec keySpec = new X509EncodedKeySpec (keyBytes);
	 KeyFactory keyFactory = KeyFactory.getInstance (KEY_ALGORITHM1);
	  PublicKey pubKey = keyFactory.generatePublic (keySpec);
	  
	  Signature signature = Signature.getInstance (SIGNATURE_ALGORITHM1);
	  signature.initVerify (pubKey);
	  signature.update (data);
	  
	  return signature.verify (decryptBASE64 (sign));
	  }

}
