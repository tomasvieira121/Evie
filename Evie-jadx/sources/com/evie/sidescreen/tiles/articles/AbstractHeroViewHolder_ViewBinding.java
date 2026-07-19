package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.view.View;
import butterknife.Unbinder;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class AbstractHeroViewHolder_ViewBinding implements Unbinder {
    @Override // butterknife.Unbinder
    public void unbind() {
    }

    @Deprecated
    public AbstractHeroViewHolder_ViewBinding(AbstractHeroViewHolder abstractHeroViewHolder, View view) {
        this(abstractHeroViewHolder, view.getContext());
    }

    public AbstractHeroViewHolder_ViewBinding(AbstractHeroViewHolder abstractHeroViewHolder, Context context) {
        abstractHeroViewHolder.sideMargin = context.getResources().getDimensionPixelSize(R.dimen.ss_margin_side);
    }
}
