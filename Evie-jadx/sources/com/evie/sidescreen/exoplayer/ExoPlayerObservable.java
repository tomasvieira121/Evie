package com.evie.sidescreen.exoplayer;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import com.evie.sidescreen.exoplayer.listeners.BaseAdaptiveMediaSourceEventListener;
import com.evie.sidescreen.exoplayer.listeners.BaseEventListener;
import com.evie.sidescreen.exoplayer.listeners.BaseVideoRendererEventListener;
import com.google.android.exoplayer2.ExoPlayer;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.extractor.ExtractorsFactory;
import com.google.android.exoplayer2.source.ExtractorMediaSource;
import com.google.android.exoplayer2.source.MediaSource;
import com.google.android.exoplayer2.source.hls.HlsMediaSource;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.video.VideoRendererEventListener;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.reactivex.subjects.PublishSubject;
import io.reactivex.subjects.Subject;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public class ExoPlayerObservable extends Observable<ExoPlayerEvent> {
    private final DataSource.Factory mDataSourceFactory;
    private final ExtractorsFactory mExtractorsFactory;
    private SimpleExoPlayer mPlayer;
    private final Provider<SimpleExoPlayer> mPlayerProvider;
    private Disposable mProgressDisposable;
    private final Subject<ExoPlayerEvent> mSubject = PublishSubject.create();
    private final Observable<?> mProgressObservable = Observable.interval(500, TimeUnit.MILLISECONDS);
    private final VideoRendererEventListener mRendererListener = new BaseVideoRendererEventListener() { // from class: com.evie.sidescreen.exoplayer.ExoPlayerObservable.1
        @Override // com.evie.sidescreen.exoplayer.listeners.BaseVideoRendererEventListener, com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onRenderedFirstFrame(Surface surface) {
            ExoPlayerObservable.this.mSubject.onNext(new ExoPlayerEvent.Ready());
        }

        @Override // com.evie.sidescreen.exoplayer.listeners.BaseVideoRendererEventListener, com.google.android.exoplayer2.video.VideoRendererEventListener
        public void onVideoSizeChanged(int i, int i2, int i3, float f) {
            ExoPlayerObservable.this.mSubject.onNext(new ExoPlayerEvent.SizeChanged(i, i2, i3, f));
        }
    };
    private final ExoPlayer.EventListener mStateListener = new BaseEventListener() { // from class: com.evie.sidescreen.exoplayer.ExoPlayerObservable.2
        @Override // com.evie.sidescreen.exoplayer.listeners.BaseEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            if (i != 4) {
                return;
            }
            ExoPlayerObservable.this.mSubject.onNext(new ExoPlayerEvent.Finished());
        }
    };
    private final Handler mHandler = new Handler(Looper.getMainLooper());
    private long mLastKnownPosition = 0;

    public ExoPlayerObservable(Provider<SimpleExoPlayer> provider, DataSource.Factory factory, ExtractorsFactory extractorsFactory) {
        this.mPlayerProvider = provider;
        this.mDataSourceFactory = factory;
        this.mExtractorsFactory = extractorsFactory;
    }

    public void initialize() {
        if (this.mPlayer != null) {
            dispose();
        }
        this.mPlayer = this.mPlayerProvider.get();
        this.mPlayer.addListener(this.mStateListener);
        this.mPlayer.setVideoDebugListener(this.mRendererListener);
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super ExoPlayerEvent> observer) {
        this.mSubject.subscribe(observer);
    }

    public Observable<ExoPlayerEvent> prepare(String str) {
        if (TextUtils.isEmpty(str)) {
            this.mSubject.onNext(new ExoPlayerEvent.Error());
            return Observable.empty();
        }
        Uri uri = Uri.parse(str);
        final SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        final HlsMediaSource hlsMediaSource = new HlsMediaSource(uri, this.mDataSourceFactory, this.mHandler, new BaseAdaptiveMediaSourceEventListener() { // from class: com.evie.sidescreen.exoplayer.ExoPlayerObservable.3
            @Override // com.evie.sidescreen.exoplayer.listeners.BaseAdaptiveMediaSourceEventListener, com.google.android.exoplayer2.source.MediaSourceEventListener
            public void onLoadError(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z) {
                ExoPlayerObservable.this.mSubject.onNext(new ExoPlayerEvent.Error());
                Log.e("ExoPlayer", "onLoadError dataSpec=" + dataSpec + " dataType=" + i + " trackType=" + i2 + " trackFormat=" + format + " trackSelectionReason=" + i3 + " trackSelectionData=" + obj + " mediaStartTimeMs=" + j + " mediaEndTimerMs=" + j2 + " loadDurationMs=" + j4 + " bytesLoaded=" + j5 + " error=" + iOException + " wasCanceled=" + z);
            }
        });
        return prepare(new ExtractorMediaSource(uri, this.mDataSourceFactory, this.mExtractorsFactory, this.mHandler, new ExtractorMediaSource.EventListener() { // from class: com.evie.sidescreen.exoplayer.-$$Lambda$ExoPlayerObservable$GzxNTzWCEU78BlXYqHJgCNlHXJU
            @Override // com.google.android.exoplayer2.source.ExtractorMediaSource.EventListener
            public final void onLoadError(IOException iOException) {
                ExoPlayerObservable.lambda$prepare$0(this.f$0, simpleExoPlayer, hlsMediaSource, iOException);
            }
        }));
    }

    public static /* synthetic */ void lambda$prepare$0(ExoPlayerObservable exoPlayerObservable, ExoPlayer exoPlayer, MediaSource mediaSource, IOException iOException) {
        if (exoPlayerObservable.mPlayer != exoPlayer) {
            return;
        }
        exoPlayerObservable.prepare(mediaSource);
    }

    private Observable<ExoPlayerEvent> prepare(MediaSource mediaSource) {
        this.mPlayer.prepare(mediaSource, false, true);
        return this.mSubject;
    }

    private void disposeProgressDisposable() {
        Disposable disposable = this.mProgressDisposable;
        if (disposable != null) {
            disposable.dispose();
            this.mProgressDisposable = null;
        }
    }

    public void dispose() {
        SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        if (simpleExoPlayer != null) {
            this.mLastKnownPosition = simpleExoPlayer.getCurrentPosition();
        }
        disposeProgressDisposable();
        SimpleExoPlayer simpleExoPlayer2 = this.mPlayer;
        if (simpleExoPlayer2 != null) {
            simpleExoPlayer2.release();
            this.mPlayer = null;
        }
    }

    public void play() {
        this.mPlayer.setPlayWhenReady(true);
        this.mSubject.onNext(new ExoPlayerEvent.Play());
        disposeProgressDisposable();
        this.mProgressDisposable = this.mProgressObservable.subscribe(new Consumer() { // from class: com.evie.sidescreen.exoplayer.-$$Lambda$ExoPlayerObservable$V7DeVTzwUv5QcCF31BdzLIewYQ8
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                ExoPlayerObservable exoPlayerObservable = this.f$0;
                exoPlayerObservable.mSubject.onNext(new ExoPlayerEvent.Progress(exoPlayerObservable.getPosition()));
            }
        });
    }

    public void pause() {
        this.mPlayer.setPlayWhenReady(false);
        this.mSubject.onNext(new ExoPlayerEvent.Pause());
        disposeProgressDisposable();
    }

    public void seek(long j) {
        this.mPlayer.seekTo(j);
        this.mSubject.onNext(new ExoPlayerEvent.Progress(j));
    }

    public void setVolume(float f) {
        this.mPlayer.setVolume(f);
    }

    public SimpleExoPlayer getPlayer() {
        SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        if (simpleExoPlayer != null) {
            return simpleExoPlayer;
        }
        throw new IllegalStateException("ExoPlayerObservable is not initialized!");
    }

    public long getDuration() {
        SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        if (simpleExoPlayer == null) {
            return -1L;
        }
        long duration = simpleExoPlayer.getDuration();
        if (duration != -9223372036854775807L) {
            return duration;
        }
        return -1L;
    }

    public long getPosition() {
        SimpleExoPlayer simpleExoPlayer = this.mPlayer;
        if (simpleExoPlayer == null) {
            return this.mLastKnownPosition;
        }
        return simpleExoPlayer.getCurrentPosition();
    }
}
