package com.evie.jigsaw.components.content;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.base.AbstractComponent;

/* JADX INFO: loaded from: classes.dex */
public class DialogComponent extends AbstractComponent<Holder> {
    private transient Drawable background;
    private transient int backgroundResource;
    private transient View.OnClickListener dismissListener;
    private transient int image;
    private transient View.OnClickListener negativeButtonListener;
    private String negativeButtonText;
    private transient int negativeButtonTextResource;
    private transient View.OnClickListener positiveButtonListener;
    private String positiveButtonText;
    private transient int positiveButtonTextResource;
    private String subtext;
    private transient int subtextResource;
    private String text;
    private transient int textResource;

    public DialogComponent setBackgroundResource(int i) {
        this.backgroundResource = i;
        return this;
    }

    public DialogComponent setImage(int i) {
        this.image = i;
        return this;
    }

    public DialogComponent setPositiveButtonListener(View.OnClickListener onClickListener) {
        this.positiveButtonListener = onClickListener;
        return this;
    }

    public DialogComponent setPositiveButtonTextResource(int i) {
        this.positiveButtonTextResource = i;
        return this;
    }

    public DialogComponent setSubtextResource(int i) {
        this.subtextResource = i;
        return this;
    }

    public DialogComponent setTextResource(int i) {
        this.textResource = i;
        return this;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        if (this.image > 0) {
            holder.image.setVisibility(0);
            holder.image.setImageResource(this.image);
        } else {
            holder.image.setVisibility(8);
        }
        if (this.text != null) {
            bind(holder.text, this.text, 0);
        } else if (this.textResource > 0) {
            bind(holder.text, this.textResource, 0);
        }
        if (this.subtext != null) {
            bind(holder.subtext, this.subtext, 0);
        } else if (this.subtextResource > 0) {
            bind(holder.subtext, this.subtextResource, 0);
        }
        if (this.positiveButtonText != null) {
            bind(holder.positiveButton, this.positiveButtonText, 8);
        } else if (this.positiveButtonTextResource > 0) {
            bind(holder.positiveButton, this.positiveButtonTextResource, 8);
        }
        if (this.positiveButtonListener != null) {
            holder.positiveButton.setVisibility(0);
            holder.positiveButton.setOnClickListener(new DialogOnClickListener(holder.itemView, this.positiveButtonListener));
        }
        if (this.negativeButtonText != null) {
            bind(holder.negativeButton, this.negativeButtonText, 8);
        } else if (this.negativeButtonTextResource > 0) {
            bind(holder.negativeButton, this.negativeButtonTextResource, 8);
        }
        if (this.negativeButtonListener != null) {
            holder.negativeButton.setVisibility(0);
            holder.negativeButton.setOnClickListener(new DialogOnClickListener(holder.itemView, this.negativeButtonListener));
        }
        if (this.dismissListener != null) {
            holder.dismiss.setVisibility(0);
            holder.dismiss.setOnClickListener(new DialogOnClickListener(holder.itemView, this.dismissListener));
        }
        if (this.backgroundResource > 0) {
            bindBackground(holder.content, this.backgroundResource);
        } else if (this.background != null) {
            bindBackground(holder.content, this.background);
        }
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final View content;
        public final ImageView dismiss;
        public final ImageView image;
        public final Button negativeButton;
        public final Button positiveButton;
        public final TextView subtext;
        public final TextView text;

        public Holder(View view) {
            super(view);
            this.image = (ImageView) view.findViewById(R.id.confab_image);
            this.dismiss = (ImageView) view.findViewById(R.id.confab_dismiss);
            this.text = (TextView) view.findViewById(R.id.confab_text);
            this.subtext = (TextView) view.findViewById(R.id.confab_subtext);
            this.positiveButton = (Button) view.findViewById(R.id.confab_positive_button);
            this.negativeButton = (Button) view.findViewById(R.id.confab_negative_button);
            this.content = view.findViewById(R.id.confab_content);
        }
    }

    private static class DialogOnClickListener implements View.OnClickListener {
        private final View.OnClickListener delegate;
        private final View viewToReturn;

        public DialogOnClickListener(View view, View.OnClickListener onClickListener) {
            this.viewToReturn = view;
            this.delegate = onClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.delegate.onClick(this.viewToReturn);
        }
    }
}
