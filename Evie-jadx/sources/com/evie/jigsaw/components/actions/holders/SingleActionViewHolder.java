package com.evie.jigsaw.components.actions.holders;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.views.RichTextView;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes.dex */
public class SingleActionViewHolder extends RecyclerView.ViewHolder {
    public final SimpleDraweeView customButton;
    public final RichTextView description;
    public final SimpleDraweeView icon;
    public final ImageView mainButton;
    public final TextView title;

    public SingleActionViewHolder(View view) {
        super(view);
        this.title = (TextView) view.findViewById(R.id.action_title);
        this.description = (RichTextView) view.findViewById(R.id.action_description);
        this.icon = (SimpleDraweeView) view.findViewById(R.id.action_icon);
        this.mainButton = (ImageView) view.findViewById(R.id.action_button_main);
        this.customButton = (SimpleDraweeView) view.findViewById(R.id.action_button_custom);
    }
}
