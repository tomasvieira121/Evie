package com.evie.screen;

import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import is.shortcut.R;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity_ViewBinding implements Unbinder {
    private SettingsActivity target;
    private View view7f0a0053;

    public SettingsActivity_ViewBinding(final SettingsActivity settingsActivity, View view) {
        this.target = settingsActivity;
        settingsActivity.mSettingsVersion = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_version, "field 'mSettingsVersion'", TextView.class);
        settingsActivity.mCommandText = (EditText) Utils.findRequiredViewAsType(view, R.id.command_text, "field 'mCommandText'", EditText.class);
        settingsActivity.mSettingsFeedback = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_feedback, "field 'mSettingsFeedback'", TextView.class);
        settingsActivity.mSettingsDisable = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_disable, "field 'mSettingsDisable'", TextView.class);
        settingsActivity.mNotification = (TextView) Utils.findRequiredViewAsType(view, R.id.notification, "field 'mNotification'", TextView.class);
        settingsActivity.mSettingsAutoplaySwitch = (CompoundButton) Utils.findRequiredViewAsType(view, R.id.autoplay_switch, "field 'mSettingsAutoplaySwitch'", CompoundButton.class);
        settingsActivity.mSettingsPrivacyPolicy = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_privacy_policy, "field 'mSettingsPrivacyPolicy'", TextView.class);
        settingsActivity.mSettingsTermsAndConditions = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_terms_and_conditions, "field 'mSettingsTermsAndConditions'", TextView.class);
        settingsActivity.mSettingsOpenSourceLicenses = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_open_source_licenses, "field 'mSettingsOpenSourceLicenses'", TextView.class);
        settingsActivity.mHiddenOptions = Utils.findRequiredView(view, R.id.hidden_options, "field 'mHiddenOptions'");
        settingsActivity.mStaging = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_staging, "field 'mStaging'", TextView.class);
        settingsActivity.mCrash = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_crash, "field 'mCrash'", TextView.class);
        settingsActivity.mAbTesting = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_ab_test, "field 'mAbTesting'", TextView.class);
        settingsActivity.mUserId = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_settings_user_id, "field 'mUserId'", TextView.class);
        settingsActivity.mSuperHiddenOptions = Utils.findRequiredView(view, R.id.super_hidden_options, "field 'mSuperHiddenOptions'");
        settingsActivity.mDebugDataUsage = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_debug_data_usage, "field 'mDebugDataUsage'", TextView.class);
        settingsActivity.mDebugRefreshTiming = (TextView) Utils.findRequiredViewAsType(view, R.id.sidescreen_debug_refresh_timing, "field 'mDebugRefreshTiming'", TextView.class);
        View viewFindRequiredView = Utils.findRequiredView(view, R.id.autoplay, "method 'onAutoplayClick'");
        this.view7f0a0053 = viewFindRequiredView;
        viewFindRequiredView.setOnClickListener(new DebouncingOnClickListener() { // from class: com.evie.screen.SettingsActivity_ViewBinding.1
            @Override // butterknife.internal.DebouncingOnClickListener
            public void doClick(View view2) {
                settingsActivity.onAutoplayClick();
            }
        });
    }

    @Override // butterknife.Unbinder
    public void unbind() {
        SettingsActivity settingsActivity = this.target;
        if (settingsActivity == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        settingsActivity.mSettingsVersion = null;
        settingsActivity.mCommandText = null;
        settingsActivity.mSettingsFeedback = null;
        settingsActivity.mSettingsDisable = null;
        settingsActivity.mNotification = null;
        settingsActivity.mSettingsAutoplaySwitch = null;
        settingsActivity.mSettingsPrivacyPolicy = null;
        settingsActivity.mSettingsTermsAndConditions = null;
        settingsActivity.mSettingsOpenSourceLicenses = null;
        settingsActivity.mHiddenOptions = null;
        settingsActivity.mStaging = null;
        settingsActivity.mCrash = null;
        settingsActivity.mAbTesting = null;
        settingsActivity.mUserId = null;
        settingsActivity.mSuperHiddenOptions = null;
        settingsActivity.mDebugDataUsage = null;
        settingsActivity.mDebugRefreshTiming = null;
        this.view7f0a0053.setOnClickListener(null);
        this.view7f0a0053 = null;
    }
}
