package com.evie.sidescreen.dagger;

import com.voxel.simplesearchlauncher.api.LocationHandler;

/* JADX INFO: loaded from: classes.dex */
public class LocationModule {
    public LocationHandler providesLocationHandler() {
        return LocationHandler.getInstance();
    }
}
