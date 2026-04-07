package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.preference.PreferenceManager;
import androidx.core.content.ContextCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ListView;

public class Functions {
    public Functions() {
    }

    public static void SetKeyboardhide_View(final View view, final Activity activity) {
        if (!(view instanceof EditText)) {
            view.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    hideSoftKeyboard(activity);
                    return false;
                }
            });
        }
    }

    public static void SetKeyboardhide_ViewAndChildren(View view, final Activity activity) {
        if (!(view instanceof EditText) && !(view instanceof ListView)) {
            view.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    hideSoftKeyboard(activity);
                    return false;
                }
            });
        }
        if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                SetKeyboardhide_ViewAndChildren(((ViewGroup) view).getChildAt(i), activity);
            }
        }
    }

    public static void SetKeyboardhide_ViewAndChildren(View view, final Activity activity, final Dialog dialog) {
        if (!(view instanceof EditText) && !(view instanceof ListView)) {
            view.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public boolean onTouch(View v, MotionEvent event) {
                    hideSoftKeyboard(activity, dialog);
                    return false;
                }
            });
        }
        if (view instanceof ViewGroup) {
            for (int i = 0; i < ((ViewGroup) view).getChildCount(); i++) {
                SetKeyboardhide_ViewAndChildren(((ViewGroup) view).getChildAt(i), activity, dialog);
            }
        }
    }

    public static int getColorRef(Activity activity, int colorRef) {
        return ContextCompat.getColor(activity, colorRef);
    }

    public static void hideSoftKeyboard(Activity activity) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
        View currentFocus = activity.getCurrentFocus();
        if (currentFocus != null) {
            inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
        }
    }

    public static void hideSoftKeyboard(Activity activity, Dialog dialog) {
        InputMethodManager inputMethodManager = (InputMethodManager) activity.getSystemService(Context.INPUT_METHOD_SERVICE);
        IBinder windowToken = dialog.getWindow().getDecorView().getWindowToken();
        inputMethodManager.hideSoftInputFromWindow(windowToken, 0);
    }

    public static int load_localpref(String identifier, Activity activity) {
        SharedPreferences hiscores = PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext());
        return hiscores.getInt("pref" + identifier, 0);
    }

    public static void save_localpref(int pref, String identifier, Activity activity) {
        SharedPreferences hiscores = PreferenceManager.getDefaultSharedPreferences(activity.getApplicationContext());
        SharedPreferences.Editor hiscores_editor = hiscores.edit();
        hiscores_editor.putInt("pref" + identifier, pref);
        hiscores_editor.commit();
    }
}
