package com.evie.sidescreen.tiles.articles;

import android.content.Context;
import android.text.TextUtils;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuPopupHelper;
import com.evie.models.sidescreen.SideScreenRelatedContentModel;
import com.evie.models.topics.TopicPersonalizationStore;
import com.evie.models.topics.TopicsModel;
import com.evie.models.topics.data.TopicId;
import com.evie.sidescreen.ActivityStarter;
import com.evie.sidescreen.R;
import com.evie.sidescreen.analytics.AnalyticsModel;
import com.evie.sidescreen.analytics.data.ScreenInfo;
import com.evie.sidescreen.personalize.FollowState;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.HashMap;
import java.util.Set;
import org.schema.NewsArticle;
import org.schema.Organization;
import org.schema.Thing;
import org.schema.evie.topics.Topic;
import org.schema.evie.topics.TopicEntity;
import org.schema.evie.topics.TopicPublisher;

/* JADX INFO: loaded from: classes.dex */
public class ArticlePopupMenuHelper {
    private final ActivityStarter mActivityStarter;
    private final AnalyticsModel mAnalyticsModel;
    private final SideScreenRelatedContentModel mSideScreenRelatedContentModel;
    private final TopicPersonalizationStore mTopicPersonalizationStore;
    private final TopicsModel mTopicsModel;

    public ArticlePopupMenuHelper(TopicsModel topicsModel, SideScreenRelatedContentModel sideScreenRelatedContentModel, TopicPersonalizationStore topicPersonalizationStore, ActivityStarter activityStarter, AnalyticsModel analyticsModel) {
        this.mTopicsModel = topicsModel;
        this.mSideScreenRelatedContentModel = sideScreenRelatedContentModel;
        this.mTopicPersonalizationStore = topicPersonalizationStore;
        this.mActivityStarter = activityStarter;
        this.mAnalyticsModel = analyticsModel;
    }

    public void showMenuAtView(final NewsArticle newsArticle, Context context, View view, final ScreenInfo screenInfo) {
        MenuBuilder menuBuilder = new MenuBuilder(context);
        float salience = Float.NEGATIVE_INFINITY;
        final Topic topic = null;
        final Topic topic2 = null;
        for (Thing thing : newsArticle.getTopics()) {
            if (topic == null && (thing instanceof TopicPublisher) && ((TopicPublisher) thing).isArticlePublisher()) {
                topic = (Topic) thing;
            }
            if (thing instanceof TopicEntity) {
                TopicEntity topicEntity = (TopicEntity) thing;
                if (salience < topicEntity.getSalience()) {
                    salience = topicEntity.getSalience();
                    topic2 = topicEntity;
                }
            }
        }
        if (topic != null) {
            addMenuItemsForTopic(context, menuBuilder, topic, 0, newsArticle.getPublisherOrganization());
        }
        if (topic2 != null) {
            addMenuItemsForTopic(context, menuBuilder, topic2, 1, null);
        }
        menuBuilder.add(2, 0, 0, context.getString(R.string.share));
        menuBuilder.setCallback(new MenuBuilder.Callback() { // from class: com.evie.sidescreen.tiles.articles.ArticlePopupMenuHelper.1
            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public void onMenuModeChange(MenuBuilder menuBuilder2) {
            }

            @Override // androidx.appcompat.view.menu.MenuBuilder.Callback
            public boolean onMenuItemSelected(MenuBuilder menuBuilder2, MenuItem menuItem) {
                Topic topic3;
                switch (menuItem.getGroupId()) {
                    case 0:
                        topic3 = topic;
                        break;
                    case 1:
                        topic3 = topic2;
                        break;
                    case 2:
                        ArticlePopupMenuHelper.this.share(newsArticle, screenInfo);
                        return true;
                    default:
                        return false;
                }
                if (topic3 == null) {
                    return false;
                }
                switch (menuItem.getItemId()) {
                    case 0:
                        ArticlePopupMenuHelper.this.mTopicsModel.followTopic(topic3).subscribe();
                        ArticlePopupMenuHelper.this.trackTap("follow", topic3, screenInfo);
                        return true;
                    case 1:
                        ArticlePopupMenuHelper.this.mTopicsModel.unfollowTopic(topic3).subscribe();
                        ArticlePopupMenuHelper.this.trackTap("unfollow", topic3, screenInfo);
                        return true;
                    case 2:
                        ArticlePopupMenuHelper.this.mTopicsModel.blockTopic(topic3).subscribe();
                        ArticlePopupMenuHelper.this.trackTap("block", topic3, screenInfo);
                        return true;
                    case 3:
                        ArticlePopupMenuHelper.this.mTopicsModel.unblockTopic(topic3).subscribe();
                        ArticlePopupMenuHelper.this.trackTap("unblock", topic3, screenInfo);
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

    private void addMenuItemsForTopic(Context context, MenuBuilder menuBuilder, Topic topic, int i, Organization organization) {
        String id = topic.getId();
        if (id == null) {
        }
        Set<TopicId> topicFollows = this.mTopicPersonalizationStore.getTopicFollows();
        Set<TopicId> topicBlocks = this.mTopicPersonalizationStore.getTopicBlocks();
        FollowState followStateDetermineFollowState = FollowState.determineFollowState(id, topicFollows, topicBlocks);
        if (FollowState.FOLLOW.equals(followStateDetermineFollowState) && organization != null) {
            followStateDetermineFollowState = determineFollowStateForPublisher(organization, topicFollows, topicBlocks);
        }
        switch (followStateDetermineFollowState) {
            case FOLLOWING:
                menuBuilder.add(i, 1, 0, context.getString(R.string.ss_article_context_menu_unfollow, topic.getName()));
                break;
            case BLOCKED:
                menuBuilder.add(i, 3, 0, context.getString(R.string.ss_article_context_menu_unblock, topic.getName()));
                break;
            default:
                menuBuilder.add(i, 0, 0, context.getString(R.string.ss_article_context_menu_follow, topic.getName()));
                menuBuilder.add(i, 2, 0, context.getString(R.string.ss_article_context_menu_block, topic.getName()));
                break;
        }
    }

    private FollowState determineFollowStateForPublisher(Organization organization, Set<TopicId> set, Set<TopicId> set2) {
        boolean zContains;
        boolean zContains2 = false;
        if (TextUtils.isEmpty(organization.getTopicId())) {
            zContains = false;
        } else {
            TopicId topicId = new TopicId(organization.getTopicId());
            boolean zContains3 = set.contains(topicId) | false;
            zContains = false | set2.contains(topicId);
            zContains2 = zContains3;
        }
        if (!TextUtils.isEmpty(organization.getTopicId2())) {
            TopicId topicId2 = new TopicId(organization.getTopicId2());
            zContains2 |= set.contains(topicId2);
            zContains |= set2.contains(topicId2);
        }
        if (!TextUtils.isEmpty(organization.getTopicId3())) {
            TopicId topicId3 = new TopicId(organization.getTopicId3());
            zContains2 |= set.contains(topicId3);
            zContains |= set2.contains(topicId3);
        }
        if (zContains2) {
            return FollowState.FOLLOWING;
        }
        if (zContains) {
            return FollowState.BLOCKED;
        }
        return FollowState.FOLLOW;
    }

    public void share(final NewsArticle newsArticle, final ScreenInfo screenInfo) {
        this.mSideScreenRelatedContentModel.getShortLink(newsArticle.getUrl()).subscribeOn(Schedulers.m548io()).observeOn(AndroidSchedulers.mainThread()).subscribe(new Consumer() { // from class: com.evie.sidescreen.tiles.articles.-$$Lambda$ArticlePopupMenuHelper$CuSXxMvvOnnrnhxE8NG8ccvBH9k
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                String str = (String) obj;
                this.f$0.mActivityStarter.startShareActivity(str, newsArticle.getHeadline(), screenInfo);
            }
        });
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
