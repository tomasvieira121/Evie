package com.evie.jigsaw.components.delimiters;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;

/* JADX INFO: loaded from: classes.dex */
public class HorizontalDelimiterComponent extends AbstractDelimiterComponent<Holder> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void inset(Holder holder, int i) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) holder.itemView.getLayoutParams();
        marginLayoutParams.leftMargin = i;
        marginLayoutParams.rightMargin = i;
    }

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
