package com.aol.mobile.sdk.player.http.json;

import androidx.core.util.Pair;
import com.aol.mobile.sdk.player.VideoProviderResponse;
import com.aol.mobile.sdk.player.http.ResponseParser;
import com.aol.mobile.sdk.player.model.EmptyDataException;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class VideoProviderResponseParser implements ResponseParser<VideoProviderResponse> {
    private static final String[] PROBLEM_TYPES = {"restricted", "missing", "invalid", "missingRenderer"};

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.aol.mobile.sdk.player.http.ResponseParser
    public VideoProviderResponse parse(String str) throws Exception {
        JSONObject jSONObject = new JSONObject(str);
        return new VideoProviderResponse(jSONObject.has("autoplay") && jSONObject.getBoolean("autoplay"), parsePlaylistItems(jSONObject.getJSONArray("videos")), parseTrackingContext(jSONObject.getJSONObject("tracking")), parseFeatures(jSONObject.optJSONObject("features")));
    }

    private VideoProviderResponse.Features parseFeatures(JSONObject jSONObject) {
        if (jSONObject == null) {
            return new VideoProviderResponse.Features(false, false);
        }
        return new VideoProviderResponse.Features(jSONObject.optBoolean("embedClickThroughUrl"), jSONObject.optBoolean("showClickThroughClose"));
    }

    private VideoProviderResponse.TrackingContext parseTrackingContext(JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = jSONObject.getJSONObject("context");
        String string = jSONObject2.getString("trkUrl");
        String string2 = jSONObject2.getString("adUrl");
        String string3 = jSONObject2.getString("bcid");
        String string4 = jSONObject2.has("bid") ? jSONObject2.getString("bid") : null;
        String string5 = jSONObject2.getString("app_id");
        String string6 = jSONObject2.getString("playerVersion");
        String string7 = jSONObject2.getString("sessionID");
        String string8 = jSONObject2.getString("referringURL");
        return new VideoProviderResponse.TrackingContext(string, string2, string6, string7, string3, string4, string5, jSONObject2.getString("pid"), jSONObject2.getString("uuid"), string8, jSONObject2.getString("playerType"), jSONObject2.getString("platformSupport"), jSONObject2.getString("videoPlayType"), jSONObject2.has("apid") ? jSONObject2.getString("apid") : null, jSONObject2.has("sitesection") ? jSONObject2.getString("sitesection") : null, parseVideoIds(jSONObject2), parseVcids(jSONObject2), parseMpids(jSONObject2), parseMediaFileHosts(jSONObject2), jSONObject2.toString());
    }

    private String[] parseVideoIds(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArray = jSONObject.getJSONArray("vid");
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    private String[] parseVcids(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("vcid");
        if (jSONArrayOptJSONArray == null) {
            return new String[jSONObject.getJSONArray("vid").length()];
        }
        String[] strArr = new String[jSONArrayOptJSONArray.length()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = JSONObject.NULL.equals(jSONArrayOptJSONArray.opt(i)) ? null : jSONArrayOptJSONArray.getString(i);
        }
        return strArr;
    }

    private String[] parseMpids(JSONObject jSONObject) throws JSONException {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("mpid");
        if (jSONArrayOptJSONArray == null) {
            return new String[jSONObject.getJSONArray("vid").length()];
        }
        String[] strArr = new String[jSONArrayOptJSONArray.length()];
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = JSONObject.NULL.equals(jSONArrayOptJSONArray.opt(i)) ? null : jSONArrayOptJSONArray.getString(i);
        }
        return strArr;
    }

    private String[] parseMediaFileHosts(JSONObject jSONObject) throws JSONException {
        if (!jSONObject.has("mediaFileHosts")) {
            return null;
        }
        JSONArray jSONArray = jSONObject.getJSONArray("mediaFileHosts");
        String[] strArr = new String[jSONArray.length()];
        for (int i = 0; i < jSONArray.length(); i++) {
            strArr[i] = jSONArray.getString(i);
        }
        return strArr;
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private VideoProviderResponse.PlaylistItem[] parsePlaylistItems(JSONArray jSONArray) throws JSONException, EmptyDataException {
        int length = jSONArray.length();
        if (length == 0) {
            throw new EmptyDataException();
        }
        VideoProviderResponse.PlaylistItem[] playlistItemArr = new VideoProviderResponse.PlaylistItem[length];
        for (int i = 0; i < length; i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            VideoProviderResponse.VoidVideo voidVideoItem = parseVoidVideoItem(jSONObject);
            if (voidVideoItem != null) {
                playlistItemArr[i] = new VideoProviderResponse.PlaylistItem(voidVideoItem);
            } else {
                playlistItemArr[i] = new VideoProviderResponse.PlaylistItem(parseVideoItem(jSONObject));
            }
        }
        return playlistItemArr;
    }

    private VideoProviderResponse.VoidVideo parseVoidVideoItem(JSONObject jSONObject) throws JSONException {
        for (String str : PROBLEM_TYPES) {
            if (jSONObject.has(str)) {
                return new VideoProviderResponse.VoidVideo(str, jSONObject.getJSONObject(str).getString("reason"));
            }
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x00cf  */
    private VideoProviderResponse.Video parseVideoItem(JSONObject jSONObject) throws JSONException {
        String string;
        String string2;
        VideoProviderResponse.BrandedContent brandedContent;
        JSONObject jSONObject2 = jSONObject.getJSONObject("video");
        HashMap<Pair<Integer, Integer>, String> thumbnails = parseThumbnails(jSONObject2.getJSONArray("thumbnails"));
        JSONArray jSONArray = jSONObject2.getJSONArray("pods");
        VideoProviderResponse.AdInfo adInfo = new VideoProviderResponse.AdInfo(0L, "");
        VideoProviderResponse.AdInfo adInfo2 = new VideoProviderResponse.AdInfo(0L, "");
        ArrayList arrayList = new ArrayList();
        VideoProviderResponse.AdInfo adInfo3 = adInfo;
        VideoProviderResponse.AdInfo adInfo4 = adInfo2;
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject3 = jSONArray.getJSONObject(i);
            if (jSONObject3.getString("time").equals("preroll")) {
                adInfo3 = new VideoProviderResponse.AdInfo(0L, jSONObject3.getString("url"));
            } else if (jSONObject3.getString("time").equals("postroll")) {
                adInfo4 = new VideoProviderResponse.AdInfo(0L, jSONObject3.getString("url"));
            } else {
                arrayList.add(new VideoProviderResponse.AdInfo(Long.parseLong(jSONObject3.getString("time")), jSONObject3.getString("url")));
            }
        }
        String string3 = jSONObject2.getString("id");
        String string4 = jSONObject2.getString("url");
        String string5 = jSONObject2.getString("title");
        boolean zOptBoolean = jSONObject2.optBoolean("isScreenCastingEnabled");
        if (jSONObject2.has("externalSubtitles")) {
            JSONArray jSONArray2 = jSONObject2.getJSONArray("externalSubtitles");
            if (jSONArray2.length() > 0) {
                JSONObject jSONObject4 = jSONArray2.getJSONObject(0);
                if (jSONObject4.has("url")) {
                    string = jSONObject4.getString("language");
                    string2 = jSONObject4.getString("url");
                } else {
                    string = null;
                    string2 = null;
                }
            } else {
                string = null;
                string2 = null;
            }
        } else {
            string = null;
            string2 = null;
        }
        String renderer = getRenderer(jSONObject2.getJSONObject("renderer"));
        if (jSONObject2.has("brandedContent")) {
            JSONObject jSONObject5 = jSONObject2.getJSONObject("brandedContent");
            brandedContent = new VideoProviderResponse.BrandedContent(jSONObject5.optString("clickUrl"), jSONObject5.optString("advertisementText"));
        } else {
            brandedContent = null;
        }
        return new VideoProviderResponse.Video(thumbnails, string3, string4, string5, string, string2, renderer, adInfo3, adInfo4, arrayList, zOptBoolean, brandedContent);
    }

    private String getRenderer(JSONObject jSONObject) throws JSONException {
        return jSONObject.getString("id") + "@" + jSONObject.getString("version");
    }

    private HashMap<Pair<Integer, Integer>, String> parseThumbnails(JSONArray jSONArray) throws JSONException {
        HashMap<Pair<Integer, Integer>, String> map = new HashMap<>();
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            map.put(Pair.create(Integer.valueOf(jSONObject.getInt("width")), Integer.valueOf(jSONObject.getInt("height"))), jSONObject.getString("url"));
        }
        return map;
    }
}
