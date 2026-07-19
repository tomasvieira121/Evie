package com.evie.jigsaw.components.navigation;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.listeners.FinishingOnClickListener;

/* JADX INFO: loaded from: classes.dex */
public class BackComponent extends AbstractComponent<Holder> {
    private static final View.OnClickListener LISTENER = new FinishingOnClickListener();

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        holder.itemView.setOnClickListener(LISTENER);
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public Holder(View view) {
            super(view);
        }
    }
}
