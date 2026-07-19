package com.evie.jigsaw.components.containers;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.components.base.AbstractComponent;

/* JADX INFO: loaded from: classes.dex */
public class EmptyComponent extends AbstractComponent<Holder> {
    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public Holder(View view) {
            super(view);
        }
    }
}
