package com.evie.jigsaw.components.actions;

import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import com.evie.jigsaw.services.shortcuts.ShortcutService;

/* JADX INFO: loaded from: classes.dex */
public final class AbstractActionComponent_MembersInjector<VH extends RecyclerView.ViewHolder> {
    public static <VH extends RecyclerView.ViewHolder> void injectShortcutService(AbstractActionComponent<VH> abstractActionComponent, ShortcutService shortcutService) {
        abstractActionComponent.shortcutService = shortcutService;
    }
}
