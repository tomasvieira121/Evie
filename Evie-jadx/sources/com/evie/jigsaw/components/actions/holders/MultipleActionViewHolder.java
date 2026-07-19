package com.evie.jigsaw.components.actions.holders;

import android.view.View;
import android.widget.GridView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class MultipleActionViewHolder extends RecyclerView.ViewHolder {
    public final RichTextView description;
    public final SimpleDraweeView icon;
    public final GridView multicon;
    public final TextView title;

    public MultipleActionViewHolder(View view) {
        super(view);
        this.title = (TextView) view.findViewById(R.id.action_title);
        this.description = (RichTextView) view.findViewById(R.id.action_description);
        this.multicon = (GridView) view.findViewById(R.id.action_multicon);
        this.icon = (SimpleDraweeView) view.findViewById(R.id.action_icon);
    }
}
