package com.aol.mobile.sdk.player.advertisement;

import com.aol.mobile.sdk.player.advertisement.utils.Task;
import com.aol.mobile.sdk.player.utils.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AdServiceGuard<Ad, Source> extends AdServices<Ad, Source> implements AdServices.Callback<Ad, Source> {
    private boolean hardReached;
    private List<AdServices.Callback<Ad, Source>> innerCallbacks;
    private final AdServices<Ad, Source> innerService;
    private boolean softReached;
    private boolean tasksLoaded;

    public AdServiceGuard(AdServices<Ad, Source> adServices) {
        this.innerService = adServices;
        this.innerCallbacks = adServices.callbacks;
        this.innerService.callbacks = new ArrayList();
        this.innerService.callbacks.add(this);
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    void addCallback(AdServices.Callback<Ad, Source> callback) {
        this.innerCallbacks.add(callback);
        this.innerService.callbacks = new ArrayList();
        this.innerService.callbacks.add(this);
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
    public void onTasksReady(List<List<Task<Ad, Source>>> list, String str, String str2) {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        this.tasksLoaded = true;
        Iterator<AdServices.Callback<Ad, Source>> it = this.innerCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onTasksReady(list, str, str2);
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
    public void onSoftTimeoutReached() {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        Preconditions.checkState(this.tasksLoaded, "No tasks were loaded");
        this.softReached = true;
        Iterator<AdServices.Callback<Ad, Source>> it = this.innerCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onSoftTimeoutReached();
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
    public void onHardTimeoutReached() {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        Preconditions.checkState(this.tasksLoaded, "No tasks were loaded");
        Preconditions.checkState(this.softReached, "Hard timeout can not be reached before soft timeout");
        this.hardReached = true;
        Iterator<AdServices.Callback<Ad, Source>> it = this.innerCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onHardTimeoutReached();
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
    public void onTaskLaunched(Task<Ad, Source> task) {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        this.tasksLoaded = true;
        Iterator<AdServices.Callback<Ad, Source>> it = this.innerCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onTaskLaunched(task);
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
    public void onTaskFinished(Task<Ad, Source> task) {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        Preconditions.checkState(this.tasksLoaded, "No tasks were loaded");
        Preconditions.checkState(!this.hardReached, "No data is accepted after hard timeout is reached");
        Iterator<AdServices.Callback<Ad, Source>> it = this.innerCallbacks.iterator();
        while (it.hasNext()) {
            it.next().onTaskFinished(task);
        }
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void prepareTasks() {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        this.innerService.prepareTasks();
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void launch(Task<Ad, Source> task) {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        Preconditions.checkState(this.tasksLoaded, "No tasks were loaded");
        this.innerService.launch(task);
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void startTimer() {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        Preconditions.checkState(this.tasksLoaded, "No tasks were loaded");
        this.innerService.startTimer();
    }

    @Override // com.aol.mobile.sdk.player.advertisement.AdServices
    public void cancel() {
        Preconditions.checkState(!this.innerCallbacks.isEmpty(), "addCallback was not called");
        this.innerService.cancel();
    }
}
