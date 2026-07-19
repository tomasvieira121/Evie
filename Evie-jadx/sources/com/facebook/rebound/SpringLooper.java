package com.facebook.rebound;

/* JADX INFO: loaded from: classes.dex */
public abstract class SpringLooper {
    protected BaseSpringSystem mSpringSystem;

    public abstract void start();

    public abstract void stop();

    public void setSpringSystem(BaseSpringSystem baseSpringSystem) {
        this.mSpringSystem = baseSpringSystem;
    }
}
