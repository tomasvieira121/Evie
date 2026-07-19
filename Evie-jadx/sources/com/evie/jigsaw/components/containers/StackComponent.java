package com.evie.jigsaw.components.containers;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.components.base.AbstractComponent;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class StackComponent extends AbstractContainerComponent<Holder> {
    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        super.bind(context, holder);
        holder.stack.removeAllViews();
        List<AbstractComponent<?>> items = getItems();
        for (int size = items.size() - 1; size >= 0; size--) {
            AbstractComponent<?> abstractComponent = items.get(size);
            if (abstractComponent.ready()) {
                abstractComponent.inflate(context, holder.stack);
            }
        }
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final FrameLayout stack;

        public Holder(View view) {
            super(view);
            this.stack = (FrameLayout) view;
        }
    }
}
