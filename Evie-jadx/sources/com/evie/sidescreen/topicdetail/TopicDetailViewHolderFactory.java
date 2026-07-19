package com.evie.sidescreen.topicdetail;

import android.view.View;
import com.evie.sidescreen.mvp.LifecycleAwareMvpRecyclerAdapter;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class TopicDetailViewHolderFactory {
    private final Provider<LifecycleAwareMvpRecyclerAdapter> adapterProvider;

    public TopicDetailViewHolderFactory(Provider<LifecycleAwareMvpRecyclerAdapter> provider) {
        this.adapterProvider = (Provider) checkNotNull(provider, 1);
    }

    public TopicDetailViewHolder create(View view) {
        return new TopicDetailViewHolder((View) checkNotNull(view, 1), (LifecycleAwareMvpRecyclerAdapter) checkNotNull(this.adapterProvider.get(), 2));
    }

    private static <T> T checkNotNull(T t, int i) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException("@AutoFactory method argument is null but is not marked @Nullable. Argument index: " + i);
    }
}
