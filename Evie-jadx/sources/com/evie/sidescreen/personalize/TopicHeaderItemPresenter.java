package com.evie.sidescreen.personalize;

import android.text.TextUtils;
import android.view.View;
import com.evie.sidescreen.mvp.ItemPresenter;

/* JADX INFO: loaded from: classes.dex */
public class TopicHeaderItemPresenter extends ItemPresenter<TopicHeaderItemViewHolder> {
    private boolean mIsFirstSection;
    private final int mTitleResId;
    private final String mTitleString;

    public TopicHeaderItemPresenter(int i, boolean z) {
        this.mTitleString = null;
        this.mTitleResId = i;
        this.mIsFirstSection = z;
    }

    public TopicHeaderItemPresenter(String str, boolean z) {
        this.mTitleString = str;
        this.mTitleResId = 0;
        this.mIsFirstSection = z;
    }

    @Override // com.evie.sidescreen.mvp.ItemPresenter
    protected int getType() {
        return TopicHeaderItemViewHolder.f335ID;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public TopicHeaderItemViewHolder createViewHolderInstance(View view) {
        return new TopicHeaderItemViewHolder(view);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.sidescreen.mvp.ItemPresenter
    public void onBindViewHolder(TopicHeaderItemViewHolder topicHeaderItemViewHolder) {
        if (!TextUtils.isEmpty(this.mTitleString)) {
            topicHeaderItemViewHolder.setLabel(this.mTitleString);
        } else {
            topicHeaderItemViewHolder.setLabel(this.mTitleResId);
        }
        topicHeaderItemViewHolder.setTopMargin(this.mIsFirstSection);
    }

    public void setIsFirstSection(boolean z) {
        this.mIsFirstSection = z;
    }
}
