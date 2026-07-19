package com.voxel.simplesearchlauncher.search.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.evie.search.SearchPresenter;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class FeedbackSlide extends OptionSlide {
    private Activity mActivity;
    private int mNegativeIndex;
    private SearchPresenter mSearch;
    private SlideLayout mSlideLayout;

    public FeedbackSlide(Context context, SlideLayout slideLayout, SearchPresenter searchPresenter, Activity activity, int i) {
        super(context, slideLayout);
        this.mSlideLayout = slideLayout;
        this.mSearch = searchPresenter;
        this.mActivity = activity;
        this.mNegativeIndex = i;
        this.mTextView.setText(R.string.feedback_feedback_question);
        this.mPositiveButton.setText(R.string.feedback_feedback_positive);
        this.mNegativeButton.setText(R.string.feedback_feedback_negative);
        this.mPositiveButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.search.view.-$$Lambda$FeedbackSlide$UnN6fkGGHK2u-8u6owz5fj_91vs
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeedbackSlide.lambda$new$0(this.f$0, view);
            }
        });
        this.mNegativeButton.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.search.view.-$$Lambda$FeedbackSlide$2J4KbzeOGBpC7_qwr6_Q9pNfki4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FeedbackSlide.lambda$new$1(this.f$0, view);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(FeedbackSlide feedbackSlide, View view) {
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setData(Uri.parse("mailto:hello@evie.com?subject=Launcher Feedback"));
        intent.putExtra("android.intent.extra.EMAIL", "hello@evie.com");
        intent.putExtra("android.intent.extra.SUBJECT", "Launcher Feedback");
        feedbackSlide.mActivity.startActivity(intent);
        feedbackSlide.mSearch.removeCustomPresenter();
        AnalyticsHandler.getInstance().logEvent("ev_search_feedback_finished", new AnalyticsHandler.EventProp().add("type", "neg_enjoy_yes_feedback"));
    }

    public static /* synthetic */ void lambda$new$1(FeedbackSlide feedbackSlide, View view) {
        feedbackSlide.mSlideLayout.setDisplayedChild(feedbackSlide.mNegativeIndex);
        AnalyticsHandler.getInstance().logEvent("ev_search_feedback_finished", new AnalyticsHandler.EventProp().add("type", "neg_enjoy_no_feedback"));
    }
}
