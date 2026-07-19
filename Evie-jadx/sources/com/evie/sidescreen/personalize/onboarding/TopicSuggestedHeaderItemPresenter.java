package com.evie.sidescreen.personalize.onboarding;

import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;

/* JADX INFO: loaded from: classes.dex */
public class TopicSuggestedHeaderItemPresenter extends ItemPresenter<TopicSuggestedHeaderItemViewHolder> {
    private Runnable mDeselectRunnable;
    private boolean mIsFirstSection;
    private final int mTitleResId;

    public TopicSuggestedHeaderItemPresenter(int i, boolean z, Runnable runnable) {
        this.mTitleResId = i;
        this.mIsFirstSection = z;
        this.mDeselectRunnable = runnable;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicSuggestedHeaderItemViewHolder.f338ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicSuggestedHeaderItemViewHolder createViewHolderInstance(View view) {
        return new TopicSuggestedHeaderItemViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicSuggestedHeaderItemViewHolder topicSuggestedHeaderItemViewHolder) {
        topicSuggestedHeaderItemViewHolder.setLabel(this.mTitleResId);
        topicSuggestedHeaderItemViewHolder.setTopMargin(this.mIsFirstSection);
    }

    public void setIsFirstSection(boolean z) {
        this.mIsFirstSection = z;
    }

    public void onDeselect() {
        this.mDeselectRunnable.run();
    }
}
