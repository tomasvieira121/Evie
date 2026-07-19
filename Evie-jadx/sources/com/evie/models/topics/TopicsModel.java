package com.evie.models.topics;

import android.location.Location;
import com.evie.common.AbTestConfiguration;
import com.evie.common.data.Lce;
import com.evie.models.topics.data.GetFollowsResult;
import com.evie.models.topics.data.ListTopicsRequestOptions;
import com.evie.models.topics.data.ListTopicsResult;
import com.evie.models.topics.data.PersonalizeResult;
import com.evie.models.topics.data.TopicDetailsResult;
import com.evie.models.topics.data.TopicId;
import com.voxel.simplesearchlauncher.analytics.AnalyticsHandler;
import com.voxel.simplesearchlauncher.api.LocationHandler;
import io.reactivex.Observable;
import io.reactivex.functions.Consumer;
import io.reactivex.schedulers.Schedulers;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.schema.evie.topics.Topic;

/* JADX INFO: loaded from: classes.dex */
public class TopicsModel {
    private final TopicsAPI mAPI;
    private final AbTestConfiguration mAbTestConfiguration;
    private final AnalyticsHandler mAnalyticsHandler;
    private final LocationHandler mLocationHandler;
    private final TopicPersonalizationStore mTopicPersonalizationStore;

    public TopicsModel(TopicsAPI topicsAPI, AnalyticsHandler analyticsHandler, AbTestConfiguration abTestConfiguration, TopicPersonalizationStore topicPersonalizationStore, LocationHandler locationHandler) {
        this.mAPI = topicsAPI;
        this.mAnalyticsHandler = analyticsHandler;
        this.mAbTestConfiguration = abTestConfiguration;
        this.mTopicPersonalizationStore = topicPersonalizationStore;
        this.mLocationHandler = locationHandler;
    }

    public Observable<Lce<PersonalizeResult>> getPersonalize() {
        Double d;
        Double dValueOf;
        String experiment = this.mAbTestConfiguration.getExperiment();
        String group = this.mAbTestConfiguration.getGroup();
        Location currentLocation = this.mLocationHandler.getCurrentLocation();
        if (currentLocation != null) {
            Double dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
            d = dValueOf2;
        } else {
            d = null;
            dValueOf = null;
        }
        return this.mAPI.getPersonalize(getUserId(), experiment, group, d, dValueOf).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<ListTopicsResult>> listTopics(ListTopicsRequestOptions listTopicsRequestOptions) {
        Double d;
        Double dValueOf;
        String experiment = this.mAbTestConfiguration.getExperiment();
        String group = this.mAbTestConfiguration.getGroup();
        Location currentLocation = this.mLocationHandler.getCurrentLocation();
        if (currentLocation != null) {
            Double dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
            d = dValueOf2;
        } else {
            d = null;
            dValueOf = null;
        }
        return this.mAPI.listTopics(getUserId(), listTopicsRequestOptions.getOptions(), experiment, group, d, dValueOf).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<TopicDetailsResult>> getTopicDetails(String str) {
        Double d;
        Double dValueOf;
        if (str == null) {
            return Observable.just(Lce.error(new NullPointerException())).subscribeOn(Schedulers.m548io());
        }
        String experiment = this.mAbTestConfiguration.getExperiment();
        String group = this.mAbTestConfiguration.getGroup();
        Location currentLocation = this.mLocationHandler.getCurrentLocation();
        if (currentLocation != null) {
            Double dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
            d = dValueOf2;
        } else {
            d = null;
            dValueOf = null;
        }
        return this.mAPI.getTopicDetails(getUserId(), str, experiment, group, d, dValueOf).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<GetFollowsResult>> getFollows() {
        Double dValueOf;
        Location currentLocation = this.mLocationHandler.getCurrentLocation();
        Double dValueOf2 = null;
        if (currentLocation != null) {
            dValueOf2 = Double.valueOf(currentLocation.getLatitude());
            dValueOf = Double.valueOf(currentLocation.getLongitude());
        } else {
            dValueOf = null;
        }
        return this.mAPI.getFollows(getUserId(), dValueOf2, dValueOf).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce()).doOnNext(new Consumer() { // from class: com.evie.models.topics.-$$Lambda$TopicsModel$xoWykbMbE1MiXy26825QIHhIRto
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) throws Exception {
                TopicsModel.lambda$getFollows$0(this.f$0, (Lce) obj);
            }
        });
    }

    public static /* synthetic */ void lambda$getFollows$0(TopicsModel topicsModel, Lce lce) throws Exception {
        if (lce.getData() != null) {
            GetFollowsResult getFollowsResult = (GetFollowsResult) lce.getData();
            topicsModel.mTopicPersonalizationStore.setTopicFollows(new HashSet(getFollowsResult.getFollows()));
            topicsModel.mTopicPersonalizationStore.setTopicBlocks(new HashSet(getFollowsResult.getBlocks()));
        }
    }

    private Observable<Lce<Void>> followTopic(String str) {
        if (str == null) {
            return Observable.just(Lce.error(new NullPointerException())).subscribeOn(Schedulers.m548io());
        }
        this.mTopicPersonalizationStore.addTopicFollows(Collections.singleton(new TopicId(str)));
        this.mTopicPersonalizationStore.removeTopicBlocks(Collections.singleton(new TopicId(str)));
        return this.mAPI.followTopic(getUserId(), str).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<Void>> followTopic(Topic topic) {
        return followTopic(topic.getId());
    }

    public void followTopics(List<Topic> list) {
        if (list.size() == 0) {
            return;
        }
        HashSet hashSet = new HashSet();
        for (Topic topic : list) {
            if (topic.getId() != null) {
                hashSet.add(new TopicId(topic.getId()));
            }
        }
        this.mTopicPersonalizationStore.addTopicFollows(hashSet);
        this.mTopicPersonalizationStore.removeTopicBlocks(hashSet);
        StringBuilder sb = new StringBuilder();
        sb.append(list.get(0).getId());
        for (int i = 1; i < list.size(); i++) {
            sb.append(',');
            sb.append(list.get(i).getId());
        }
        this.mAPI.followTopics(getUserId(), sb.toString()).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce()).subscribe();
    }

    private Observable<Lce<Void>> unfollowTopic(String str) {
        if (str == null) {
            return Observable.just(Lce.error(new NullPointerException())).subscribeOn(Schedulers.m548io());
        }
        this.mTopicPersonalizationStore.removeTopicFollows(Collections.singleton(new TopicId(str)));
        this.mTopicPersonalizationStore.removeTopicBlocks(Collections.singleton(new TopicId(str)));
        return this.mAPI.unfollowTopic(getUserId(), str).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<Void>> unfollowTopic(Topic topic) {
        return unfollowTopic(topic.getId());
    }

    public Observable<Lce<Void>> blockTopic(String str) {
        if (str == null) {
            return Observable.just(Lce.error(new NullPointerException())).subscribeOn(Schedulers.m548io());
        }
        this.mTopicPersonalizationStore.removeTopicFollows(Collections.singleton(new TopicId(str)));
        this.mTopicPersonalizationStore.addTopicBlocks(Collections.singleton(new TopicId(str)));
        return this.mAPI.blockTopic(getUserId(), str).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<Void>> blockTopic(Topic topic) {
        return blockTopic(topic.getId());
    }

    public Observable<Lce<Void>> unblockTopic(String str) {
        if (str == null) {
            return Observable.just(Lce.error(new NullPointerException())).subscribeOn(Schedulers.m548io());
        }
        this.mTopicPersonalizationStore.removeTopicFollows(Collections.singleton(new TopicId(str)));
        this.mTopicPersonalizationStore.removeTopicBlocks(Collections.singleton(new TopicId(str)));
        return this.mAPI.unblockTopic(getUserId(), str).subscribeOn(Schedulers.m548io()).compose(Lce.transformRequestToLce());
    }

    public Observable<Lce<Void>> unblockTopic(Topic topic) {
        return unblockTopic(topic.getId());
    }

    private String getUserId() {
        return this.mAnalyticsHandler.getDistinctUserId();
    }
}
