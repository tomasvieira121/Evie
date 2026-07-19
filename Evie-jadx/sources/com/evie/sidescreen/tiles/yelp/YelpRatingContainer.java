package com.evie.sidescreen.tiles.yelp;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.evie.sidescreen.R;

/* JADX INFO: loaded from: classes.dex */
public class YelpRatingContainer extends LinearLayout {
    TextView mNumberOfReviewsText;
    ImageView mRatingIcon;

    public YelpRatingContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.yelp_rating_container, (ViewGroup) this, true);
        this.mRatingIcon = (ImageView) findViewById(R.id.rating_icon);
        this.mNumberOfReviewsText = (TextView) findViewById(R.id.number_of_reviews_text);
        if (isInEditMode()) {
            showYelpRating(4.5f, 707);
        }
    }

    public void showYelpRating(float f, int i) {
        setVisibility(0);
        this.mRatingIcon.setVisibility(0);
        this.mRatingIcon.setImageResource(getYelpRatingResource(f));
        handleNumberOfReviews(i);
    }

    private int getYelpRatingResource(float f) {
        int iRound = Math.round(f * 2.0f) * 5;
        if (iRound == 0) {
            return R.drawable.yelp_0_stars;
        }
        if (iRound == 10) {
            return R.drawable.yelp_1_stars;
        }
        if (iRound == 15) {
            return R.drawable.yelp_1_5_stars;
        }
        if (iRound == 20) {
            return R.drawable.yelp_2_stars;
        }
        if (iRound == 25) {
            return R.drawable.yelp_2_5_stars;
        }
        if (iRound == 30) {
            return R.drawable.yelp_3_stars;
        }
        if (iRound == 35) {
            return R.drawable.yelp_3_5_stars;
        }
        if (iRound == 40) {
            return R.drawable.yelp_4_stars;
        }
        if (iRound == 45) {
            return R.drawable.yelp_4_5_stars;
        }
        if (iRound == 50) {
            return R.drawable.yelp_5_stars;
        }
        throw new IllegalArgumentException("Invalid rating");
    }

    private void handleNumberOfReviews(int i) {
        String quantityString = getResources().getQuantityString(R.plurals.ss_number_of_reviews, i);
        this.mNumberOfReviewsText.setVisibility(0);
        this.mNumberOfReviewsText.setText(String.format(quantityString, Integer.valueOf(i)));
    }
}
