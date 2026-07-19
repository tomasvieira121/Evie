.class public interface abstract Lcom/google/android/youtube/player/YouTubePlayer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/player/YouTubePlayer$ErrorReason;,
        Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;,
        Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;,
        Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;,
        Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;,
        Lcom/google/android/youtube/player/YouTubePlayer$Provider;
    }
.end annotation


# virtual methods
.method public abstract addFullscreenControlFlag(I)V
.end method

.method public abstract cueVideo(Ljava/lang/String;)V
.end method

.method public abstract getCurrentTimeMillis()I
.end method

.method public abstract getDurationMillis()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract loadVideo(Ljava/lang/String;)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract release()V
.end method

.method public abstract seekToMillis(I)V
.end method

.method public abstract setFullscreen(Z)V
.end method

.method public abstract setOnFullscreenListener(Lcom/google/android/youtube/player/YouTubePlayer$OnFullscreenListener;)V
.end method

.method public abstract setPlayerStateChangeListener(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStateChangeListener;)V
.end method

.method public abstract setPlayerStyle(Lcom/google/android/youtube/player/YouTubePlayer$PlayerStyle;)V
.end method
