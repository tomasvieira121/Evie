package com.crashlytics.android.beta;

/* JADX INFO: loaded from: classes.dex */
class ImmediateCheckForUpdatesController extends AbstractCheckForUpdatesController {
    @Override // com.crashlytics.android.beta.UpdatesController
    public boolean isActivityLifecycleTriggered() {
        return false;
    }

    public ImmediateCheckForUpdatesController() {
        super(true);
    }
}
