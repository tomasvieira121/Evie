package com.evie.sidescreen.personalize.onboarding;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import butterknife.ButterKnife;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenActivity;
import com.evie.sidescreen.tiles.videos.PopupViewProvider;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.android.AndroidInjector;
import dagger.android.support.HasSupportFragmentInjector;

/* JADX INFO: loaded from: classes.dex */
public class PersonalizeOnboardingActivity extends SideScreenActivity implements HasSupportFragmentInjector {
    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewMetaData() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewProtobuf() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewSubType() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewTitle() {
        return null;
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    protected String getScreenViewType() {
        return "personalize-onboarding";
    }

    @Override // com.evie.sidescreen.SideScreenActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        getIntent().putExtra("com.evie.sidescreen.ActivityStarter.personalize_onboarding", true);
        onCreateInject();
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent.getBooleanExtra("analytics.send_tap_event", false)) {
            AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
            eventProp.add("item_type", intent.getStringExtra("analytics.item_type"));
            eventProp.add("analytics_proto", intent.getStringExtra("analytics.proto"));
            eventProp.add("screen_type", "notification");
            eventProp.add("impression_id", intent.getStringExtra("analytics.impression_id"));
            this.mAnalyticsHandler.logEvent("ev_ss_tap", eventProp);
        }
        setContentView(R.layout.ss_personalize_onboarding_activity);
        ButterKnife.bind(this);
    }

    @Override // com.evie.sidescreen.SideScreenActivity
    public PopupViewProvider getPopupViewProvider() {
        return new PopupViewProvider(null);
    }

    @Override // dagger.android.support.HasSupportFragmentInjector
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return getSupportFragmentInjector();
    }
}
