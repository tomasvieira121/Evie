package com.google.android.gms.common.api.internal;

import android.app.Activity;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.internal.Preconditions;

/* JADX INFO: loaded from: classes.dex */
public class LifecycleActivity {
    private final Object zzbc;

    public LifecycleActivity(Activity activity) {
        Preconditions.checkNotNull(activity, "Activity must not be null");
        this.zzbc = activity;
    }

    public boolean isSupport() {
        return this.zzbc instanceof FragmentActivity;
    }

    public final boolean zzh() {
        return this.zzbc instanceof Activity;
    }

    public Activity asActivity() {
        return (Activity) this.zzbc;
    }

    public FragmentActivity asFragmentActivity() {
        return (FragmentActivity) this.zzbc;
    }
}
