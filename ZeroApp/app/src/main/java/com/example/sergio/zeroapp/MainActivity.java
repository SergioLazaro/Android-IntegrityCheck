package com.example.sergio.zeroapp;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.Signature;
import android.content.pm.PackageManager;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.Base64;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

import java.security.MessageDigest;

public class MainActivity extends AppCompatActivity {

    private String text = "";
    private EditText editText;
    private String imei = "";
    private String firstMessage = "";
    private static final int signatureHash = 1516173843;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        boolean isDebuggable =  BuildConfig.DEBUG;
        if(!checkSign()) {
            //close the app
            firstMessage = "SIGNATURE WRONG - " + isDebuggable;
        }
        else{
            firstMessage = "SIGNATURE OK - " + isDebuggable;
        }
        editText  = (EditText) findViewById(R.id.text);

        //Buttons
        Button buttonIMEI = (Button) findViewById(R.id.button);
        Button buttonSignature = (Button) findViewById(R.id.button2);
        Button buttonFirstMessage = (Button) findViewById(R.id.button3);
        buttonIMEI.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                printIMEI(v);
            }
        });
        buttonSignature.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                printSignature(v);
            }
        });
        buttonFirstMessage.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                printFirstMessage(v);
            }
        });
        TelephonyManager tm = (TelephonyManager) getSystemService(this.TELEPHONY_SERVICE);

        // get IMEI
        imei = tm.getDeviceId();

    }

    private void printIMEI(View view){
        Toast.makeText(view.getContext(), imei,
                Toast.LENGTH_LONG).show();
    }
    private void printSignature(View view){
        PackageInfo packageInfo = null;
        try {
            packageInfo = view.getContext().getPackageManager().getPackageInfo(getPackageName(),
                    PackageManager.GET_SIGNATURES);
            Signature[] signatures = packageInfo.signatures;
            //Show signature
            //Toast.makeText(view.getContext(), signatures[0].toCharsString(),
                //    Toast.LENGTH_LONG).show();
            Toast.makeText(view.getContext(), "" + signatures[0].hashCode(),
                    Toast.LENGTH_LONG).show();
        }
        catch(Exception e){
            e.printStackTrace();
        }
    }
    private void printFirstMessage(View v){
        Toast.makeText(v.getContext(), firstMessage,
                Toast.LENGTH_LONG).show();
    }

    private boolean checkSign(){
        boolean go = false;
        PackageInfo packageInfo = null;
        try {
            packageInfo = getPackageManager().getPackageInfo(getPackageName(),
                    PackageManager.GET_SIGNATURES);

            Signature[] signatures = packageInfo.signatures;
            if(signatures[0].hashCode() == signatureHash) {
                go = true;
            }
            return go;
        } catch ( Exception e) {
            e.printStackTrace();
            return false;
        }

    }



}
