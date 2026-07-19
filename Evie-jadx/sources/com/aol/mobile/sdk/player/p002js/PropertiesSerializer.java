package com.aol.mobile.sdk.player.p002js;

import androidx.core.util.Pair;
import com.aol.mobile.sdk.player.model.properties.AdProperties;
import com.aol.mobile.sdk.player.model.properties.Properties;
import com.aol.mobile.sdk.player.model.properties.VideoProperties;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class PropertiesSerializer {
    public static String toJson(Properties properties) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        JSONObject jSONObject2 = new JSONObject();
        JSONObject jSONObject3 = new JSONObject();
        AdProperties adProperties = properties.f166ad;
        jSONObject3.put("kind", "Static");
        jSONObject3.put("isPlaybackReady", !adProperties.isLoading);
        jSONObject3.put("isLoading", adProperties.isLoading);
        jSONObject3.put("isPlaying", adProperties.isPlaying);
        jSONObject3.put("isPaused", adProperties.canBePlayed);
        jSONObject3.put("isFinished", adProperties.isFinished);
        jSONObject3.put("error", adProperties.errorState == null ? null : adProperties.errorState.name());
        jSONObject3.put("hasTime", adProperties.time != null);
        jSONObject3.put("isSeeking", false);
        jSONObject3.put("isBuffering", adProperties.isBuffering);
        jSONObject3.put("isSeekable", false);
        jSONObject3.put("isStreamPlaying", adProperties.isVideoStreamPlaying);
        if (adProperties.time != null) {
            JSONObject jSONObject4 = new JSONObject();
            jSONObject4.put("current", adProperties.time.current);
            jSONObject4.put("lastPlayedDecile", adProperties.time.decile);
            jSONObject4.put("bufferedProgress", 0);
            jSONObject4.put("progress", adProperties.time.progress);
            jSONObject4.put("lastPlayedQuartile", adProperties.time.quartile);
            jSONObject4.put("duration", adProperties.time.duration);
            jSONObject4.put("remaining", adProperties.time.remaining);
            jSONObject3.put("time", jSONObject4);
        } else {
            jSONObject3.put("time", (Object) null);
        }
        jSONObject2.put("ad", jSONObject3);
        jSONObject2.put("hasSubtitles", (properties.playlistItem.video == null || properties.playlistItem.video.subtitles == null) ? false : true);
        if (properties.camera.latitude != 0.0d || properties.camera.longitude != 0.0d) {
            JSONObject jSONObject5 = new JSONObject();
            jSONObject5.put("horizontal", properties.camera.longitude);
            jSONObject5.put("vertical", properties.camera.latitude);
            jSONObject2.put("videoAngles", jSONObject5);
        } else {
            jSONObject2.put("videoAngles", (Object) null);
        }
        jSONObject2.put("isClickThroughToggled", adProperties.isAdClicked);
        if (adProperties.url != null) {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("scalable", adProperties.isScalable);
            jSONObject6.put("maintainAspectRatio", adProperties.isMaintainAspectRatio);
            jSONObject6.put("clickthrough", adProperties.targetUrl);
            jSONObject6.put("mediaFile", adProperties.url);
            jSONObject2.put("adModel", jSONObject6);
        } else {
            jSONObject2.put("adModel", (Object) null);
        }
        jSONObject2.put("hasAdModel", adProperties.url != null);
        jSONObject2.put("isLastVideo", properties.playlist.isLastVideo);
        jSONObject2.put("hasActiveAds", false);
        if (properties.playlistItem.video != null) {
            jSONObject2.put("isReplayable", properties.playlistItem.video.canBeReplayed);
            jSONObject2.put("title", properties.playlistItem.video.title);
            jSONObject2.put("url", properties.playlistItem.video.url);
        } else {
            jSONObject2.put("isReplayable", false);
            jSONObject2.put("title", (Object) null);
            jSONObject2.put("url", (Object) null);
        }
        jSONObject2.put("isScalable", (Object) null);
        jSONObject2.put("isMaintainsAspectRatio", (Object) null);
        jSONObject2.put("playedPrerollsCount", 0);
        if (properties.playlistItem.video != null) {
            JSONObject jSONObject7 = new JSONObject();
            VideoProperties videoProperties = properties.playlistItem.video;
            jSONObject7.put("kind", videoProperties.isStatic ? "Static" : "Live");
            jSONObject7.put("isPlaybackReady", !videoProperties.isLoading);
            jSONObject7.put("isLoading", videoProperties.isLoading);
            jSONObject7.put("isPlaying", videoProperties.isPlaying);
            jSONObject7.put("isPaused", videoProperties.canBePlayed);
            jSONObject7.put("isFinished", videoProperties.isFinished);
            jSONObject7.put("error", properties.errorState == null ? null : properties.errorState.name());
            jSONObject7.put("hasTime", videoProperties.time != null);
            jSONObject7.put("isSeeking", videoProperties.isSeeking);
            jSONObject7.put("isBuffering", videoProperties.isBuffering);
            jSONObject7.put("isSeekable", videoProperties.canBeSeek);
            jSONObject7.put("isStreamPlaying", videoProperties.isVideoStreamPlaying);
            if (properties.playlistItem.video.time != null) {
                JSONObject jSONObject8 = new JSONObject();
                jSONObject8.put("current", videoProperties.time.current);
                jSONObject8.put("lastPlayedDecile", videoProperties.time.decile);
                jSONObject8.put("progress", videoProperties.time.progress);
                jSONObject8.put("lastPlayedQuartile", videoProperties.time.quartile);
                jSONObject8.put("duration", videoProperties.time.duration);
                jSONObject8.put("remaining", videoProperties.time.remaining);
                jSONObject8.put("bufferedProgress", videoProperties.bufferedPercentage / 100.0f);
                jSONObject7.put("time", jSONObject8);
            } else {
                jSONObject7.put("time", (Object) null);
            }
            jSONObject2.put("content", jSONObject7);
            if (properties.playlistItem.video.subtitles.url != null) {
                JSONObject jSONObject9 = new JSONObject();
                jSONObject9.put("isActive", true);
                jSONObject9.put("isLoading", false);
                jSONObject9.put("isLoaded", true);
                jSONObject2.put("subtitles", jSONObject9);
            } else {
                jSONObject2.put("subtitles", (Object) null);
            }
            if (videoProperties.url != null) {
                JSONObject jSONObject10 = new JSONObject();
                jSONObject10.put("title", videoProperties.title);
                if (adProperties.url != null) {
                    JSONObject jSONObject11 = new JSONObject();
                    jSONObject11.put("prerollCount", 0);
                    jSONObject11.put("url", adProperties.url);
                    jSONObject10.put("adsInfo", jSONObject11);
                } else {
                    jSONObject10.put("adsInfo", (Object) null);
                }
                if (videoProperties.renderer != null) {
                    JSONObject jSONObject12 = new JSONObject();
                    String[] strArrSplit = videoProperties.renderer.split("@");
                    jSONObject12.put("id", strArrSplit[0]);
                    jSONObject12.put("version", strArrSplit[1]);
                    jSONObject10.put("renderer", jSONObject12);
                } else {
                    jSONObject10.put("renderer", (Object) null);
                }
                if (videoProperties.model.thumbnails != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<Pair<Integer, Integer>, String> entry : videoProperties.model.thumbnails.entrySet()) {
                        JSONObject jSONObject13 = new JSONObject();
                        JSONObject jSONObject14 = new JSONObject();
                        jSONObject14.put("width", entry.getKey().first);
                        jSONObject14.put("height", entry.getKey().second);
                        jSONObject13.put("size", jSONObject14);
                        jSONObject13.put("url", entry.getValue());
                        jSONArray.put(jSONObject13);
                    }
                    jSONObject10.put("thumbnails", jSONArray);
                } else {
                    jSONObject10.put("thumbnails", (Object) null);
                }
                jSONObject10.put("subtitles", properties.playlistItem.video.subtitles.url);
                jSONObject2.put("model", jSONObject10);
            } else {
                jSONObject2.put("model", (Object) null);
            }
        } else {
            JSONObject jSONObject15 = new JSONObject();
            jSONObject15.put("kind", "Unknown");
            jSONObject15.put("isPlaybackReady", false);
            jSONObject15.put("isLoading", false);
            jSONObject15.put("isPlaying", false);
            jSONObject15.put("isPaused", false);
            jSONObject15.put("isFinished", false);
            jSONObject15.put("error", (Object) null);
            jSONObject15.put("hasTime", false);
            jSONObject15.put("isSeeking", false);
            jSONObject15.put("isBuffering", false);
            jSONObject15.put("isSeekable", false);
            jSONObject15.put("isStreamPlaying", false);
            jSONObject15.put("time", (Object) null);
            jSONObject2.put("content", jSONObject15);
            jSONObject2.put("model", (Object) null);
            jSONObject2.put("subtitles", (Object) null);
        }
        JSONObject jSONObject16 = new JSONObject();
        jSONObject16.put("available", jSONObject2);
        jSONObject.put("item", jSONObject16);
        JSONObject jSONObject17 = new JSONObject();
        jSONObject17.put("currentIndex", properties.playlist.currentIndex);
        jSONObject17.put("hasPrevVideo", properties.playlist.hasPreviousVideo);
        jSONObject17.put("hasNextVideo", properties.playlist.hasNextVideo);
        jSONObject17.put("count", properties.playlist.count);
        jSONObject.put("playlist", jSONObject17);
        JSONObject jSONObject18 = new JSONObject();
        jSONObject18.put("id", properties.session.f168id);
        jSONObject18.put("playbackDuration", properties.session.playbackDuration);
        jSONObject.put("session", jSONObject18);
        JSONObject jSONObject19 = new JSONObject();
        jSONObject19.put("width", properties.viewport.width);
        jSONObject19.put("height", properties.viewport.height);
        jSONObject.put("dimensions", jSONObject19);
        jSONObject.put("isAutoplayEnabled", properties.isAutoplay);
        jSONObject.put("isMuted", properties.isMuted);
        jSONObject.put("isSessionCompleted", properties.isSessionCompleted);
        jSONObject.put("isPlaybackInitiated", properties.isPlaybackStarted);
        return jSONObject.toString();
    }
}
