package utils;

import java.io.*;

import java.net.URL;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;

import java.net.HttpURLConnection;



public class GoogleCaptcha{
	public static String SECRET_KEY;
	public static boolean checkRecaptcha(String captchaResponse) throws IOException{
		String reCaptchaURL = "https://www.google.com/recaptcha/api/siteverify";
		String parameters = "secret=6LcYwpUeAAAAAFlVe7RllIGcImHFgZxvbcVFk4-f"+
							"&response="+captchaResponse;
		
		URL url = new URL(reCaptchaURL+"?"+parameters);

		HttpURLConnection con = (HttpURLConnection)url.openConnection();

		con.setRequestMethod("POST");
		con.setDoOutput(true);

		DataOutputStream dos = new DataOutputStream(con.getOutputStream());
		dos.flush();
		dos.close();

		InputStream inputStream;
		int status = con.getResponseCode();

		if (status != HttpURLConnection.HTTP_OK)  {
			inputStream = con.getErrorStream();
		}
		else  {
			inputStream = con.getInputStream();
		}

		JsonReader jsonReader =	Json.createReader(inputStream);	
		JsonObject jsonObject =	jsonReader.readObject();

		boolean flag = jsonObject.getBoolean("success");

		return flag;
	}
}