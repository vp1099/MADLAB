package com.example.ex11j;

import android.app.Application;
import android.media.Ringtone;

public class MyApplication extends Application {
    private Ringtone ringtone;
    public Ringtone getRingtone(){
        return ringtone;
    }
    public void setRingtone(Ringtone ringtone){
        this.ringtone = ringtone;
    }
}
