package com.aol.mobile.sdk.player.model;

import com.aol.mobile.sdk.player.utils.AngleHelper;

/* JADX INFO: loaded from: classes.dex */
public final class CameraDirection {
    private double latitude;
    private double longitude;

    public void change(double d, double d2) {
        this.longitude = AngleHelper.asPiMinusPiRange(d);
        this.latitude = AngleHelper.limitAngleToRange(d2, -85.0d, 85.0d);
    }

    public void moveBy(double d, double d2) {
        change(this.longitude + d, this.latitude + d2);
    }

    public double getLongitude() {
        return this.longitude;
    }

    public double getLatitude() {
        return this.latitude;
    }
}
