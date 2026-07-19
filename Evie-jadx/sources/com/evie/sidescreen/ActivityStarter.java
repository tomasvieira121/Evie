package com.evie.sidescreen;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.Toast;
import com.crashlytics.android.Crashlytics;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.webviewer.WebViewerActivity;
import dagger.internal.Preconditions;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: loaded from: classes.dex */
public class ActivityStarter {
    private static final String[] PASS_FLAGS_ARRAY = {"com.evie.sidescreen.ActivityStarter.personalize_onboarding"};
    private final boolean isActivity;
    private final AnalyticsModel mAnalyticsModel;
    private final Context mContext;
    private final Map<String, Boolean> mPassFlags;

    public ActivityStarter(Activity activity, AnalyticsModel analyticsModel) {
        this(activity, activity, analyticsModel);
    }

    public ActivityStarter(Context context, Activity activity, AnalyticsModel analyticsModel) {
        this.mPassFlags = new HashMap();
        if (activity != null) {
            receivePassFlags(activity.getIntent());
            this.mContext = activity;
        } else {
            this.mContext = context;
        }
        this.mAnalyticsModel = analyticsModel;
        this.isActivity = this.mContext instanceof Activity;
    }

    private void receivePassFlags(Intent intent) {
        if (intent == null) {
            return;
        }
        for (String str : PASS_FLAGS_ARRAY) {
            if (intent.getBooleanExtra(str, false)) {
                this.mPassFlags.put(str, true);
            }
        }
    }

    private void addPassFlagsToIntent(Intent intent) {
        for (Map.Entry<String, Boolean> entry : this.mPassFlags.entrySet()) {
            intent.putExtra(entry.getKey(), entry.getValue());
        }
    }

    public boolean startActivity(View view, Intent intent, boolean z) {
        return startActivity(view, intent, z, false);
    }

    public boolean startActivityForResult(View view, Intent intent, int i, boolean z) {
        return startActivityForResult(view, intent, i, z, false);
    }

    public boolean startActivity(View view, Intent intent, boolean z, boolean z2) {
        Preconditions.checkNotNull(intent);
        if (!z2) {
            addNewTaskFlagsIfNeeded(intent);
        }
        try {
            this.mContext.startActivity(intent, null);
            return true;
        } catch (ActivityNotFoundException e) {
            if (z) {
                Toast.makeText(this.mContext, R.string.ss_no_app_found, 0).show();
            }
            Crashlytics.logException(e);
            return false;
        }
    }

    public boolean startActivityForResult(View view, Intent intent, int i, boolean z, boolean z2) {
        if (!this.isActivity) {
            return false;
        }
        Preconditions.checkNotNull(intent);
        if (!z2) {
            addNewTaskFlagsIfNeeded(intent);
        }
        try {
            ((Activity) this.mContext).startActivityForResult(intent, i, null);
            return true;
        } catch (ActivityNotFoundException e) {
            if (z) {
                Toast.makeText(this.mContext, R.string.ss_no_app_found, 0).show();
            }
            Crashlytics.logException(e);
            return false;
        }
    }

    public void startUrl(View view, String str, String str2, String str3) {
        startUrl(view, str, str2, str3, null, null, null, null, null);
    }

    public void startUrl(View view, String str, String str2, String str3, String str4, Map<String, ? extends Serializable> map, String str5, String str6, String str7) {
        startActivity(view, getIntentForUrl(view, str, str2, str3, str4, map, str5, str6, str7), true);
    }

    public Intent getIntentForUrl(View view, String str, String str2, String str3, String str4, Map<String, ? extends Serializable> map, String str5, String str6, String str7) {
        Intent viewIntentIfAvailable = getViewIntentIfAvailable(str6, str, str5);
        if (viewIntentIfAvailable == null) {
            if (TextUtils.isEmpty(str7)) {
                str7 = str;
            }
            if (Objects.equals(str7, str)) {
                str = null;
            }
            viewIntentIfAvailable = getLocalActivityIntent(WebViewerActivity.class);
            if (map != null) {
                for (Map.Entry<String, ? extends Serializable> entry : map.entrySet()) {
                    viewIntentIfAvailable.putExtra(entry.getKey(), entry.getValue());
                }
            }
            viewIntentIfAvailable.setData(Uri.parse(str7));
            viewIntentIfAvailable.putExtra(WebViewerActivity.EXTRA_URL_KEY, str7);
            viewIntentIfAvailable.putExtra(WebViewerActivity.EXTRA_FALLBACK_URL_KEY, str);
            viewIntentIfAvailable.putExtra(WebViewerActivity.EXTRA_TITLE_KEY, str2);
            viewIntentIfAvailable.putExtra(WebViewerActivity.EXTRA_SHARE_SUBJECT_KEY, str3);
            viewIntentIfAvailable.putExtra(WebViewerActivity.EXTRA_TILE_ID_KEY, str4);
        }
        return viewIntentIfAvailable;
    }

    public Intent startPackageId(View view, String str, boolean z) {
        Intent launchIntentForPackage = this.mContext.getPackageManager().getLaunchIntentForPackage(str);
        if (launchIntentForPackage != null) {
            startActivity(view, launchIntentForPackage, z);
        } else if (z) {
            Toast.makeText(this.mContext, R.string.ss_no_app_found, 0).show();
        }
        return launchIntentForPackage;
    }

    public Intent getViewIntentIfAvailable(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str3)) {
            return null;
        }
        if (TextUtils.isEmpty(str)) {
            str = str2;
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Uri uri = Uri.parse(str);
        PackageManager packageManager = this.mContext.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        intent.addFlags(268435456);
        if (!str3.equals("ANY")) {
            intent.setPackage(str3);
        }
        if (packageManager.queryIntentActivities(intent, 0).size() > 0) {
            return intent;
        }
        return null;
    }

    public Intent getLocalActivityIntent(Class cls) {
        Intent intent = new Intent(this.mContext, (Class<?>) cls);
        addPassFlagsToIntent(intent);
        if (!this.isActivity) {
            intent.putExtra("com.evie.sidescreen.SideScreenActivity.enable_activity_navigation_bar_hack", true);
        }
        return intent;
    }

    public void startShareActivity(String str, String str2, ScreenInfo screenInfo) {
        if (this.mAnalyticsModel != null) {
            HashMap map = new HashMap();
            map.put("item_type", "share");
            map.put("attribute_screen_info", screenInfo);
            this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.SUBJECT", str2);
        intent.putExtra("android.intent.extra.TEXT", str);
        startActivity(null, Intent.createChooser(intent, null), true);
    }

    private void addNewTaskFlagsIfNeeded(Intent intent) {
        if (this.isActivity) {
            return;
        }
        intent.addFlags(268468224);
    }
}
