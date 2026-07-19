package com.voxel.simplesearchlauncher.activity.onboarding;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.util.Property;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.voxel.launcher3.LauncherAppState;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.importer.ImportData;
import com.voxel.simplesearchlauncher.importer.ImporterInfo;
import com.voxel.simplesearchlauncher.importer.LauncherImportHelper;
import com.voxel.simplesearchlauncher.settings.LayoutSettingsManager;
import com.voxel.simplesearchlauncher.view.Slide;
import com.voxel.simplesearchlauncher.view.SlideLayout;
import is.shortcut.R;

/* JADX INFO: loaded from: classes.dex */
public class ImportIntroSlide extends Slide {
    private SlideLayout mSlideLayout;

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public void onEnteringSlide() {
    }

    public ImportIntroSlide(final Activity activity, final SlideLayout slideLayout, final ImportData importData, final ImporterInfo importerInfo, final int i, final LayoutSettingsManager layoutSettingsManager) {
        super(LayoutInflater.from(activity).inflate(R.layout.onboarding_import_intro_slide, (ViewGroup) slideLayout, false));
        this.mSlideLayout = slideLayout;
        TextView textView = (TextView) this.mView.findViewById(R.id.onboarding_import_intro_message);
        final Button button = (Button) this.mView.findViewById(R.id.onboarding_import_positive_button);
        final Button button2 = (Button) this.mView.findViewById(R.id.onboarding_import_negative_button);
        if (importerInfo != null) {
            textView.setText(activity.getResources().getString(R.string.onboarding_import_intro_message_single, importerInfo.label));
        }
        AnalyticsHandler.getInstance().logEvent("ev_onboard_import", null);
        button.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.-$$Lambda$ImportIntroSlide$C_pSSh4OTtgrQx4MvTH-IOhL4fE
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportIntroSlide.lambda$new$0(this.f$0, slideLayout, importerInfo, activity, layoutSettingsManager, i, view);
            }
        });
        button2.setOnClickListener(new View.OnClickListener() { // from class: com.voxel.simplesearchlauncher.activity.onboarding.-$$Lambda$ImportIntroSlide$51kRjDCPzZB5uiMt822cxYhw-Sk
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ImportIntroSlide.lambda$new$1(button, button2, importData, activity, layoutSettingsManager, view);
            }
        });
    }

    public static /* synthetic */ void lambda$new$0(ImportIntroSlide importIntroSlide, SlideLayout slideLayout, ImporterInfo importerInfo, Activity activity, LayoutSettingsManager layoutSettingsManager, int i, View view) {
        if (slideLayout.isAnimating()) {
            return;
        }
        if (importerInfo != null) {
            LauncherImportHelper.importItems(activity, importerInfo.importData, layoutSettingsManager);
            activity.getSharedPreferences(LauncherAppState.getSharedPreferencesKey(), 0).edit().putBoolean("launcher.first_run_did_auto_import", true).apply();
            activity.finish();
            return;
        }
        importIntroSlide.mSlideLayout.setDisplayedChild(i);
    }

    static /* synthetic */ void lambda$new$1(Button button, Button button2, ImportData importData, Activity activity, LayoutSettingsManager layoutSettingsManager, View view) {
        button.setOnClickListener(null);
        button2.setOnClickListener(null);
        if (importData != null && !importData.itemInfos.isEmpty() && !importData.screens.isEmpty()) {
            LauncherImportHelper.importItems(activity, importData, layoutSettingsManager);
        }
        activity.finish();
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideEnteringAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 0.0f, 1.0f);
        objectAnimatorOfFloat.setDuration(750L);
        animatorSet.play(objectAnimatorOfFloat);
        return animatorSet;
    }

    @Override // com.voxel.simplesearchlauncher.view.Slide
    public AnimatorSet getSlideExitingAnimation(SlideLayout slideLayout) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat(this.mView, (Property<View, Float>) View.ALPHA, 1.0f, 0.0f));
        return animatorSet;
    }
}
