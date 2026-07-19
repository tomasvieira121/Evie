package com.aol.mobile.sdk.player.utils;

import android.content.Context;
import android.media.AudioManager;

/* JADX INFO: loaded from: classes.dex */
public final class VolumeGetter {
    private AudioManager audioManager;

    public VolumeGetter(Context context) {
        this.audioManager = (AudioManager) context.getSystemService("audio");
    }

    public int getAudioVolume() {
        return (this.audioManager.getStreamVolume(3) * 100) / this.audioManager.getStreamMaxVolume(3);
    }
}
