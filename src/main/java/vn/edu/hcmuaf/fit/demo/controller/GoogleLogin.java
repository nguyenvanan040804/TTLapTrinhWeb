package vn.edu.hcmuaf.fit.demo.controller;

import java.io.IOException;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import org.apache.hc.client5.http.ClientProtocolException;
import org.apache.hc.client5.http.fluent.Form;
import org.apache.hc.client5.http.fluent.Request;
import vn.edu.hcmuaf.fit.demo.model.GoogleUser;



public class GoogleLogin{
    public static String getToken(String code) throws ClientProtocolException, IOException {

        String response = Request.post(Iconstant.GOOGLE_LINK_GET_TOKEN)

                .bodyForm(

                        Form.form()

                                .add("client_id", Iconstant.GOOGLE_CLIENT_ID)

                                .add("client_secret", Iconstant.GOOGLE_CLIENT_SECRET)

                                .add("redirect_uri", Iconstant.GOOGLE_REDIRECT_URI)

                                .add("code", code)

                                .add("grant_type", Iconstant.GOOGLE_GRANT_TYPE)

                                .build()

                )

                .execute().returnContent().asString();



        JsonObject jobj = new Gson().fromJson(response, JsonObject.class);

        String accessToken = jobj.get("access_token").toString().replaceAll("\"", "");

        return accessToken;

    }
    public static GoogleUser getUserInfo(final String accessToken) throws ClientProtocolException, IOException {
        String link = Iconstant.GOOGLE_LINK_GET_USER_INFO + accessToken;

        String response = Request.get(link).execute().returnContent().asString();

        GoogleUser googlePojo = new Gson().fromJson(response, GoogleUser.class);


        return googlePojo;

    }
}


