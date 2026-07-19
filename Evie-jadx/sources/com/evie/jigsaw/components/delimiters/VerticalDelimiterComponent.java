package com.evie.jigsaw.components.delimiters;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;

/* JADX INFO: loaded from: classes.dex */
public class VerticalDelimiterComponent extends AbstractDelimiterComponent<Holder> {
    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public int getInset(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.base_and_half_spacing);
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public Holder(View view) {
            super(view);
        }
    }
}
