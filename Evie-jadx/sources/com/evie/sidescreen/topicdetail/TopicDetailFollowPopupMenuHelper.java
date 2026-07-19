package com.evie.sidescreen.topicdetail;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.FollowState;
import java.util.HashMap;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicDetailFollowPopupMenuHelper {
    private final AnalyticsModel mAnalyticsModel;
    private final TopicPersonalizationStore mTopicPersonalizationStore;
    private final TopicsModel mTopicsModel;

    public TopicDetailFollowPopupMenuHelper(TopicsModel topicsModel, TopicPersonalizationStore topicPersonalizationStore, AnalyticsModel analyticsModel) {
        this.mTopicsModel = topicsModel;
        this.mTopicPersonalizationStore = topicPersonalizationStore;
        this.mAnalyticsModel = analyticsModel;
    }

    public void showMenuAtView(final Topic topic, Context context, View view, final ScreenInfo screenInfo) {
        MenuBuilder menuBuilder = new MenuBuilder(context);
        addMenuItemsForTopic(context, menuBuilder, topic);
        menuBuilder.setCallback(new MenuBuilder.Callback() { // from class: com.evie.sidescreen.topicdetail.TopicDetailFollowPopupMenuHelper.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder2) {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder2, MenuItem menuItem) {
                switch (menuItem.getItemId()) {
                    case 0:
                        TopicDetailFollowPopupMenuHelper.this.mTopicsModel.followTopic(topic).subscribe();
                        TopicDetailFollowPopupMenuHelper.this.trackTap("follow", topic, screenInfo);
                        return true;
                    case 1:
                        TopicDetailFollowPopupMenuHelper.this.mTopicsModel.unfollowTopic(topic).subscribe();
                        TopicDetailFollowPopupMenuHelper.this.trackTap("unfollow", topic, screenInfo);
                        return true;
                    case 2:
                        TopicDetailFollowPopupMenuHelper.this.mTopicsModel.blockTopic(topic).subscribe();
                        TopicDetailFollowPopupMenuHelper.this.trackTap("block", topic, screenInfo);
                        return true;
                    case 3:
                        TopicDetailFollowPopupMenuHelper.this.mTopicsModel.unblockTopic(topic).subscribe();
                        TopicDetailFollowPopupMenuHelper.this.trackTap("unblock", topic, screenInfo);
                        return true;
                    default:
                        return false;
                }
            }
        });
        MenuPopupHelper menuPopupHelper = new MenuPopupHelper(context, menuBuilder);
        menuPopupHelper.setAnchorView(view);
        menuPopupHelper.setGravity(8388629);
        menuPopupHelper.show();
    }

    private void addMenuItemsForTopic(Context context, MenuBuilder menuBuilder, Topic topic) {
        if (topic.getId() == null) {
        }
        switch (FollowState.determineFollowState(r0, this.mTopicPersonalizationStore.getTopicFollows(), this.mTopicPersonalizationStore.getTopicBlocks())) {
            case FOLLOWING:
                menuBuilder.add(0, 1, 0, context.getString(R.string.ss_article_context_menu_unfollow, topic.getName()));
                break;
            case BLOCKED:
                menuBuilder.add(0, 3, 0, context.getString(R.string.ss_article_context_menu_unblock, topic.getName()));
                break;
            default:
                menuBuilder.add(0, 0, 0, context.getString(R.string.ss_article_context_menu_follow, topic.getName()));
                menuBuilder.add(0, 2, 0, context.getString(R.string.ss_article_context_menu_block, topic.getName()));
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trackTap(String str, Topic topic, ScreenInfo screenInfo) {
        HashMap map = new HashMap();
        map.put("item_type", str);
        map.put("attribute_topic", topic);
        map.put("attribute_screen_info", screenInfo);
        this.mAnalyticsModel.trackEvent("ev_ss_tap", map);
    }
}
