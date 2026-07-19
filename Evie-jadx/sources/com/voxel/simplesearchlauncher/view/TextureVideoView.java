package com.voxel.simplesearchlauncher.view;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.TextureView;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class TextureVideoView extends TextureView implements TextureView.SurfaceTextureListener {
    private static final String TAG = "com.voxel.simplesearchlauncher.view.TextureVideoView";
    private boolean mIsDataSourceSet;
    private boolean mIsPlayCalled;
    private boolean mIsVideoPrepared;
    private boolean mIsViewAvailable;
    private MediaPlayerListener mListener;
    private MediaPlayer mMediaPlayer;
    private ScaleType mScaleType;
    private State mState;
    private float mVideoHeight;
    private float mVideoWidth;

    public interface MediaPlayerListener {
        void onVideoEnd();

        void onVideoPrepared();
    }

    public enum ScaleType {
        CENTER_CROP,
        TOP,
        BOTTOM,
        BOTTOM_CENTER
    }

    public enum State {
        UNINITIALIZED,
        PLAY,
        STOP,
        PAUSE,
        END
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    public TextureVideoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        initView();
    }

    private void initView() {
        initPlayer();
        setScaleType(ScaleType.CENTER_CROP);
        setSurfaceTextureListener(this);
    }

    public void setScaleType(ScaleType scaleType) {
        this.mScaleType = scaleType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTextureViewSize() {
        int i;
        float width = getWidth();
        float height = getHeight();
        float f = this.mVideoWidth / width;
        float f2 = this.mVideoHeight / height;
        int i2 = 0;
        switch (this.mScaleType) {
            case TOP:
                i = 0;
                break;
            case BOTTOM:
                i2 = (int) width;
                i = (int) height;
                break;
            case CENTER_CROP:
                i2 = (int) (width / 2.0f);
                i = (int) (height / 2.0f);
                break;
            case BOTTOM_CENTER:
                i2 = ((int) width) / 2;
                i = (int) height;
                break;
            default:
                i2 = (int) (width / 2.0f);
                i = (int) (height / 2.0f);
                break;
        }
        Matrix matrix = new Matrix();
        float f3 = i2;
        float f4 = i;
        matrix.preScale(f, f2, f3, f4);
        float fMax = Math.max(width / this.mVideoWidth, height / this.mVideoHeight);
        matrix.postScale(fMax, fMax, f3, f4);
        setTransform(matrix);
    }

    private void initPlayer() {
        MediaPlayer mediaPlayer = this.mMediaPlayer;
        if (mediaPlayer == null) {
            this.mMediaPlayer = new MediaPlayer();
        } else {
            mediaPlayer.reset();
        }
        this.mIsVideoPrepared = false;
        this.mIsPlayCalled = false;
        this.mState = State.UNINITIALIZED;
    }

    public void setDataSource(String str) {
        initPlayer();
        try {
            this.mMediaPlayer.setDataSource(str);
            this.mIsDataSourceSet = true;
            prepare();
        } catch (IOException e) {
            Log.d(TAG, e.getMessage());
        }
    }

    public void setDataSource(Context context, Uri uri) {
        initPlayer();
        try {
            this.mMediaPlayer.setDataSource(context, uri);
            this.mIsDataSourceSet = true;
            prepare();
        } catch (IOException e) {
            Log.d(TAG, e.getMessage());
        }
    }

    public void setDataSource(AssetFileDescriptor assetFileDescriptor) {
        initPlayer();
        try {
            this.mMediaPlayer.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
            this.mIsDataSourceSet = true;
            prepare();
        } catch (IOException e) {
            Log.d(TAG, e.getMessage());
        }
    }

    private void prepare() {
        try {
            this.mMediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.voxel.simplesearchlauncher.view.TextureVideoView.1
                @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
                public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
                    TextureVideoView.this.mVideoWidth = i;
                    TextureVideoView.this.mVideoHeight = i2;
                    TextureVideoView.this.updateTextureViewSize();
                }
            });
            this.mMediaPlayer.setOnCompletionListener(new MediaPlayer.OnCompletionListener() { // from class: com.voxel.simplesearchlauncher.view.TextureVideoView.2
                @Override // android.media.MediaPlayer.OnCompletionListener
                public void onCompletion(MediaPlayer mediaPlayer) {
                    TextureVideoView.this.mState = State.END;
                    TextureVideoView.log("Video has ended.");
                    if (TextureVideoView.this.mListener != null) {
                        TextureVideoView.this.mListener.onVideoEnd();
                    }
                }
            });
            this.mMediaPlayer.prepareAsync();
            this.mMediaPlayer.setOnPreparedListener(new MediaPlayer.OnPreparedListener() { // from class: com.voxel.simplesearchlauncher.view.TextureVideoView.3
                @Override // android.media.MediaPlayer.OnPreparedListener
                public void onPrepared(MediaPlayer mediaPlayer) {
                    TextureVideoView.this.mIsVideoPrepared = true;
                    if (TextureVideoView.this.mIsPlayCalled && TextureVideoView.this.mIsViewAvailable) {
                        TextureVideoView.log("Player is prepared and play() was called.");
                        TextureVideoView.this.play();
                    }
                    if (TextureVideoView.this.mListener != null) {
                        TextureVideoView.this.mListener.onVideoPrepared();
                    }
                }
            });
        } catch (IllegalArgumentException e) {
            Log.d(TAG, e.getMessage());
        } catch (IllegalStateException e2) {
            Log.d(TAG, e2.toString());
        } catch (SecurityException e3) {
            Log.d(TAG, e3.getMessage());
        }
    }

    public void play() {
        if (!this.mIsDataSourceSet) {
            log("play() was called but data source was not set.");
            return;
        }
        this.mIsPlayCalled = true;
        if (!this.mIsVideoPrepared) {
            log("play() was called but video is not prepared yet, waiting.");
            return;
        }
        if (!this.mIsViewAvailable) {
            log("play() was called but view is not available yet, waiting.");
            return;
        }
        if (this.mState == State.PLAY) {
            log("play() was called but video is already playing.");
            return;
        }
        if (this.mState == State.PAUSE) {
            log("play() was called but video is paused, resuming.");
            this.mState = State.PLAY;
            this.mMediaPlayer.start();
        } else {
            if (this.mState == State.END || this.mState == State.STOP) {
                log("play() was called but video already ended, starting over.");
                this.mState = State.PLAY;
                this.mMediaPlayer.seekTo(0);
                this.mMediaPlayer.start();
                return;
            }
            this.mState = State.PLAY;
            this.mMediaPlayer.start();
        }
    }

    public void stop() {
        if (this.mState == State.STOP) {
            log("stop() was called but video already stopped.");
            return;
        }
        if (this.mState == State.END) {
            log("stop() was called but video already ended.");
            return;
        }
        this.mState = State.STOP;
        if (this.mMediaPlayer.isPlaying()) {
            this.mMediaPlayer.pause();
            this.mMediaPlayer.seekTo(0);
        }
    }

    public void setLooping(boolean z) {
        this.mMediaPlayer.setLooping(z);
    }

    public int getDuration() {
        return this.mMediaPlayer.getDuration();
    }

    static void log(String str) {
        Log.d(TAG, str);
    }

    public void setListener(MediaPlayerListener mediaPlayerListener) {
        this.mListener = mediaPlayerListener;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        this.mMediaPlayer.setSurface(new Surface(surfaceTexture));
        this.mIsViewAvailable = true;
        if (this.mIsDataSourceSet && this.mIsPlayCalled && this.mIsVideoPrepared) {
            log("View is available and play() was called.");
            play();
        }
    }

    public void release() {
        this.mMediaPlayer.release();
    }
}
