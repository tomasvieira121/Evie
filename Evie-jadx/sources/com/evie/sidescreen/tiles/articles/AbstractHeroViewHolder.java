package com.evie.sidescreen.tiles.articles;

import android.view.View;
import butterknife.BindDimen;
import com.evie.sidescreen.tiles.TilePresenter;
import com.evie.sidescreen.tiles.TileViewHolder;

/* JADX INFO: loaded from: classes.dex */
public class AbstractHeroViewHolder<T extends TilePresenter> extends TileViewHolder<T> {

    @BindDimen
    int sideMargin;

    public AbstractHeroViewHolder(View view) {
        super(view);
    }

    public void setTopHeroMode(boolean z) {
        if (z) {
            this.itemView.setPadding(0, 0, 0, 0);
            return;
        }
        View view = this.itemView;
        int i = this.sideMargin;
        view.setPadding(i, 0, i, i);
    }
}
