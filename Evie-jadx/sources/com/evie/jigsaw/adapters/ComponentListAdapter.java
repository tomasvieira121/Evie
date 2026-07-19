package com.evie.jigsaw.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.adapters.spacing.SpacingStrategy;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.components.containers.EmptyComponent;
import com.evie.jigsaw.components.delimiters.AbstractDelimiterComponent;
import com.evie.jigsaw.internal.Library;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ComponentListAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    private static final EmptyComponent PLACEHOLDER = new EmptyComponent();
    private final List<AbstractComponent<?>> mComponents;
    private final SpacingStrategy mSpacingStrategy;

    public ComponentListAdapter(List<AbstractComponent<?>> list, SpacingStrategy spacingStrategy, AbstractDelimiterComponent<?> abstractDelimiterComponent) {
        this.mComponents = list;
        if (spacingStrategy != null) {
            this.mSpacingStrategy = spacingStrategy;
        } else {
            this.mSpacingStrategy = SpacingStrategy.NO_SPACING;
        }
        if (abstractDelimiterComponent != null) {
            for (int i = 1; i < list.size(); i += 2) {
                list.add(i, abstractDelimiterComponent);
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return Library.holderForLayout(i, LayoutInflater.from(viewGroup.getContext()).inflate(i, viewGroup, false));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof EmptyComponent.Holder) {
            return;
        }
        View view = viewHolder.itemView;
        this.mComponents.get(i).bind(view.getContext(), viewHolder);
        this.mSpacingStrategy.space(view, i, getItemCount());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemViewType(int i) {
        AbstractComponent<?> abstractComponent = this.mComponents.get(i);
        if (!abstractComponent.ready()) {
            return Library.layoutForComponent(PLACEHOLDER);
        }
        return Library.layoutForComponent(abstractComponent);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.mComponents.size();
    }
}
