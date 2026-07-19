package com.aol.mobile.sdk.player.advertisement;

import com.aol.mobile.sdk.player.advertisement.utils.Task;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class AdServices<Ad, Source> {
    protected List<Callback<Ad, Source>> callbacks = new ArrayList();
    protected long timeout;

    public interface Callback<Ad, Source> {
        void onHardTimeoutReached();

        void onSoftTimeoutReached();

        void onTaskFinished(Task<Ad, Source> task);

        void onTaskLaunched(Task<Ad, Source> task);

        void onTasksReady(List<List<Task<Ad, Source>>> list, String str, String str2);
    }

    public abstract void cancel();

    public abstract void launch(Task<Ad, Source> task);

    public abstract void prepareTasks();

    public abstract void startTimer();

    public long getTimeout() {
        return this.timeout;
    }

    void addCallback(Callback<Ad, Source> callback) {
        this.callbacks.add(callback);
    }
}
