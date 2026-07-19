package com.evie.models.topics;

import com.evie.models.topics.data.GetFollowsResult;
import com.evie.models.topics.data.ListTopicsResult;
import com.evie.models.topics.data.PersonalizeResult;
import com.evie.models.topics.data.TopicDetailsResult;
import io.reactivex.Observable;
import java.util.Map;
import retrofit2.Response;
import retrofit2.http.DELETE;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.PUT;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.QueryMap;

/* JADX INFO: loaded from: classes.dex */
public interface TopicsAPI {
    @PUT("/android/sidescreen/topics/{topic_id}/block")
    Observable<Response<Void>> blockTopic(@Header("X-ID") String str, @Path("topic_id") String str2);

    @PUT("/android/sidescreen/topics/{topic_id}/follow")
    Observable<Response<Void>> followTopic(@Header("X-ID") String str, @Path("topic_id") String str2);

    @PUT("/android/sidescreen/topics/follow")
    Observable<Response<Void>> followTopics(@Header("X-ID") String str, @Query("ids") String str2);

    @GET("/android/sidescreen/follows")
    Observable<Response<GetFollowsResult>> getFollows(@Query("user_id") String str, @Query("lat") Double d, @Query("lon") Double d2);

    @GET("/android/sidescreen/personalize")
    Observable<Response<PersonalizeResult>> getPersonalize(@Header("X-ID") String str, @Query("experiment") String str2, @Query("group") String str3, @Query("lat") Double d, @Query("lon") Double d2);

    @GET("/android/sidescreen/topics/{topic_id}")
    Observable<Response<TopicDetailsResult>> getTopicDetails(@Header("X-ID") String str, @Path("topic_id") String str2, @Query("experiment") String str3, @Query("group") String str4, @Query("lat") Double d, @Query("lon") Double d2);

    @GET("/android/sidescreen/topics")
    Observable<Response<ListTopicsResult>> listTopics(@Header("X-ID") String str, @QueryMap Map<String, String> map, @Query("experiment") String str2, @Query("group") String str3, @Query("lat") Double d, @Query("lon") Double d2);

    @DELETE("/android/sidescreen/topics/{topic_id}/block")
    Observable<Response<Void>> unblockTopic(@Header("X-ID") String str, @Path("topic_id") String str2);

    @DELETE("/android/sidescreen/topics/{topic_id}/follow")
    Observable<Response<Void>> unfollowTopic(@Header("X-ID") String str, @Path("topic_id") String str2);
}
