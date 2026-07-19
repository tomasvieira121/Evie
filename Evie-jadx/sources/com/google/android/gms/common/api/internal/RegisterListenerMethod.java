package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes.dex */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {
    private final ListenerHolder<L> zajt;
    private final Feature[] zaju;
    private final boolean zajv;

    protected abstract void registerListener(A a, TaskCompletionSource<Void> taskCompletionSource) throws RemoteException;

    public void clearListener() {
        this.zajt.clear();
    }

    public Feature[] getRequiredFeatures() {
        return this.zaju;
    }

    public final boolean shouldAutoResolveMissingFeatures() {
        return this.zajv;
    }
}
