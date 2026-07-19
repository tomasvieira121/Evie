package com.evie.sidescreen.tiles.yelp;

import android.view.View;
import android.widget.TextView;
import butterknife.BindView;
import com.evie.sidescreen.R;
import com.evie.sidescreen.mvp.MvpViewHolder;
import com.facebook.drawee.view.SimpleDraweeView;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import java.util.Currency;
import java.util.Locale;
import org.schema.evie.yelp.YelpAction;

/* JADX INFO: loaded from: classes.dex */
public class YelpSingleBusinessViewHolder extends MvpViewHolder<YelpSingleBusinessPresenter> {
    public static final int HERO_ID = R.layout.ss_yelp_single_business_hero;
    public static final int ROW_ID = R.layout.ss_yelp_single_business_row;

    @BindView
    TextView mDistance;

    @BindView
    SimpleDraweeView mImage;

    @BindView
    TextView mPrice;

    @BindView
    YelpRatingContainer mRatingContainer;

    @BindView
    TextView mSubtitle;

    @BindView
    TextView mTitle;

    @BindView
    YelpActionContainer mYelpActionContainer;

    public YelpSingleBusinessViewHolder(final View view) {
        super(view);
        view.setOnClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.tiles.yelp.-$$Lambda$YelpSingleBusinessViewHolder$AXXkmj0dMTkscPF4jVJgbO-lWnc
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ((YelpSingleBusinessPresenter) this.f$0.mPresenter).onItemClick(view2);
            }
        });
        YelpActionContainer yelpActionContainer = this.mYelpActionContainer;
        if (yelpActionContainer != null) {
            yelpActionContainer.setOnActionClick(new View.OnClickListener() { // from class: com.evie.sidescreen.tiles.yelp.-$$Lambda$YelpSingleBusinessViewHolder$c-nazfbTeXsKaeeZ_rdj9QsmPPE
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ((YelpSingleBusinessPresenter) this.f$0.mPresenter).onActionClicked(view);
                }
            });
        }
    }

    public void setTitle(String str) {
        this.mTitle.setText(str);
    }

    public void setSubtitle(String str) {
        this.mSubtitle.setText(str);
    }

    public void setDistance(double d) {
        this.mDistance.setText(this.itemView.getResources().getString(R.string.ss_distance_mi, LocationHandler.convertToMilesString(d)));
    }

    public void setPrice(int i) {
        Locale locale = this.itemView.getContext().getResources().getConfiguration().locale;
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < i; i2++) {
            sb.append(Currency.getInstance(locale).getSymbol(locale));
        }
        this.mPrice.setText(sb.toString());
    }

    public void setRating(float f, int i) {
        this.mRatingContainer.showYelpRating(f, i);
        this.mRatingContainer.setVisibility(0);
    }

    public void setImageUrl(String str) {
        this.mImage.setImageURI(str);
    }

    public void hideRating() {
        this.mRatingContainer.setVisibility(4);
    }

    public void setAction(YelpAction yelpAction) {
        YelpActionContainer yelpActionContainer = this.mYelpActionContainer;
        if (yelpActionContainer == null) {
            return;
        }
        yelpActionContainer.setAction(yelpAction);
    }
}
