package com.evie.sidescreen.analytics;

import com.evie.models.announcement.data.Announcement;
import com.evie.models.breakingnews.data.BreakingNews;
import com.evie.models.frequentlyused.data.FrequentlyUsedApp;
import com.evie.models.sidescreen.data.SideScreenContentTile;
import com.evie.sidescreen.analytics.data.EventData;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import java.util.Map;
import org.json.JSONException;
import org.schema.NewsArticle;
import org.schema.Thing;
import org.schema.evie.NewsChannel;
import org.schema.evie.topics.Topic;
import timber.log.Timber;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsModel {
    private final AnalyticsHandler mHandler;

    public AnalyticsModel(AnalyticsHandler analyticsHandler) {
        this.mHandler = analyticsHandler;
    }

    public void startScreenView(String str, String str2, String str3, String str4, String str5) {
        this.mHandler.startScreenView(str, str2, str3, str4, str5);
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    public void trackEvent(String str, Map<String, Object> map) {
        ScreenInfo screenInfo;
        switch (str) {
            case "ev_ss_tap":
            case "ev_ss_article_impression":
                AnalyticsHandler.EventProp eventProp = new AnalyticsHandler.EventProp();
                for (String str2 : EventData.VERBATIM_ATTRIBUTES) {
                    try {
                        eventProp.getProps().putOpt(str2, map.get(str2));
                    } catch (JSONException e) {
                        Timber.m557i(e, "Failed to add analytics property to JSONObject.", new Object[0]);
                    }
                }
                if (map.containsKey("attribute_announcement")) {
                    eventProp.add("entity_id", ((Announcement) map.get("attribute_announcement")).getId());
                }
                if (map.containsKey("attribute_breakingnews")) {
                    eventProp.add("entity_id", ((BreakingNews) map.get("attribute_breakingnews")).getArticleId());
                }
                if (map.containsKey("attribute_frequently_used_app")) {
                    FrequentlyUsedApp frequentlyUsedApp = (FrequentlyUsedApp) map.get("attribute_frequently_used_app");
                    eventProp.add("entity_id", frequentlyUsedApp.packageName);
                    eventProp.add("class_name", frequentlyUsedApp.className);
                }
                if (map.containsKey("attribute_news_article")) {
                    NewsArticle newsArticle = (NewsArticle) map.get("attribute_news_article");
                    eventProp.add("entity_id", newsArticle.getId());
                    unpackThingProperties(newsArticle, eventProp);
                }
                if (map.containsKey("attribute_news_channel")) {
                    NewsChannel newsChannel = (NewsChannel) map.get("attribute_news_channel");
                    eventProp.add("entity_id", newsChannel.getId());
                    unpackThingProperties(newsChannel, eventProp);
                }
                if (map.containsKey("attribute_thing")) {
                    unpackThingProperties((Thing) map.get("attribute_thing"), eventProp);
                }
                if (map.containsKey("attribute_content_tile") && map.get("attribute_content_tile") != null) {
                    SideScreenContentTile sideScreenContentTile = (SideScreenContentTile) map.get("attribute_content_tile");
                    eventProp.add("ui_type", sideScreenContentTile.getType().toString().toLowerCase());
                    eventProp.add("item_position", sideScreenContentTile.getPositionY());
                }
                if (map.containsKey("attribute_topic")) {
                    Topic topic = (Topic) map.get("attribute_topic");
                    eventProp.add("entity_id", topic.getId());
                    unpackThingProperties(topic, eventProp);
                }
                if (map.containsKey("attribute_screen_info") && (screenInfo = (ScreenInfo) map.get("attribute_screen_info")) != null) {
                    eventProp.add("screen_type", screenInfo.getType());
                    eventProp.add("screen_id", screenInfo.getId());
                    eventProp.add("screen_subtype", screenInfo.getSubtype());
                }
                this.mHandler.logEvent(str, eventProp);
                break;
        }
        if (str == "ev_ss_tap") {
            Object obj = map.get("item_type");
            if (obj == "trending_article" || obj == "trending_video") {
                flushEvents();
            }
        }
    }

    private static void unpackThingProperties(Thing thing, AnalyticsHandler.EventProp eventProp) {
        Map<String, Object> analytics = thing.getAnalytics();
        if (analytics != null) {
            for (Map.Entry<String, Object> entry : analytics.entrySet()) {
                try {
                    eventProp.getProps().put(entry.getKey(), entry.getValue());
                } catch (JSONException e) {
                    Timber.m557i(e, "Failed to add analytics property to JSONObject.", new Object[0]);
                }
            }
        }
    }

    public void flushEvents() {
        this.mHandler.requestLogsSync(true);
    }
}
