package com.voxel.simplesearchlauncher.settings;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import com.voxel.simplesearchlauncher.activity.SafeActivityStarter;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import is.shortcut.R;

/* JADX INFO: loaded from: classes2.dex */
public class FeedbackFragment extends Fragment {
    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.settings_activity_feedback_fragment, viewGroup, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        SettingsTextViewHolder settingsTextViewHolder = new SettingsTextViewHolder(view.findViewById(R.id.join_community));
        SettingsTextViewHolder settingsTextViewHolder2 = new SettingsTextViewHolder(view.findViewById(R.id.rate_app));
        settingsTextViewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$FeedbackFragment$dwIKanqFyyVyYIGLqQ4GG7kr-1Y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FeedbackFragment.lambda$onViewCreated$0(this.f$0, view2);
            }
        });
        settingsTextViewHolder.mLabel.setText(R.string.app_settings_item_community_text);
        settingsTextViewHolder.mSubLabel.setText(R.string.app_settings_item_community_subtext);
        settingsTextViewHolder2.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.settings.-$$Lambda$FeedbackFragment$T5VUPyxHa85fV7klGic0rE6u2dk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FeedbackFragment.lambda$onViewCreated$1(this.f$0, view2);
            }
        });
        settingsTextViewHolder2.mLabel.setText(R.string.app_settings_item_rating);
        settingsTextViewHolder2.mSubLabel.setText(R.string.app_settings_item_rating_subtext);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$onViewCreated$0(FeedbackFragment feedbackFragment, View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268468224);
        try {
            FragmentActivity activity = feedbackFragment.getActivity();
            intent.setData(Uri.parse("https://www.reddit.com/r/EvieLauncher/"));
            if (activity instanceof SafeActivityStarter) {
                ((SafeActivityStarter) activity).startActivitySafely(intent);
            } else {
                activity.startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void lambda$onViewCreated$1(FeedbackFragment feedbackFragment, View view) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.addFlags(268468224);
        try {
            FragmentActivity activity = feedbackFragment.getActivity();
            intent.setData(Uri.parse("market://details?id=" + activity.getPackageName()));
            if (activity instanceof SafeActivityStarter) {
                ((SafeActivityStarter) activity).startActivitySafely(intent);
            } else {
                activity.startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
            FragmentActivity activity2 = feedbackFragment.getActivity();
            intent.setData(Uri.parse("https://play.google.com/store/apps/details?id=" + activity2.getPackageName()));
            if (activity2 instanceof SafeActivityStarter) {
                ((SafeActivityStarter) activity2).startActivitySafely(intent);
            } else {
                activity2.startActivity(intent);
            }
        }
        AnalyticsHandler.getInstance().logEvent("ev_settings_play_store_review", null);
    }
}
