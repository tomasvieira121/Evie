package com.aol.mobile.sdk.player.model;

/* JADX INFO: loaded from: classes.dex */
public class VrmState {
    public String adId;
    public String adUrl;
    public String slot;
    public String targetUrl;
    public Exception taskError;
    public TaskState taskState;
    public long taskTime;
    public String txid;
    public String vrmUrl;
    public VrmSource source = new VrmSource();
    public boolean isScalable = true;
    public boolean isMaintainAspectRatio = true;
    public Pixels pixels = new Pixels();
    public GroupProcessingState groupProcessingState = GroupProcessingState.NO_TIMEOUT_REACHED;

    public enum GroupProcessingState {
        NO_TIMEOUT_REACHED,
        SOFT_TIMEOUT_REACHED,
        HARD_TIMEOUT_REACHED
    }

    public enum TaskState {
        NO_TASK,
        IN_PROGRESS,
        FINISHED
    }
}
