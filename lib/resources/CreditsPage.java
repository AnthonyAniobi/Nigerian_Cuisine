package com.devessentials.nigeriancuisine;

import android.os.Bundle;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class CreditsPage extends AppCompatActivity {
    private final String credits_app = "A big thanks to all those that helped in making this application a reality\nTo our cooks who provided help virtually and in person, \nAnd our programmers.\nDue to personal discretion we’ wouldn’t mention most but I would like to call some honorable mentions some of them are:\nNky Lily : Nigerian Food Tv\nMichael Toye Faleti: Nigeria foods.com\nAnd a host of other helpers that made this a reality.";

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) C0523R.layout.activity_credits_page);
        ((TextView) findViewById(C0523R.C0526id.credit_title_text)).setText("Credits");
        ((TextView) findViewById(C0523R.C0526id.credit_text)).setText("A big thanks to all those that helped in making this application a reality\nTo our cooks who provided help virtually and in person, \nAnd our programmers.\nDue to personal discretion we’ wouldn’t mention most but I would like to call some honorable mentions some of them are:\nNky Lily : Nigerian Food Tv\nMichael Toye Faleti: Nigeria foods.com\nAnd a host of other helpers that made this a reality.");
    }
}
