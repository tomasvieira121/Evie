package com.evie.sidescreen.personalize;

import android.view.View;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class TopicHeaderItemViewHolder_ViewBinding implements Unbinder {
    private TopicHeaderItemViewHolder target;

    public TopicHeaderItemViewHolder_ViewBinding(TopicHeaderItemViewHolder topicHeaderItemViewHolder, View view) {
        this.target = topicHeaderItemViewHolder;
        topicHeaderItemViewHolder.mTextView = (TextView) Utils.findRequiredViewAsType(view, R.id.text, "field 'mTextView'", TextView.class);
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        TopicHeaderItemViewHolder topicHeaderItemViewHolder = this.target;
        if (topicHeaderItemViewHolder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        topicHeaderItemViewHolder.mTextView = null;
    }
}
