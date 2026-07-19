package com.evie.sidescreen.frequentlyused;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import butterknife.BindView;
import butterknife.OnClick;
import butterknife.internal.DebouncingOnClickListener;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class FrequentlyUsedViewHolder extends MvpViewHolder<FrequentlyUsedPresenter> {

    @BindView
    ViewGroup mContent;
    private List<ImageView> mIcons;

    /* JADX INFO: renamed from: ID */
    public static final int f330ID = R.layout.ss_frequently_used;
    private static final int TAG_TAG = R.id.tag;
    private static final int DATA_TAG = R.id.data;

    public FrequentlyUsedViewHolder(View view) {
        super(view);
        this.mIcons = new ArrayList();
        for (int i = 0; i < this.mContent.getChildCount(); i++) {
            this.mIcons.add((ImageView) this.mContent.getChildAt(i).findViewById(R.id.icon));
        }
    }

    @OnClick
    public void onLinkTap() {
        ((FrequentlyUsedPresenter) this.mPresenter).onLinkTap();
    }

    public void setIconTexts(List<FrequentlyUsedPresenter.IconText> list) {
        int i = 0;
        while (i < list.size() && i < this.mIcons.size()) {
            FrequentlyUsedPresenter.IconText iconText = list.get(i);
            ImageView imageView = this.mIcons.get(i);
            FrequentlyUsedPresenter.IconText iconText2 = (FrequentlyUsedPresenter.IconText) imageView.getTag(DATA_TAG);
            imageView.setTag(DATA_TAG, iconText);
            imageView.setTag(TAG_TAG, iconText.tag);
            if (iconText2 == null || !iconText2.iconUri.equals(iconText.iconUri)) {
                imageView.setImageURI(iconText.iconUri);
            }
            imageView.setOnClickListener(makeIconListener(i));
            imageView.setVisibility(0);
            i++;
        }
        while (i < this.mIcons.size()) {
            this.mIcons.get(i).setVisibility(8);
            i++;
        }
    }

    private View.OnClickListener makeIconListener(final int i) {
        return new DebouncingOnClickListener() { // from class: com.evie.sidescreen.frequentlyused.FrequentlyUsedViewHolder.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view) {
                ((FrequentlyUsedPresenter) FrequentlyUsedViewHolder.this.mPresenter).onIconTap(view, view.getTag(FrequentlyUsedViewHolder.TAG_TAG), i);
            }
        };
    }
}
