package com.evie.sidescreen.firebase;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.evie.models.PromptStoreModel;
import com.evie.models.breakingnews.data.BreakingNews;
import com.evie.sidescreen.R;
import com.evie.sidescreen.SideScreenSharedDependencies;
import com.google.firebase.messaging.FirebaseMessagingService;
import com.google.firebase.messaging.RemoteMessage;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.utils.BitmapUtil;
import dagger.android.AndroidInjection;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* JADX INFO: loaded from: classes.dex */
public class MessagingService extends FirebaseMessagingService {
    private static final String[] NOTIFICATION_KEYS = {"notification.title", "notification.body", "notification.expanded", "notification.color", "notification.action", "notification.priority", "notification.bitmap"};
    private static final String[] PROMPT_KEYS = {"prompt.title", "prompt.description", "prompt.image", "prompt.type", "com.evie.sidescreen.webviewer.WebViewerActivity.favicon", "com.evie.sidescreen.webviewer.WebViewerActivity.title", "com.evie.sidescreen.webviewer.WebViewerActivity.share", "com.evie.sidescreen.webviewer.WebViewerActivity.topics_json", "com.evie.sidescreen.webviewer.WebViewerActivity.url", "com.evie.sidescreen.article_id"};
    PromptStoreModel mPromptStoreModel;
    SideScreenSharedDependencies mSideScreenSharedDependencies;

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        AndroidInjection.inject(this);
    }

    @Override // com.google.firebase.messaging.FirebaseMessagingService
    public void onMessageReceived(RemoteMessage remoteMessage) {
        Map<String, String> data = remoteMessage.getData();
        if (data.containsKey("message.type")) {
            String str = data.get("message.type");
            HashMap map = new HashMap();
            int iMin = 0;
            switch (str) {
                case "prompt":
                    String[] strArr = PROMPT_KEYS;
                    int length = strArr.length;
                    while (iMin < length) {
                        String str2 = strArr[iMin];
                        if (data.containsKey(str2)) {
                            map.put(str2, data.remove(str2));
                        }
                        iMin++;
                    }
                    if (map.containsKey("prompt.type") && ((String) map.get("prompt.type")).equals("breaking")) {
                        this.mPromptStoreModel.addNewBreakingNews(new BreakingNews(map.containsKey("com.evie.sidescreen.article_id") ? (String) map.get("com.evie.sidescreen.article_id") : "unavailable", map.containsKey("prompt.title") ? (String) map.get("prompt.title") : "unavailable", map.containsKey("prompt.description") ? (String) map.get("prompt.description") : "unavailable", map.containsKey("prompt.image") ? (String) map.get("prompt.image") : "unavailable", map.containsKey("com.evie.sidescreen.webviewer.WebViewerActivity.url") ? (String) map.get("com.evie.sidescreen.webviewer.WebViewerActivity.url") : "unavailable", map.containsKey("com.evie.sidescreen.webviewer.WebViewerActivity.share") ? (String) map.get("com.evie.sidescreen.webviewer.WebViewerActivity.share") : "unavailable", map.containsKey("com.evie.sidescreen.webviewer.WebViewerActivity.title") ? (String) map.get("com.evie.sidescreen.webviewer.WebViewerActivity.title") : "unavailable", map.containsKey("com.evie.sidescreen.webviewer.WebViewerActivity.favicon") ? (String) map.get("com.evie.sidescreen.webviewer.WebViewerActivity.favicon") : "unavailable", map.containsKey("com.evie.sidescreen.webviewer.WebViewerActivity.topics_json") ? (String) map.get("com.evie.sidescreen.webviewer.WebViewerActivity.topics_json") : "unavailable"));
                        break;
                    }
                    break;
                case "notification":
                    for (String str3 : NOTIFICATION_KEYS) {
                        if (data.containsKey(str3)) {
                            map.put(str3, data.remove(str3));
                        }
                    }
                    data.put("analytics.impression_id", new BigInteger(64, new Random()).toString());
                    sendImpressionEvent(data);
                    Intent intent = new Intent((String) map.get("notification.action"));
                    intent.putExtra("analytics.send_tap_event", true);
                    for (Map.Entry<String, String> entry : data.entrySet()) {
                        intent.putExtra(entry.getKey(), entry.getValue());
                    }
                    intent.setFlags(268468224);
                    int iUptimeMillis = (int) (SystemClock.uptimeMillis() % 2147483647L);
                    Intent intent2 = new Intent("com.evie.screen.api.service.show");
                    intent2.putExtra("com.evie.sidescreen.action", intent);
                    PendingIntent broadcast = PendingIntent.getBroadcast(this, iUptimeMillis, intent2, 0);
                    if (Build.VERSION.SDK_INT >= 26) {
                        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel("default", "Push Notifications", 4));
                    }
                    NotificationCompat.Builder builder = new NotificationCompat.Builder(this, "default");
                    Spanned spannedFromHtml = Html.fromHtml((String) map.get("notification.title"));
                    String str4 = (String) map.get("notification.expanded");
                    if (!TextUtils.isEmpty(str4)) {
                        builder.setStyle(new NotificationCompat.BigTextStyle().setBigContentTitle(spannedFromHtml).bigText(Html.fromHtml(str4)));
                    }
                    try {
                        iMin = Math.min(Math.max(Integer.parseInt((String) map.get("notification.priority")), -2), 2);
                        break;
                    } catch (Exception unused) {
                    }
                    builder.setContentTitle(spannedFromHtml).setContentText(Html.fromHtml((String) map.get("notification.body"))).setColor(Color.parseColor((String) map.get("notification.color"))).setSmallIcon(R.drawable.push_icon).setPriority(iMin).setVibrate(new long[]{0, 250, 250, 250}).setSound(Settings.System.DEFAULT_NOTIFICATION_URI).setLargeIcon(BitmapUtil.getBitmapFromURL((String) map.get("notification.bitmap"))).setContentIntent(broadcast).setAutoCancel(true);
                    NotificationManagerCompat.from(this).notify(iUptimeMillis, builder.build());
                    break;
            }
        }
    }

    private void sendImpressionEvent(Map<String, String> map) {
        AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
        eventProp.add("item_type", map.get("analytics.item_type"));
        eventProp.add("analytics_proto", map.get("analytics.proto"));
        eventProp.add("impression_id", map.get("analytics.impression_id"));
        eventProp.add("screen_type", "notification");
        if (map.containsKey("com.evie.sidescreen.article_id")) {
            eventProp.add("entity_id", map.get("com.evie.sidescreen.article_id"));
        }
        this.mSideScreenSharedDependencies.analyticsHandler().logEvent("ev_ss_article_impression", eventProp);
    }
}
