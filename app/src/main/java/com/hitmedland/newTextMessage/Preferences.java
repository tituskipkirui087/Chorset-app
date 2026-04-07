package com.hitmedland.newTextMessage;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import android.text.Html;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;

public class Preferences extends AppCompatActivity {

    AppCompatActivity ActionBarActivity;
    ActionBar actionBar;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.preferences);

        ActionBarActivity = this;

        actionBar = getSupportActionBar();
        if (actionBar != null) {
            actionBar.setBackgroundDrawable(new ColorDrawable(getResources().getColor(R.color.blue)));
            actionBar.setDisplayShowHomeEnabled(true);
            actionBar.setDisplayHomeAsUpEnabled(true);
            actionBar.show();

            String title = "<font color=\"" + getResources().getColor(R.color.white) + "\">" + getString(R.string.title_preferences) + "</font>";
            actionBar.setTitle(Html.fromHtml(title));
        }

        ImageButton icon_1 = (ImageButton) findViewById(R.id.icon1);
        icon_1.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getPackageManager().setComponentEnabledSetting(
                        new ComponentName("com.hitmedland.newTextMessage", "com.hitmedland.newTextMessage_beta"),
                        PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                        PackageManager.DONT_KILL_APP);
                getPackageManager().setComponentEnabledSetting(
                        new ComponentName("com.hitmedland.newTextMessage", "com.hitmedland.newTextMessage_alpha"),
                        PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                        PackageManager.DONT_KILL_APP);
                Toast.makeText(ActionBarActivity, getResources().getString(R.string.change_icon), Toast.LENGTH_SHORT).show();
            }
        });

        ImageButton icon_2 = (ImageButton) findViewById(R.id.icon2);
        icon_2.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                getPackageManager().setComponentEnabledSetting(
                        new ComponentName("com.hitmedland.newTextMessage", "com.hitmedland.newTextMessage_beta"),
                        PackageManager.COMPONENT_ENABLED_STATE_ENABLED,
                        PackageManager.DONT_KILL_APP);
                getPackageManager().setComponentEnabledSetting(
                        new ComponentName("com.hitmedland.newTextMessage", "com.hitmedland.newTextMessage_alpha"),
                        PackageManager.COMPONENT_ENABLED_STATE_DISABLED,
                        PackageManager.DONT_KILL_APP);
                Toast.makeText(ActionBarActivity, getResources().getString(R.string.change_icon), Toast.LENGTH_SHORT).show();
            }
        });
    }
}
