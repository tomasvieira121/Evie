package com.evie.sidescreen.personalize;

import android.content.Intent;
import android.view.View;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.topicdetail.TopicDetailActivity;
import com.evie.sidescreen.webviewer.RelatedTopicsActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.schema.Thing;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicsFooterBarHandler {
    private final ActivityStarter mActivityStarter;
    private final AnalyticsModel mAnalyticsModel;
    private final List<Topic> mTopics = new ArrayList();

    public TopicsFooterBarHandler(ActivityStarter activityStarter, AnalyticsModel analyticsModel) {
        this.mActivityStarter = activityStarter;
        this.mAnalyticsModel = analyticsModel;
    }

    public void bindFooterBarWithItems(TopicsFooterBar topicsFooterBar, final String str, List<? extends Thing> list) {
        this.mTopics.clear();
        if (list != null) {
            for (Thing thing : list) {
                if (thing instanceof Topic) {
                    this.mTopics.add((Topic) thing);
                }
            }
        }
        if (this.mTopics.isEmpty()) {
            topicsFooterBar.setVisibility(8);
            return;
        }
        topicsFooterBar.setOnCaretClickListener(new View.OnClickListener() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsFooterBarHandler$qnw1dK8RQNeOFH2WHKls82udDb0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.showRelatedTopics(str);
            }
        });
        topicsFooterBar.setOnTopicClickListener(new TopicsFooterBar.OnTopicClickListener() { // from class: com.evie.sidescreen.personalize.-$$Lambda$TopicsFooterBarHandler$q2IOORMP7OSCe5Mn35lW_hMUidg
            @Override // com.evie.sidescreen.personalize.TopicsFooterBar.OnTopicClickListener
            public final void onTopicClickListener(View view, Topic topic) {
                this.f$0.showTopicDetail(topic, str);
            }
        });
        topicsFooterBar.setItems(this.mTopics);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showTopicDetail(Topic topic, String str) {
        HashMap map = new HashMap();
        map.put("item_type", "topic");
        map.put("attribute_topic", topic);
        map.put("screen_type", "article_viewer");
        map.put("screen_id", str);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(TopicDetailActivity.class);
        localActivityIntent.putExtra(TopicDetailActivity.INTENT_KEY_TOPIC_ID, topic.getId());
        this.mActivityStarter.startActivity(null, localActivityIntent, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showRelatedTopics(String str) {
        HashMap map = new HashMap();
        map.put("item_type", "related_topics");
        map.put("screen_type", "article_viewer");
        map.put("screen_id", str);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
        Intent localActivityIntent = this.mActivityStarter.getLocalActivityIntent(RelatedTopicsActivity.class);
        localActivityIntent.putExtra(RelatedTopicsActivity.EXTRA_ARTICLE_ID_KEY, str);
        localActivityIntent.putExtra(RelatedTopicsActivity.EXTRA_TOPICS_KEY, new ArrayList(this.mTopics));
        this.mActivityStarter.startActivity(null, localActivityIntent, false);
    }
}
