package com.evie.jigsaw.components.containers;

import android.content.Context;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.adapters.spacing.SpacingStrategy;
import com.evie.jigsaw.adapters.spacing.SpacingType;
import com.evie.jigsaw.adapters.spacing.VerticalListSpacingStrategy;
import com.evie.jigsaw.components.delimiters.HorizontalDelimiterComponent;

/* JADX INFO: loaded from: classes.dex */
public class VerticalListComponent extends AbstractListComponent {
    private HorizontalDelimiterComponent delimiter;

    public VerticalListComponent setDelimiter(HorizontalDelimiterComponent horizontalDelimiterComponent) {
        this.delimiter = horizontalDelimiterComponent;
        return this;
    }

    @Override // com.evie.jigsaw.components.containers.AbstractListComponent
    public HorizontalDelimiterComponent getDelimiter() {
        return this.delimiter;
    }

    @Override // com.evie.jigsaw.components.containers.AbstractListComponent, com.evie.jigsaw.components.base.AbstractComponent
    public void bind(Context context, AbstractListComponent.Holder holder) {
        super.bind(context, holder);
        holder.items.setScrollingTouchSlop(1);
        if (C04061.$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType[getSpacing().ordinal()] != 1) {
            return;
        }
        ((ViewGroup.MarginLayoutParams) holder.title.getLayoutParams()).topMargin = getSpace(context);
    }

    /* JADX INFO: renamed from: com.evie.jigsaw.components.containers.VerticalListComponent$1 */
    static /* synthetic */ class C04061 {
        static final /* synthetic */ int[] $SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType = new int[SpacingType.values().length];

        static {
            try {
                $SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType[SpacingType.regular.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
        }
    }

    @Override // com.evie.jigsaw.components.containers.AbstractListComponent
    protected RecyclerView.LayoutManager getManager(Context context) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 1, false);
        linearLayoutManager.setAutoMeasureEnabled(true);
        return linearLayoutManager;
    }

    @Override // com.evie.jigsaw.components.containers.AbstractListComponent
    protected SpacingStrategy getSpacingStrategy(Context context) {
        if (C04061.$SwitchMap$com$evie$jigsaw$adapters$spacing$SpacingType[getSpacing().ordinal()] == 1) {
            return new VerticalListSpacingStrategy(getSpace(context));
        }
        return SpacingStrategy.NO_SPACING;
    }

    private int getSpace(Context context) {
        return context.getResources().getDimensionPixelSize(R.dimen.three_quarter_spacing);
    }
}
