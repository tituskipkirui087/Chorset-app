package com.hitmedland.newTextMessage;

import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import android.text.Html;
import android.view.View;

import com.gc.materialdesign.views.ButtonRectangle;

public class About extends AppCompatActivity {

    AppCompatActivity ActionBarActivity;
    ActionBar actionBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.about);

        ActionBarActivity = this;

        actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.blue)));
            actionBar.setDisplayShowHomeEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.show();

            String title = "<font color=\"" + getResources().getColor(R.color.white) + "\">" + getString(R.string.app_name) + "</font>";
            actionBar.setTitle(Html.fromHtml(title));
        }

        ButtonRectangle report = (ButtonRectangle) findViewById(R.id.report);
        report.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent mailer = new Intent(Intent.ACTION_SEND);
                mailer.setType("text/plain");
                mailer.putExtra(Intent.EXTRA_EMAIL, new String[]{getResources().getString(R.string.developer_email)});
                startActivity(Intent.createChooser(mailer, getResources().getString(R.string.send_email)));
            }
        });
    }
}
