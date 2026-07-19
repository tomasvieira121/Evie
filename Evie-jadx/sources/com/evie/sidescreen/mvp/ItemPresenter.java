package com.evie.sidescreen.mvp;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.crashlytics.android.Crashlytics;
import com.evie.sidescreen.mvp.MvpViewHolder;
import io.reactivex.disposables.CompositeDisposable;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public abstract class ItemPresenter<V extends MvpViewHolder> {
    protected CompositeDisposable mDisposables = new CompositeDisposable();
    protected V mViewHolder;

    protected abstract V createViewHolderInstance(View view);

    protected abstract int getType();

    public float getVisibilityThreshold(Context context) {
        return 1.0f;
    }

    protected abstract void onBindViewHolder(V v);

    protected void onUnbindViewHolder() {
    }

    public void onVisibilityChanged(boolean z) {
    }

    public void onVisibilityWillChange() {
    }

    public int getLayoutResId() {
        return getType();
    }

    public V onCreateViewHolder(Context context, ViewGroup viewGroup) {
        View viewInflate = LayoutInflater.from(context).inflate(getLayoutResId(), viewGroup, false);
        viewInflate.setTag(R.id.layoutResId, Integer.valueOf(getLayoutResId()));
        return (V) createViewHolderInstance(viewInflate);
    }

    public V getViewHolder() {
        return this.mViewHolder;
    }

    public final void bindViewHolder(V v) {
        try {
            unbindViewHolder();
            this.mViewHolder = v;
            onBindViewHolder(this.mViewHolder);
        } catch (Throwable th) {
            handleUnanticipatedException(th);
        }
    }

    public final void unbindViewHolder() {
        if (this.mViewHolder != null) {
            onUnbindViewHolder();
        }
        this.mDisposables.clear();
        this.mViewHolder = null;
    }

    public boolean isSameItem(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && getClass() == obj.getClass();
    }

    public void dispose() {
        unbindViewHolder();
    }

    public boolean isSameContents(ItemPresenter itemPresenter) {
        return isSameItem(itemPresenter);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void handleUnanticipatedException(Throwable th) {
        Timber.m554e(th);
        Crashlytics.logException(th);
    }
}
