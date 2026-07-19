package com.evie.jigsaw.components.containers;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.adapters.ComponentListAdapter;
import com.evie.jigsaw.adapters.scrolling.ScrollingType;
import com.evie.jigsaw.adapters.spacing.SpacingStrategy;
import com.evie.jigsaw.adapters.spacing.SpacingType;
import com.evie.jigsaw.components.delimiters.AbstractDelimiterComponent;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractListComponent extends AbstractContainerComponent<Holder> {
    private String title;
    private SpacingType spacing = SpacingType.regular;
    private ScrollingType overscroll = ScrollingType.regular;

    protected abstract AbstractDelimiterComponent<?> getDelimiter();

    protected abstract RecyclerView.LayoutManager getManager(Context context);

    protected abstract SpacingStrategy getSpacingStrategy(Context context);

    public AbstractListComponent setSpacing(SpacingType spacingType) {
        this.spacing = spacingType;
        return this;
    }

    public SpacingType getSpacing() {
        return this.spacing;
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, Holder holder) {
        super.bind(context, holder);
        bind(holder.title, this.title, 8);
        bind(holder.items, getAdapter(context), getManager(context));
        switch (this.overscroll) {
            case none:
                holder.items.setOverScrollMode(2);
                break;
            case regular:
                holder.items.setOverScrollMode(1);
                break;
        }
    }

    @Override // com.evie.jigsaw.components.base.AbstractComponent
    public int getInset(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.base_and_half_spacing);
    }

    protected RecyclerView.Adapter getAdapter(Context context) {
        return new ComponentListAdapter(getItems(), getSpacingStrategy(context), getDelimiter());
    }

    public static class Holder extends RecyclerView.ViewHolder {
        public final RecyclerView items;
        public final TextView title;

        public Holder(View view) {
            super(view);
            this.title = (TextView) view.findViewById(R.id.list_title);
            this.items = (RecyclerView) view.findViewById(R.id.list_items);
        }
    }
}
