package com.aol.mobile.sdk.player.advertisement;

import com.aol.mobile.sdk.player.advertisement.utils.Task;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AdProvider<Ad, Source> {
    static final int GROUP_IS_PROCESSED = -2;
    static final int KEEP_GOING = -1;
    private final AdCallback<Ad, Source> mAdCallback;
    private final AdServices<Ad, Source> mAdServices;
    private final LinkedList<List<Task<Ad, Source>>> mTasksGroups = new LinkedList<>();
    private boolean isInSoftMode = true;
    private boolean canceled = false;

    public interface AdCallback<Ad, Source> {
        void onAdArrived(Ad ad);

        void onHardTimeoutReached();

        void onSoftTimeoutReached();

        void onTaskFinished(Task<Ad, Source> task);

        void onTaskLaunched(Task<Ad, Source> task);

        void onVrmParamsReady(String str, String str2);
    }

    enum TaskState {
        PROGRESS,
        SUCCESS,
        FAILURE
    }

    public AdProvider(AdServices<Ad, Source> adServices, AdCallback<Ad, Source> adCallback) {
        this.mAdCallback = adCallback;
        this.mAdServices = adServices;
        this.mAdServices.addCallback(new AdServices.Callback<Ad, Source>() { // from class: com.aol.mobile.sdk.player.advertisement.AdProvider.1
            @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
            public void onTasksReady(List<List<Task<Ad, Source>>> list, String str, String str2) {
                if (str2 != null && str != null) {
                    AdProvider.this.mAdCallback.onVrmParamsReady(str, str2);
                }
                if (list != null) {
                    AdProvider.this.mTasksGroups.addAll(list);
                }
                AdProvider.this.mAdServices.startTimer();
                AdProvider.this.launchGroupTasks();
            }

            @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
            public void onTaskFinished(Task<Ad, Source> task) {
                AdProvider.this.mAdCallback.onTaskFinished(task);
                if (AdProvider.this.canceled) {
                    return;
                }
                AdProvider.this.processGroup();
            }

            @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
            public void onSoftTimeoutReached() {
                AdProvider.this.mAdCallback.onSoftTimeoutReached();
                AdProvider.this.isInSoftMode = false;
                AdProvider.this.processGroup();
            }

            @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
            public void onHardTimeoutReached() {
                AdProvider.this.mAdCallback.onHardTimeoutReached();
                AdProvider.this.publishAd(null);
            }

            @Override // com.aol.mobile.sdk.player.advertisement.AdServices.Callback
            public void onTaskLaunched(Task<Ad, Source> task) {
                AdProvider.this.mAdCallback.onTaskLaunched(task);
            }
        });
    }

    static int getAdIndex(List<TaskState> list, boolean z) {
        boolean z2 = false;
        for (TaskState taskState : list) {
            if (taskState == TaskState.SUCCESS) {
                return list.indexOf(taskState);
            }
            if (taskState == TaskState.PROGRESS) {
                z2 = true;
                if (z) {
                    break;
                }
            }
        }
        if (z2) {
            return -1;
        }
        return GROUP_IS_PROCESSED;
    }

    public void start() {
        this.mAdServices.prepareTasks();
    }

    public final void cancel() {
        this.canceled = true;
        this.mAdServices.cancel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void launchGroupTasks() {
        while (!this.mTasksGroups.isEmpty()) {
            List<Task<Ad, Source>> listPeek = this.mTasksGroups.peek();
            if (listPeek.isEmpty()) {
                this.mTasksGroups.remove();
            } else {
                Iterator<Task<Ad, Source>> it = listPeek.iterator();
                while (it.hasNext()) {
                    this.mAdServices.launch(it.next());
                }
                return;
            }
        }
        publishAd(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processGroup() {
        List<Task<Ad, Source>> listPeek = this.mTasksGroups.peek();
        int adIndex = getAdIndex(getTaskStatesFrom(listPeek), this.isInSoftMode);
        switch (adIndex) {
            case GROUP_IS_PROCESSED /* -2 */:
                this.mTasksGroups.remove();
                launchGroupTasks();
                break;
            case -1:
                break;
            default:
                publishAd(listPeek.get(adIndex));
                break;
        }
    }

    private ArrayList<TaskState> getTaskStatesFrom(List<Task<Ad, Source>> list) {
        ArrayList<TaskState> arrayList = new ArrayList<>(list.size());
        Iterator<Task<Ad, Source>> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(getTaskStateFrom(it.next()));
        }
        return arrayList;
    }

    private TaskState getTaskStateFrom(Task<Ad, Source> task) {
        if (task.isWorking()) {
            return TaskState.PROGRESS;
        }
        return task.hasAd() ? TaskState.SUCCESS : TaskState.FAILURE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void publishAd(Task<Ad, Source> task) {
        if (task != null) {
            this.mAdCallback.onAdArrived(task.getAd());
        } else {
            this.mAdCallback.onAdArrived(null);
        }
        cancel();
    }
}
