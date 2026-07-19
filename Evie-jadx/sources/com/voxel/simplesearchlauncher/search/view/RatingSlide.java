package com.voxel.simplesearchlauncher.search.view;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.evie.search.SearchPresenter;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class RatingSlide extends OptionSlide {
    private Activity mActivity;
    private int mNegativeIndex;
    private SearchPresenter mSearch;
    private SlideLayout mSlideLayout;

    public RatingSlide(Context context, SlideLayout slideLayout, SearchPresenter searchPresenter, Activity activity, int i) {
        super(context, slideLayout);
        this.mSlideLayout = slideLayout;
        this.mSearch = searchPresenter;
        this.mActivity = activity;
        this.mNegativeIndex = i;
        this.mTextView.setText(R.string.feedback_rating_app_question);
        this.mPositiveButton.setText(R.string.feedback_rating_app_positive);
        this.mNegativeButton.setText(R.string.feedback_rating_app_negative);
        this.mPositiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.search.view.-$$Lambda$RatingSlide$7PKofygsuSUeafLdZ_nYMvIICkY
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RatingSlide.lambda$new$0(this.f$0, view);
            }
        });
        this.mNegativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.search.view.-$$Lambda$RatingSlide$3CBN27ZRdIvstHQRWQWblWu1SZE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RatingSlide.lambda$new$1(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(RatingSlide ratingSlide, View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268468224);
        try {
            intent.setData(Uri.parse("market://details?id=" + ratingSlide.mActivity.getPackageName()));
            ratingSlide.mActivity.getApplicationContext().startActivity(intent);
        } catch (ActivityNotFoundException unused) {
            intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=" + ratingSlide.mActivity.getPackageName()));
            ratingSlide.mActivity.getApplicationContext().startActivity(intent);
        }
        ratingSlide.mSearch.removeCustomPresenter();
        AnalyticsHandler.getInstance().logEvent("ev_search_feedback_finished", new AnalyticsHandler.EventProp().add("type", "pos_enjoy_yes_rating"));
    }

    public static /* synthetic */ void lambda$new$1(RatingSlide ratingSlide, View view) {
        ratingSlide.mSlideLayout.setDisplayedChild(ratingSlide.mNegativeIndex);
        AnalyticsHandler.getInstance().logEvent("ev_search_feedback_finished", new AnalyticsHandler.EventProp().add("type", "pos_enjoy_no_rating"));
    }
}
