package com.hitmedland.newTextMessage;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.DialogFragment;
import android.widget.EditText;

public class Alert extends DialogFragment {

    public interface PositiveButtonListener {
        void onPositiveButtonClick(String result);
    }

    public interface NegativeButtonListener {
        void onNegativeButtonClick(String result);
    }

    private final int TEXT = 0;
    private final int EDITTEXT = 1;

    private PositiveButtonListener positiveButtonListener;
    private NegativeButtonListener negativeButtonListener;

    private String title;
    private String text;
    private String hint;
    private String acceptText;
    private String cancelText;
    private Activity activity;
    private int type;
    private Context mContext;

    public void DisplayEditText(String title, String text, String hint, String acceptText, String cancelText, Activity activity) {
        this.title = title;
        this.text = text;
        this.hint = hint;
        this.acceptText = acceptText;
        this.cancelText = cancelText;
        this.activity = activity;
        this.type = EDITTEXT;
    }

    public void DisplayText(String title, String text, String acceptText, Activity activity) {
        this.title = title;
        this.text = text;
        this.acceptText = acceptText;
        this.activity = activity;
        this.type = TEXT;
    }

    public void DisplayText(String title, String text, String acceptText, String cancelText, Activity activity) {
        this.title = title;
        this.text = text;
        this.acceptText = acceptText;
        this.cancelText = cancelText;
        this.activity = activity;
        this.type = TEXT;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        mContext = getActivity();
        AlertDialog.Builder alertDialogBuilder = new AlertDialog.Builder(mContext);
        alertDialogBuilder.setTitle(title);
        alertDialogBuilder.setMessage(text);

        final EditText edittext = (type == EDITTEXT) ? new EditText(activity) : null;
        if (type == EDITTEXT) {
            edittext.setHint(hint);
            alertDialogBuilder.setView(edittext);
        }

        alertDialogBuilder.setPositiveButton(acceptText, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                if (positiveButtonListener != null) {
                    positiveButtonListener.onPositiveButtonClick(edittext != null ? edittext.getText().toString() : "");
                }
            }
        });

        if (cancelText != null) {
            alertDialogBuilder.setNegativeButton(cancelText, new DialogInterface.OnClickListener() {
                @Override
                public void onClick(DialogInterface dialog, int which) {
                    if (negativeButtonListener != null) {
                        negativeButtonListener.onNegativeButtonClick(edittext != null ? edittext.getText().toString() : "");
                    }
                }
            });
        }

        return alertDialogBuilder.create();
    }

    public synchronized void setPositiveButtonListener(PositiveButtonListener listener) {
        this.positiveButtonListener = listener;
    }

    public synchronized void setNegativeButtonListener(NegativeButtonListener listener) {
        this.negativeButtonListener = listener;
    }
}
