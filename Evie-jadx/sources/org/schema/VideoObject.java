package org.schema;

import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import java.util.Collections;
import java.util.List;
import org.schema.serialization.AlwaysListTypeAdapterFactory;

/* JADX INFO: loaded from: classes2.dex */
public class VideoObject extends MediaObject {

    @SerializedName("duration")
    private int duration;

    @SerializedName("ev:mediaPlayer")
    private String mediaPlayer;

    @SerializedName("id")
    private String videoId;

    @SerializedName("previewUrl")
    @JsonAdapter(AlwaysListTypeAdapterFactory.class)
    private List<String> previewUrl = Collections.emptyList();
    private boolean autoplay = true;

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public String toString() {
        return "VideoObject(super=" + super.toString() + ", mediaPlayer=" + getMediaPlayer() + ", previewUrl=" + getPreviewUrl() + ", duration=" + getDuration() + ", videoId=" + getVideoId() + ", autoplay=" + isAutoplay() + ")";
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    protected boolean canEqual(Object obj) {
        return obj instanceof VideoObject;
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof VideoObject)) {
            return false;
        }
        VideoObject videoObject = (VideoObject) obj;
        if (!videoObject.canEqual(this) || !super.equals(obj)) {
            return false;
        }
        String mediaPlayer = getMediaPlayer();
        String mediaPlayer2 = videoObject.getMediaPlayer();
        if (mediaPlayer != null ? !mediaPlayer.equals(mediaPlayer2) : mediaPlayer2 != null) {
            return false;
        }
        String previewUrl = getPreviewUrl();
        String previewUrl2 = videoObject.getPreviewUrl();
        if (previewUrl != null ? !previewUrl.equals(previewUrl2) : previewUrl2 != null) {
            return false;
        }
        if (getDuration() != videoObject.getDuration()) {
            return false;
        }
        String videoId = getVideoId();
        String videoId2 = videoObject.getVideoId();
        if (videoId != null ? videoId.equals(videoId2) : videoId2 == null) {
            return isAutoplay() == videoObject.isAutoplay();
        }
        return false;
    }

    @Override // org.schema.MediaObject, org.schema.Thing, org.schema.C1483Id
    public int hashCode() {
        int iHashCode = super.hashCode();
        String mediaPlayer = getMediaPlayer();
        int iHashCode2 = (iHashCode * 59) + (mediaPlayer == null ? 43 : mediaPlayer.hashCode());
        String previewUrl = getPreviewUrl();
        int iHashCode3 = (((iHashCode2 * 59) + (previewUrl == null ? 43 : previewUrl.hashCode())) * 59) + getDuration();
        String videoId = getVideoId();
        return (((iHashCode3 * 59) + (videoId != null ? videoId.hashCode() : 43)) * 59) + (isAutoplay() ? 79 : 97);
    }

    public int getDuration() {
        return this.duration;
    }

    public boolean isAutoplay() {
        return this.autoplay;
    }

    public String getPreviewUrl() {
        if (this.previewUrl.isEmpty()) {
            return null;
        }
        return this.previewUrl.get(0);
    }

    public String getMediaPlayer() {
        String str = this.mediaPlayer;
        return str == null ? "exo" : str;
    }

    public boolean isYouTube() {
        return "youtube".equals(getMediaPlayer());
    }

    public boolean isOath() {
        return "o2".equals(getMediaPlayer());
    }

    @Override // org.schema.MediaObject
    public String getUrl() {
        String url = super.getUrl();
        if (url != null || !isYouTube()) {
            return url;
        }
        return "https://m.youtube.com/watch?v=" + getId();
    }

    public String getVideoId() {
        return this.videoId;
    }
}
