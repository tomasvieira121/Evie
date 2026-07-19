package com.evie.screen;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.MenuItem;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import com.evie.common.data.Lce;
import com.evie.common.licenses.LicenseDialogFragment;
import com.evie.common.settings.AbTestActivity;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.sidescreen.SideScreenSharedPreferencesModel;
import com.google.firebase.iid.FirebaseInstanceId;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import dagger.android.AndroidInjection;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Predicate;
import is.shortcut.BuildConfig;
import is.shortcut.R;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.util.List;
import java.util.UUID;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class SettingsActivity extends AppCompatActivity {

    @BindView
    TextView mAbTesting;
    AnalyticsHandler mAnalyticsHandler;

    @BindView
    EditText mCommandText;

    @BindView
    TextView mCrash;

    @BindView
    TextView mDebugDataUsage;

    @BindView
    TextView mDebugRefreshTiming;

    @BindView
    View mHiddenOptions;

    @BindView
    TextView mNotification;

    @BindView
    CompoundButton mSettingsAutoplaySwitch;

    @BindView
    TextView mSettingsDisable;

    @BindView
    TextView mSettingsFeedback;

    @BindView
    TextView mSettingsOpenSourceLicenses;

    @BindView
    TextView mSettingsPrivacyPolicy;

    @BindView
    TextView mSettingsTermsAndConditions;

    @BindView
    TextView mSettingsVersion;
    private SharedPreferences mSharedPreferences;
    SideScreenRelatedContentModel mSideScreenRelatedContentModel;
    SideScreenSharedPreferencesModel mSideScreenSharedPreferencesModel;

    @BindView
    TextView mStaging;

    @BindView
    View mSuperHiddenOptions;
    private Disposable mTokenRegistrationDisposable;

    @BindView
    TextView mUserId;
    private int mVersionCount;
    private final View.OnClickListener mOnClickVersion = new View.OnClickListener() { // from class: com.evie.screen.SettingsActivity.1
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SettingsActivity.access$008(SettingsActivity.this);
            if (SettingsActivity.this.mVersionCount == 15) {
                SettingsActivity.this.mCommandText.setVisibility(0);
                SettingsActivity.this.mCommandText.addTextChangedListener(new TextWatcher() { // from class: com.evie.screen.SettingsActivity.1.1
                    @Override // android.text.TextWatcher
                    public void afterTextChanged(Editable editable) {
                    }

                    @Override // android.text.TextWatcher
                    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    }

                    @Override // android.text.TextWatcher
                    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                        String sha1Hash = SettingsActivity.getSha1Hash(charSequence.toString());
                        if ("3e2bc6af999489603347e2fd99a14d65ffc927d0".equals(sha1Hash)) {
                            SettingsActivity.this.mCommandText.setVisibility(8);
                            SettingsActivity.this.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_SUPER_HIDDEN_OPTIONS_VISIBLE", true).apply();
                            SettingsActivity.this.handleHiddenOptions();
                            SettingsActivity.this.handleSuperHiddenOptions();
                            return;
                        }
                        if ("91256afc6ee43ebe72a2d1db1f08a3b6b2e0688b".equals(sha1Hash)) {
                            SettingsActivity.this.mCommandText.setVisibility(8);
                            SettingsActivity.this.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_HIDDEN_OPTIONS_VISIBLE", true).apply();
                            SettingsActivity.this.handleHiddenOptions();
                        } else if (charSequence.toString().contains("\n")) {
                            SettingsActivity.this.mCommandText.setVisibility(8);
                        }
                    }
                });
            }
        }
    };
    private final View.OnClickListener mOnClickFeedback = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$RoPzFtUaj7JOU-0dp-sG3FQ3nKg
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.lambda$new$0(this.f$0, view);
        }
    };
    private final View.OnClickListener mOnClickDisable = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$KsdkMl9qirBVt8ZalYVj0AtS9Cs
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.lambda$new$1(this.f$0, view);
        }
    };
    private final View.OnClickListener mOnClickPrivacyPolicy = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$b1hVV_WkZwNKi_PxsAvx_b8L-VQ
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            this.f$0.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.verizon.com/about/privacy/AppFlash-privacy-policy")));
        }
    };
    private final View.OnClickListener mOnClickTermsAndConditions = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$F-okk9jyJD1wEtD4v04dJRKEVjM
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity settingsActivity = this.f$0;
            settingsActivity.startActivity(new Intent(settingsActivity, (Class<?>) TermsAndConditionsActivity.class));
        }
    };
    private final View.OnClickListener mOnClickOpenSourceLicenses = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$LNlCJXhzAWT7dWUFho8QLqkzkDA
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            LicenseDialogFragment.newInstance(R.raw.notice).show(this.f$0.getFragmentManager(), "notice");
        }
    };
    private final View.OnClickListener mOnClickStaging = new View.OnClickListener() { // from class: com.evie.screen.SettingsActivity.2
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !SettingsActivity.this.mSharedPreferences.getBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", false);
            SettingsActivity.this.mSharedPreferences.edit().putBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", z).apply();
            Toast.makeText(SettingsActivity.this, z ? "Switching to STAGING and restarting AppFlash..." : "Switching to PRODUCTION and restarting AppFlash...", 0).show();
        }
    };
    private final View.OnClickListener mOnClickCrash = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$cKIOCc0o5npAfqNHWyz3utSZMP8
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.lambda$new$5(view);
        }
    };
    private final View.OnClickListener mOnClickAbTesting = new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$JZBLTiKtbVbfFGZe5Nm1fNTQ-Ys
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            SettingsActivity.lambda$new$6(this.f$0, view);
        }
    };
    private final View.OnClickListener mOnClickUserId = new ViewOnClickListenerC04473();
    private final View.OnClickListener mOnClickDebugDataUsage = new View.OnClickListener() { // from class: com.evie.screen.SettingsActivity.4
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !SettingsActivity.this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_DATA_USAGE", false);
            SettingsActivity.this.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_DATA_USAGE", z).apply();
            Toast.makeText(SettingsActivity.this, z ? "ENABLING data usage debug and restarting AppFlash..." : "DISABLING data usage debug and restarting AppFlash...", 0).show();
        }
    };
    private final View.OnClickListener mOnClickDebugRefreshTiming = new View.OnClickListener() { // from class: com.evie.screen.SettingsActivity.5
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z = !SettingsActivity.this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT", false);
            SettingsActivity.this.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT", z).apply();
            Toast.makeText(SettingsActivity.this, z ? "ENABLING debug timer for tiles section refresh and restarting AppFlash..." : "DISABLING debug timer for tiles section refresh restarting AppFlash...", 0).show();
        }
    };

    static /* synthetic */ int access$008(SettingsActivity settingsActivity) {
        int i = settingsActivity.mVersionCount;
        settingsActivity.mVersionCount = i + 1;
        return i;
    }

    public static /* synthetic */ void lambda$new$0(SettingsActivity settingsActivity, View view) {
        String string = settingsActivity.getResources().getText(R.string.settings_item_feedback_email).toString();
        Intent intent = new Intent("android.intent.action.SENDTO");
        intent.setType("text/plain");
        intent.setData(Uri.parse("mailto:" + string + "?subject=AppFlash feedback"));
        intent.putExtra("android.intent.extra.EMAIL", string);
        intent.putExtra("android.intent.extra.SUBJECT", "AppFlash feedback");
        settingsActivity.startActivity(intent);
    }

    public static /* synthetic */ void lambda$new$1(SettingsActivity settingsActivity, View view) {
        Intent disableIntent = settingsActivity.getDisableIntent();
        if (disableIntent != null) {
            settingsActivity.startActivity(disableIntent);
        }
    }

    @OnClick
    public void onAutoplayClick() {
        CompoundButton compoundButton = this.mSettingsAutoplaySwitch;
        compoundButton.setChecked(!compoundButton.isChecked());
    }

    private Intent getDisableIntent() {
        Intent intent = (Intent) getIntent().getParcelableExtra("EXTRA_SETTINGS_ACTIVITY_LAUNCH_INTENT");
        if (intent != null) {
            return intent;
        }
        Intent intentWithAction = getIntentWithAction(null, "com.lge.launcher3.intent.action.SHOW_SETTING");
        if (isValidIntent(intentWithAction)) {
            return intentWithAction;
        }
        Intent intentWithClassName = getIntentWithClassName("com.android.settings", "com.android.settings.Settings$ZteAppFlashSettingsActivity");
        if (isValidIntent(intentWithClassName)) {
            return intentWithClassName;
        }
        Intent intentWithAction2 = getIntentWithAction(getIntent().getStringExtra("EXTRA_LAUNCHER_PACKAGE_NAME"), "android.intent.action.APPLICATION_PREFERENCES");
        if (isValidIntent(intentWithAction2)) {
            return intentWithAction2;
        }
        return null;
    }

    private Intent getIntentWithAction(String str, String str2) {
        Intent intent = new Intent(str2);
        intent.setFlags(268468224);
        if (str != null) {
            intent.setPackage(str);
        }
        return intent;
    }

    private Intent getIntentWithClassName(String str, String str2) {
        Intent intent = new Intent();
        intent.setFlags(268468224);
        intent.setClassName(str, str2);
        if (str != null) {
            intent.setPackage(str);
        }
        return intent;
    }

    static /* synthetic */ void lambda$new$5(View view) {
        throw new IllegalStateException("Forcing crash");
    }

    public static /* synthetic */ void lambda$new$6(SettingsActivity settingsActivity, View view) {
        Intent intent = new Intent();
        intent.setClass(settingsActivity, AbTestActivity.class);
        settingsActivity.startActivity(intent);
    }

    /* JADX INFO: renamed from: com.evie.screen.SettingsActivity$3 */
    class ViewOnClickListenerC04473 implements View.OnClickListener {
        ViewOnClickListenerC04473() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String distinctUserId = SettingsActivity.this.mAnalyticsHandler.getDistinctUserId();
            final EditText editText = new EditText(SettingsActivity.this);
            editText.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
            editText.setHint(distinctUserId);
            SettingsActivity.this.copyStringToClipboard("userID", distinctUserId);
            new AlertDialog.Builder(SettingsActivity.this).setTitle("Override user ID").setView(editText).setNegativeButton("Cancel", (DialogInterface.OnClickListener) null).setPositiveButton("Set", new DialogInterface.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$3$FfwbmfqI6b9KtWppbKdgwxFjUOE
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    SettingsActivity.ViewOnClickListenerC04473.lambda$onClick$2(this.f$0, editText, dialogInterface, i);
                }
            }).show();
        }

        public static /* synthetic */ void lambda$onClick$2(final ViewOnClickListenerC04473 viewOnClickListenerC04473, EditText editText, DialogInterface dialogInterface, int i) {
            String string = editText.getText().toString();
            if (TextUtils.isEmpty(string)) {
                string = UUID.randomUUID().toString();
            }
            AnalyticsHandler.getInstance().saveDistinctUserId(string);
            Toast.makeText(SettingsActivity.this, "User ID = " + string, 0).show();
            SettingsActivity.this.copyStringToClipboard("userID", string);
            SettingsActivity.this.mSideScreenSharedPreferencesModel.setFirebaseCloudMessagingRegistrationToken(null);
            FirebaseInstanceId firebaseInstanceId = FirebaseInstanceId.getInstance();
            if (firebaseInstanceId == null || firebaseInstanceId.getToken() == null) {
                return;
            }
            final String token = firebaseInstanceId.getToken();
            SettingsActivity settingsActivity = SettingsActivity.this;
            settingsActivity.mTokenRegistrationDisposable = settingsActivity.mSideScreenRelatedContentModel.registerFirebaseToken(token).filter(new Predicate() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$3$izAMiXN72VoF2TdYoZrpzDZ26j0
                @Override // io.reactivex.functions.Predicate
                public final boolean test(Object obj) {
                    return SettingsActivity.ViewOnClickListenerC04473.lambda$null$0((Lce) obj);
                }
            }).subscribe(new Consumer() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$3$xgDbB863i2ujSec6tNoY9aAWdDE
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) throws Exception {
                    SettingsActivity.ViewOnClickListenerC04473.lambda$null$1(this.f$0, token, (Lce) obj);
                }
            });
        }

        static /* synthetic */ boolean lambda$null$0(Lce lce) throws Exception {
            return !lce.isLoading();
        }

        public static /* synthetic */ void lambda$null$1(ViewOnClickListenerC04473 viewOnClickListenerC04473, String str, Lce lce) throws Exception {
            if (lce.isError()) {
                Timber.m553e("Error reporting token, %s", lce.getErrorData().getMessage());
            } else {
                Timber.m553e("Success", new Object[0]);
                SettingsActivity.this.mSideScreenSharedPreferencesModel.setFirebaseCloudMessagingRegistrationToken(str);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyStringToClipboard(String str, String str2) {
        ((ClipboardManager) getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str, str2));
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        AndroidInjection.inject(this);
        super.onCreate(bundle);
        this.mSharedPreferences = getSharedPreferences("com.voxel.launcher3.prefs", 0);
        setContentView(R.layout.sidescreen_settings_activity);
        ButterKnife.bind(this);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
        this.mSettingsVersion.setText(getResources().getString(R.string.settings_item_version, BuildConfig.VERSION_NAME));
        this.mSettingsVersion.setOnClickListener(this.mOnClickVersion);
        if (canHandleDisableIntent()) {
            this.mSettingsDisable.setOnClickListener(this.mOnClickDisable);
        } else {
            this.mSettingsDisable.setVisibility(8);
        }
        this.mSettingsFeedback.setOnClickListener(this.mOnClickFeedback);
        this.mSettingsTermsAndConditions.setOnClickListener(this.mOnClickTermsAndConditions);
        this.mSettingsPrivacyPolicy.setOnClickListener(this.mOnClickPrivacyPolicy);
        this.mSettingsOpenSourceLicenses.setOnClickListener(this.mOnClickOpenSourceLicenses);
        this.mSettingsAutoplaySwitch.setChecked(this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO", false));
        this.mSettingsAutoplaySwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$fB6vSQdypSuBPMJRN7KslEQf7m8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingsActivity.lambda$onCreate$9(this.f$0, compoundButton, z);
            }
        });
        this.mNotification.setOnClickListener(new View.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$lzASTZObd-CUmRqnNCdGYmBQ32s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsActivity.lambda$onCreate$10(this.f$0, view);
            }
        });
        if (this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_SUPER_HIDDEN_OPTIONS_VISIBLE", false)) {
            handleHiddenOptions();
            handleSuperHiddenOptions();
        } else if (this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_HIDDEN_OPTIONS_VISIBLE", false)) {
            handleHiddenOptions();
        }
        if (this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_SETTINGS_DISPLAYED", false)) {
            return;
        }
        this.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_SETTINGS_DISPLAYED", true).apply();
    }

    public static /* synthetic */ void lambda$onCreate$9(final SettingsActivity settingsActivity, CompoundButton compoundButton, final boolean z) {
        if (z) {
            new AlertDialog.Builder(settingsActivity).setTitle(R.string.settings_autoplay_videos_dialog_title).setMessage(R.string.settings_autoplay_videos_dialog_message).setNegativeButton(R.string.settings_autoplay_videos_dialog_negative, new DialogInterface.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$CVl6RXsDbKylCpbYSkQhNENJXic
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.mSettingsAutoplaySwitch.setChecked(false);
                }
            }).setPositiveButton(R.string.settings_autoplay_videos_dialog_positive, new DialogInterface.OnClickListener() { // from class: com.evie.screen.-$$Lambda$SettingsActivity$cjBNERFYgmhy1S0Mm24Itg4mel8
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f$0.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO", z).apply();
                }
            }).show();
        } else {
            settingsActivity.mSharedPreferences.edit().putBoolean("com.evie.screen.SettingsActivity.PREF_AUTOPLAY_VIDEO", z).apply();
        }
    }

    public static /* synthetic */ void lambda$onCreate$10(SettingsActivity settingsActivity, View view) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", settingsActivity.getPackageName());
        intent.putExtra("app_uid", settingsActivity.getApplicationInfo().uid);
        intent.putExtra("android.provider.extra.APP_PACKAGE", settingsActivity.getPackageName());
        settingsActivity.startActivity(intent);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        this.mAnalyticsHandler.startScreenView("settings", null, null, null, null);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        Disposable disposable = this.mTokenRegistrationDisposable;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    private boolean canHandleDisableIntent() {
        return getDisableIntent() != null;
    }

    private boolean isValidIntent(Intent intent) {
        List<ResolveInfo> listQueryIntentActivities = getPackageManager().queryIntentActivities(intent, 0);
        return listQueryIntentActivities != null && listQueryIntentActivities.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleHiddenOptions() {
        this.mHiddenOptions.setVisibility(0);
        this.mStaging.setOnClickListener(this.mOnClickStaging);
        this.mCrash.setOnClickListener(this.mOnClickCrash);
        this.mAbTesting.setOnClickListener(this.mOnClickAbTesting);
        this.mUserId.setOnClickListener(this.mOnClickUserId);
        if (this.mSharedPreferences.getBoolean("com.voxel.simplesearchlauncher.dagger.module.JigsawModule.PREF_ENABLE_CONTENT_STAGING", false)) {
            this.mStaging.setText("Pointing to STAGING tap to toggle and restart AppFlash");
        } else {
            this.mStaging.setText("Pointing to PRODUCTION tap to toggle and restart AppFlash");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleSuperHiddenOptions() {
        this.mSuperHiddenOptions.setVisibility(0);
        this.mDebugDataUsage.setOnClickListener(this.mOnClickDebugDataUsage);
        if (this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_DATA_USAGE", false)) {
            this.mDebugDataUsage.setText("Data usage debug is ENABLED tap to toggle and restart AppFlash");
        } else {
            this.mDebugDataUsage.setText("Data usage debug is DISABLED tap to toggle and restart AppFlash");
        }
        this.mDebugRefreshTiming.setOnClickListener(this.mOnClickDebugRefreshTiming);
        if (this.mSharedPreferences.getBoolean("com.evie.screen.SettingsActivity.PREF_DEBUG_TILES_REFRESH_TIME_LIMIT", false)) {
            this.mDebugRefreshTiming.setText("Tiles refresh fast timer for debug is ENABLED. tap to toggle and restart AppFlash");
        } else {
            this.mDebugRefreshTiming.setText("Tiles refresh fast timer for debug is DISABLED. tap to toggle and restart AppFlash");
        }
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    public static String getSha1Hash(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
            messageDigest.update(bytes, 0, bytes.length);
            return convertToHex(messageDigest.digest());
        } catch (Exception unused) {
            return null;
        }
    }

    private static String convertToHex(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((char) ((i < 0 || i > 9) ? (i - 10) + 97 : i + 48));
                i = b & 15;
                int i3 = i2 + 1;
                if (i2 >= 1) {
                    break;
                }
                i2 = i3;
            }
        }
        return sb.toString();
    }
}
