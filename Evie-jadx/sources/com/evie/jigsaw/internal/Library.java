package com.evie.jigsaw.internal;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.jigsaw.R;
import com.evie.jigsaw.components.actions.ActionRowComponent;
import com.evie.jigsaw.components.base.AbstractComponent;
import com.evie.jigsaw.components.containers.AbstractListComponent;
import com.evie.jigsaw.components.containers.EmptyComponent;
import com.evie.jigsaw.components.containers.StackComponent;
import com.evie.jigsaw.components.containers.VerticalListComponent;
import com.evie.jigsaw.components.content.DetailsComponent;
import com.evie.jigsaw.components.content.DialogComponent;
import com.evie.jigsaw.components.content.MediaComponent;
import com.evie.jigsaw.components.delimiters.HorizontalDelimiterComponent;
import com.evie.jigsaw.components.delimiters.VerticalDelimiterComponent;
import com.evie.jigsaw.components.navigation.BackComponent;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class Library {
    private static final Map<Integer, ViewHolderFactory> FACTORY_FOR_LAYOUT = new HashMap();
    private static final Map<Class<? extends AbstractComponent>, Integer> LAYOUT_FOR_TYPE = new HashMap();

    public static abstract class ViewHolderFactory {
        public abstract RecyclerView.ViewHolder create(View view);
    }

    public static RecyclerView.ViewHolder holderForLayout(int i, View view) {
        return FACTORY_FOR_LAYOUT.get(Integer.valueOf(i)).create(view);
    }

    public static int layoutForComponent(AbstractComponent<?> abstractComponent) {
        return LAYOUT_FOR_TYPE.get(abstractComponent.getClass()).intValue();
    }

    static {
        register(MediaComponent.class, R.layout.v2_component_media, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.1
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new MediaComponent.Holder(view);
            }
        });
        register(DetailsComponent.class, R.layout.v2_component_details, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.2
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new DetailsComponent.Holder(view);
            }
        });
        register(VerticalListComponent.class, R.layout.v2_component_vertical_list, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.3
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new AbstractListComponent.Holder(view);
            }
        });
        register(DialogComponent.class, R.layout.v2_component_dialog, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.4
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new DialogComponent.Holder(view);
            }
        });
        register(StackComponent.class, R.layout.v2_component_stack, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.5
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new StackComponent.Holder(view);
            }
        });
        register(EmptyComponent.class, R.layout.v2_component_empty, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.6
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new EmptyComponent.Holder(view);
            }
        });
        register(HorizontalDelimiterComponent.class, R.layout.v2_component_horizontal_delimiter, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.7
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new HorizontalDelimiterComponent.Holder(view);
            }
        });
        register(VerticalDelimiterComponent.class, R.layout.v2_component_vertical_delimiter, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.8
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new VerticalDelimiterComponent.Holder(view);
            }
        });
        register(ActionRowComponent.class, R.layout.v2_component_action_row, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.9
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new ActionRowComponent.Holder(view);
            }
        });
        register(BackComponent.class, R.layout.v2_component_back, new ViewHolderFactory() { // from class: com.evie.jigsaw.internal.Library.10
            @Override // com.evie.jigsaw.internal.Library.ViewHolderFactory
            public RecyclerView.ViewHolder create(View view) {
                return new BackComponent.Holder(view);
            }
        });
    }

    public static void register(Class<? extends AbstractComponent> cls, int i, ViewHolderFactory viewHolderFactory) {
        LAYOUT_FOR_TYPE.put(cls, Integer.valueOf(i));
        FACTORY_FOR_LAYOUT.put(Integer.valueOf(i), viewHolderFactory);
    }
}
