package com.aol.mobile.sdk.player.advertisement.utils;

/* JADX INFO: loaded from: classes.dex */
public class Task<Ad, Source> {

    /* JADX INFO: renamed from: ad */
    private Ad f156ad;
    private Exception error;
    private int hops;
    private final Source source;
    private State state = State.WORKING;
    private long time;

    enum State {
        WORKING,
        DONE
    }

    public Task(Source source) {
        this.source = source;
    }

    public Source getSource() {
        return this.source;
    }

    public Ad getAd() {
        return this.f156ad;
    }

    public void setAd(Ad ad) {
        this.f156ad = ad;
    }

    public void complete() {
        this.state = State.DONE;
    }

    public boolean isWorking() {
        return this.state == State.WORKING;
    }

    public boolean hasAd() {
        return this.f156ad != null;
    }

    public long getTime() {
        return this.time;
    }

    public void setTime(long j) {
        this.time = j;
    }

    public Exception getError() {
        return this.error;
    }

    public void setError(Exception exc) {
        this.error = exc;
    }

    public void incHops() {
        this.hops++;
    }

    public int getHops() {
        return this.hops;
    }
}
