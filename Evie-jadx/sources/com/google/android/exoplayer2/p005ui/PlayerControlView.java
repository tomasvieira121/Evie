package com.google.android.exoplayer2.p005ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.C0762C;
import com.google.android.exoplayer2.ControlDispatcher;
import com.google.android.exoplayer2.DefaultControlDispatcher;
import com.google.android.exoplayer2.ExoPlayerLibraryInfo;
import com.google.android.exoplayer2.PlaybackPreparer;
import com.google.android.exoplayer2.Player;
import com.google.android.exoplayer2.Timeline;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.RepeatModeUtil;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Formatter;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class PlayerControlView extends FrameLayout {
    private long[] adGroupTimesMs;
    private final ComponentListener componentListener;
    private ControlDispatcher controlDispatcher;
    private final TextView durationView;
    private long[] extraAdGroupTimesMs;
    private boolean[] extraPlayedAdGroups;
    private final View fastForwardButton;
    private int fastForwardMs;
    private final StringBuilder formatBuilder;
    private final Formatter formatter;
    private final Runnable hideAction;
    private long hideAtMs;
    private boolean isAttachedToWindow;
    private boolean multiWindowTimeBar;
    private final View nextButton;
    private final View pauseButton;
    private final Timeline.Period period;
    private final View playButton;
    private PlaybackPreparer playbackPreparer;
    private boolean[] playedAdGroups;
    private Player player;
    private final TextView positionView;
    private final View previousButton;
    private final String repeatAllButtonContentDescription;
    private final Drawable repeatAllButtonDrawable;
    private final String repeatOffButtonContentDescription;
    private final Drawable repeatOffButtonDrawable;
    private final String repeatOneButtonContentDescription;
    private final Drawable repeatOneButtonDrawable;
    private final ImageView repeatToggleButton;
    private int repeatToggleModes;
    private final View rewindButton;
    private int rewindMs;
    private boolean scrubbing;
    private boolean showMultiWindowTimeBar;
    private boolean showShuffleButton;
    private int showTimeoutMs;
    private final View shuffleButton;
    private final TimeBar timeBar;
    private final Runnable updateProgressAction;
    private VisibilityListener visibilityListener;
    private final Timeline.Window window;

    public interface VisibilityListener {
        void onVisibilityChange(int i);
    }

    @SuppressLint({"InlinedApi"})
    private static boolean isHandledMediaKey(int i) {
        return i == 90 || i == 89 || i == 85 || i == 126 || i == 127 || i == 87 || i == 88;
    }

    static {
        ExoPlayerLibraryInfo.registerModule("goog.exo.ui");
    }

    public PlayerControlView(Context context, AttributeSet attributeSet, int i, AttributeSet attributeSet2) {
        super(context, attributeSet, i);
        this.updateProgressAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlayerControlView.1
            @Override // java.lang.Runnable
            public void run() {
                PlayerControlView.this.updateProgress();
            }
        };
        this.hideAction = new Runnable() { // from class: com.google.android.exoplayer2.ui.PlayerControlView.2
            @Override // java.lang.Runnable
            public void run() {
                PlayerControlView.this.hide();
            }
        };
        int resourceId = R.layout.exo_player_control_view;
        this.rewindMs = 5000;
        this.fastForwardMs = 15000;
        this.showTimeoutMs = 5000;
        this.repeatToggleModes = 0;
        this.hideAtMs = -9223372036854775807L;
        this.showShuffleButton = false;
        if (attributeSet2 != null) {
            TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet2, R.styleable.PlayerControlView, 0, 0);
            try {
                this.rewindMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_rewind_increment, this.rewindMs);
                this.fastForwardMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_fastforward_increment, this.fastForwardMs);
                this.showTimeoutMs = typedArrayObtainStyledAttributes.getInt(R.styleable.PlayerControlView_show_timeout, this.showTimeoutMs);
                resourceId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.PlayerControlView_controller_layout_id, resourceId);
                this.repeatToggleModes = getRepeatToggleModes(typedArrayObtainStyledAttributes, this.repeatToggleModes);
                this.showShuffleButton = typedArrayObtainStyledAttributes.getBoolean(R.styleable.PlayerControlView_show_shuffle_button, this.showShuffleButton);
                typedArrayObtainStyledAttributes.recycle();
            } catch (Throwable th) {
                typedArrayObtainStyledAttributes.recycle();
                throw th;
            }
        }
        this.period = new Timeline.Period();
        this.window = new Timeline.Window();
        this.formatBuilder = new StringBuilder();
        this.formatter = new Formatter(this.formatBuilder, Locale.getDefault());
        this.adGroupTimesMs = new long[0];
        this.playedAdGroups = new boolean[0];
        this.extraAdGroupTimesMs = new long[0];
        this.extraPlayedAdGroups = new boolean[0];
        this.componentListener = new ComponentListener();
        this.controlDispatcher = new DefaultControlDispatcher();
        LayoutInflater.from(context).inflate(resourceId, this);
        setDescendantFocusability(262144);
        this.durationView = (TextView) findViewById(R.id.exo_duration);
        this.positionView = (TextView) findViewById(R.id.exo_position);
        this.timeBar = (TimeBar) findViewById(R.id.exo_progress);
        TimeBar timeBar = this.timeBar;
        if (timeBar != null) {
            timeBar.addListener(this.componentListener);
        }
        this.playButton = findViewById(R.id.exo_play);
        View view = this.playButton;
        if (view != null) {
            view.setOnClickListener(this.componentListener);
        }
        this.pauseButton = findViewById(R.id.exo_pause);
        View view2 = this.pauseButton;
        if (view2 != null) {
            view2.setOnClickListener(this.componentListener);
        }
        this.previousButton = findViewById(R.id.exo_prev);
        View view3 = this.previousButton;
        if (view3 != null) {
            view3.setOnClickListener(this.componentListener);
        }
        this.nextButton = findViewById(R.id.exo_next);
        View view4 = this.nextButton;
        if (view4 != null) {
            view4.setOnClickListener(this.componentListener);
        }
        this.rewindButton = findViewById(R.id.exo_rew);
        View view5 = this.rewindButton;
        if (view5 != null) {
            view5.setOnClickListener(this.componentListener);
        }
        this.fastForwardButton = findViewById(R.id.exo_ffwd);
        View view6 = this.fastForwardButton;
        if (view6 != null) {
            view6.setOnClickListener(this.componentListener);
        }
        this.repeatToggleButton = (ImageView) findViewById(R.id.exo_repeat_toggle);
        ImageView imageView = this.repeatToggleButton;
        if (imageView != null) {
            imageView.setOnClickListener(this.componentListener);
        }
        this.shuffleButton = findViewById(R.id.exo_shuffle);
        View view7 = this.shuffleButton;
        if (view7 != null) {
            view7.setOnClickListener(this.componentListener);
        }
        Resources resources = context.getResources();
        this.repeatOffButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_off);
        this.repeatOneButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_one);
        this.repeatAllButtonDrawable = resources.getDrawable(R.drawable.exo_controls_repeat_all);
        this.repeatOffButtonContentDescription = resources.getString(R.string.exo_controls_repeat_off_description);
        this.repeatOneButtonContentDescription = resources.getString(R.string.exo_controls_repeat_one_description);
        this.repeatAllButtonContentDescription = resources.getString(R.string.exo_controls_repeat_all_description);
    }

    private static int getRepeatToggleModes(TypedArray typedArray, int i) {
        return typedArray.getInt(R.styleable.PlayerControlView_repeat_toggle_modes, i);
    }

    public Player getPlayer() {
        return this.player;
    }

    public void setPlayer(Player player) {
        Player player2 = this.player;
        if (player2 == player) {
            return;
        }
        if (player2 != null) {
            player2.removeListener(this.componentListener);
        }
        this.player = player;
        if (player != null) {
            player.addListener(this.componentListener);
        }
        updateAll();
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        this.showMultiWindowTimeBar = z;
        updateTimeBarMode();
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        this.visibilityListener = visibilityListener;
    }

    public void setPlaybackPreparer(PlaybackPreparer playbackPreparer) {
        this.playbackPreparer = playbackPreparer;
    }

    public void setControlDispatcher(ControlDispatcher controlDispatcher) {
        if (controlDispatcher == null) {
            controlDispatcher = new DefaultControlDispatcher();
        }
        this.controlDispatcher = controlDispatcher;
    }

    public void setRewindIncrementMs(int i) {
        this.rewindMs = i;
        updateNavigation();
    }

    public void setFastForwardIncrementMs(int i) {
        this.fastForwardMs = i;
        updateNavigation();
    }

    public int getShowTimeoutMs() {
        return this.showTimeoutMs;
    }

    public void setShowTimeoutMs(int i) {
        this.showTimeoutMs = i;
        if (isVisible()) {
            hideAfterTimeout();
        }
    }

    public int getRepeatToggleModes() {
        return this.repeatToggleModes;
    }

    public void setRepeatToggleModes(int i) {
        this.repeatToggleModes = i;
        Player player = this.player;
        if (player != null) {
            int repeatMode = player.getRepeatMode();
            if (i == 0 && repeatMode != 0) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 0);
                return;
            }
            if (i == 1 && repeatMode == 2) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 1);
            } else if (i == 2 && repeatMode == 1) {
                this.controlDispatcher.dispatchSetRepeatMode(this.player, 2);
            }
        }
    }

    public boolean getShowShuffleButton() {
        return this.showShuffleButton;
    }

    public void setShowShuffleButton(boolean z) {
        this.showShuffleButton = z;
        updateShuffleButton();
    }

    public void show() {
        if (!isVisible()) {
            setVisibility(0);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            updateAll();
            requestPlayPauseFocus();
        }
        hideAfterTimeout();
    }

    public void hide() {
        if (isVisible()) {
            setVisibility(8);
            VisibilityListener visibilityListener = this.visibilityListener;
            if (visibilityListener != null) {
                visibilityListener.onVisibilityChange(getVisibility());
            }
            removeCallbacks(this.updateProgressAction);
            removeCallbacks(this.hideAction);
            this.hideAtMs = -9223372036854775807L;
        }
    }

    public boolean isVisible() {
        return getVisibility() == 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideAfterTimeout() {
        removeCallbacks(this.hideAction);
        if (this.showTimeoutMs > 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            int i = this.showTimeoutMs;
            this.hideAtMs = jUptimeMillis + ((long) i);
            if (this.isAttachedToWindow) {
                postDelayed(this.hideAction, i);
                return;
            }
            return;
        }
        this.hideAtMs = -9223372036854775807L;
    }

    private void updateAll() {
        updatePlayPauseButton();
        updateNavigation();
        updateRepeatModeButton();
        updateShuffleButton();
        updateProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updatePlayPauseButton() {
        boolean z;
        if (isVisible() && this.isAttachedToWindow) {
            boolean zIsPlaying = isPlaying();
            View view = this.playButton;
            if (view != null) {
                z = (zIsPlaying && view.isFocused()) | false;
                this.playButton.setVisibility(zIsPlaying ? 8 : 0);
            } else {
                z = false;
            }
            View view2 = this.pauseButton;
            if (view2 != null) {
                z |= !zIsPlaying && view2.isFocused();
                this.pauseButton.setVisibility(zIsPlaying ? 0 : 8);
            }
            if (z) {
                requestPlayPauseFocus();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateNavigation() {
        boolean z;
        boolean z2;
        boolean z3;
        if (isVisible() && this.isAttachedToWindow) {
            Player player = this.player;
            Timeline currentTimeline = player != null ? player.getCurrentTimeline() : null;
            if (!((currentTimeline == null || currentTimeline.isEmpty()) ? false : true) || this.player.isPlayingAd()) {
                z = false;
                z2 = false;
                z3 = false;
            } else {
                currentTimeline.getWindow(this.player.getCurrentWindowIndex(), this.window);
                z = this.window.isSeekable;
                z3 = (!z && this.window.isDynamic && this.player.getPreviousWindowIndex() == -1) ? false : true;
                z2 = this.window.isDynamic || this.player.getNextWindowIndex() != -1;
            }
            setButtonEnabled(z3, this.previousButton);
            setButtonEnabled(z2, this.nextButton);
            setButtonEnabled(this.fastForwardMs > 0 && z, this.fastForwardButton);
            setButtonEnabled(this.rewindMs > 0 && z, this.rewindButton);
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setEnabled(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRepeatModeButton() {
        ImageView imageView;
        if (isVisible() && this.isAttachedToWindow && (imageView = this.repeatToggleButton) != null) {
            if (this.repeatToggleModes == 0) {
                imageView.setVisibility(8);
                return;
            }
            if (this.player == null) {
                setButtonEnabled(false, imageView);
                return;
            }
            setButtonEnabled(true, imageView);
            switch (this.player.getRepeatMode()) {
                case 0:
                    this.repeatToggleButton.setImageDrawable(this.repeatOffButtonDrawable);
                    this.repeatToggleButton.setContentDescription(this.repeatOffButtonContentDescription);
                    break;
                case 1:
                    this.repeatToggleButton.setImageDrawable(this.repeatOneButtonDrawable);
                    this.repeatToggleButton.setContentDescription(this.repeatOneButtonContentDescription);
                    break;
                case 2:
                    this.repeatToggleButton.setImageDrawable(this.repeatAllButtonDrawable);
                    this.repeatToggleButton.setContentDescription(this.repeatAllButtonContentDescription);
                    break;
            }
            this.repeatToggleButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateShuffleButton() {
        View view;
        if (isVisible() && this.isAttachedToWindow && (view = this.shuffleButton) != null) {
            if (!this.showShuffleButton) {
                view.setVisibility(8);
                return;
            }
            Player player = this.player;
            if (player == null) {
                setButtonEnabled(false, view);
                return;
            }
            view.setAlpha(player.getShuffleModeEnabled() ? 1.0f : 0.3f);
            this.shuffleButton.setEnabled(true);
            this.shuffleButton.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateTimeBarMode() {
        Player player = this.player;
        if (player == null) {
            return;
        }
        this.multiWindowTimeBar = this.showMultiWindowTimeBar && canShowMultiWindowTimeBar(player.getCurrentTimeline(), this.window);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateProgress() {
        long jUsToMs;
        long contentPosition;
        long j;
        long j2;
        long j3;
        int i;
        long j4;
        int i2;
        if (isVisible() && this.isAttachedToWindow) {
            Player player = this.player;
            boolean z = true;
            if (player != null) {
                Timeline currentTimeline = player.getCurrentTimeline();
                if (currentTimeline.isEmpty()) {
                    j2 = 0;
                    j3 = 0;
                    i = 0;
                } else {
                    int currentWindowIndex = this.player.getCurrentWindowIndex();
                    int i3 = this.multiWindowTimeBar ? 0 : currentWindowIndex;
                    int windowCount = this.multiWindowTimeBar ? currentTimeline.getWindowCount() - 1 : currentWindowIndex;
                    j2 = 0;
                    i = 0;
                    j3 = 0;
                    while (i3 <= windowCount) {
                        if (i3 == currentWindowIndex) {
                            j3 = j2;
                        }
                        currentTimeline.getWindow(i3, this.window);
                        if (this.window.durationUs == -9223372036854775807L) {
                            Assertions.checkState(this.multiWindowTimeBar ^ z);
                            break;
                        }
                        int i4 = this.window.firstPeriodIndex;
                        while (i4 <= this.window.lastPeriodIndex) {
                            currentTimeline.getPeriod(i4, this.period);
                            int adGroupCount = this.period.getAdGroupCount();
                            int i5 = i;
                            int i6 = 0;
                            while (i6 < adGroupCount) {
                                long adGroupTimeUs = this.period.getAdGroupTimeUs(i6);
                                if (adGroupTimeUs == Long.MIN_VALUE) {
                                    if (this.period.durationUs == -9223372036854775807L) {
                                        i2 = currentWindowIndex;
                                    } else {
                                        j4 = this.period.durationUs;
                                    }
                                    i6++;
                                    currentWindowIndex = i2;
                                } else {
                                    j4 = adGroupTimeUs;
                                }
                                long positionInWindowUs = j4 + this.period.getPositionInWindowUs();
                                if (positionInWindowUs >= 0) {
                                    i2 = currentWindowIndex;
                                    if (positionInWindowUs <= this.window.durationUs) {
                                        long[] jArr = this.adGroupTimesMs;
                                        if (i5 == jArr.length) {
                                            int length = jArr.length == 0 ? 1 : jArr.length * 2;
                                            this.adGroupTimesMs = Arrays.copyOf(this.adGroupTimesMs, length);
                                            this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, length);
                                        }
                                        this.adGroupTimesMs[i5] = C0762C.usToMs(positionInWindowUs + j2);
                                        this.playedAdGroups[i5] = this.period.hasPlayedAdGroup(i6);
                                        i5++;
                                    }
                                } else {
                                    i2 = currentWindowIndex;
                                }
                                i6++;
                                currentWindowIndex = i2;
                            }
                            i4++;
                            i = i5;
                        }
                        j2 += this.window.durationUs;
                        i3++;
                        z = true;
                    }
                }
                jUsToMs = C0762C.usToMs(j2);
                long jUsToMs2 = C0762C.usToMs(j3);
                if (this.player.isPlayingAd()) {
                    contentPosition = jUsToMs2 + this.player.getContentPosition();
                    j = contentPosition;
                } else {
                    long currentPosition = this.player.getCurrentPosition() + jUsToMs2;
                    long bufferedPosition = jUsToMs2 + this.player.getBufferedPosition();
                    contentPosition = currentPosition;
                    j = bufferedPosition;
                }
                if (this.timeBar != null) {
                    int length2 = this.extraAdGroupTimesMs.length;
                    int i7 = i + length2;
                    long[] jArr2 = this.adGroupTimesMs;
                    if (i7 > jArr2.length) {
                        this.adGroupTimesMs = Arrays.copyOf(jArr2, i7);
                        this.playedAdGroups = Arrays.copyOf(this.playedAdGroups, i7);
                    }
                    System.arraycopy(this.extraAdGroupTimesMs, 0, this.adGroupTimesMs, i, length2);
                    System.arraycopy(this.extraPlayedAdGroups, 0, this.playedAdGroups, i, length2);
                    this.timeBar.setAdGroupTimesMs(this.adGroupTimesMs, this.playedAdGroups, i7);
                }
            } else {
                jUsToMs = 0;
                contentPosition = 0;
                j = 0;
            }
            TextView textView = this.durationView;
            if (textView != null) {
                textView.setText(Util.getStringForTime(this.formatBuilder, this.formatter, jUsToMs));
            }
            TextView textView2 = this.positionView;
            if (textView2 != null && !this.scrubbing) {
                textView2.setText(Util.getStringForTime(this.formatBuilder, this.formatter, contentPosition));
            }
            TimeBar timeBar = this.timeBar;
            if (timeBar != null) {
                timeBar.setPosition(contentPosition);
                this.timeBar.setBufferedPosition(j);
                this.timeBar.setDuration(jUsToMs);
            }
            removeCallbacks(this.updateProgressAction);
            Player player2 = this.player;
            int playbackState = player2 == null ? 1 : player2.getPlaybackState();
            if (playbackState == 1 || playbackState == 4) {
                return;
            }
            long j5 = 1000;
            if (this.player.getPlayWhenReady() && playbackState == 3) {
                float f = this.player.getPlaybackParameters().speed;
                if (f > 0.1f) {
                    if (f <= 5.0f) {
                        long jMax = 1000 / Math.max(1, Math.round(1.0f / f));
                        long j6 = jMax - (contentPosition % jMax);
                        if (j6 < jMax / 5) {
                            j6 += jMax;
                        }
                        if (f != 1.0f) {
                            j6 = (long) (j6 / f);
                        }
                        j5 = j6;
                    } else {
                        j5 = 200;
                    }
                }
            }
            postDelayed(this.updateProgressAction, j5);
        }
    }

    private void requestPlayPauseFocus() {
        View view;
        View view2;
        boolean zIsPlaying = isPlaying();
        if (!zIsPlaying && (view2 = this.playButton) != null) {
            view2.requestFocus();
        } else {
            if (!zIsPlaying || (view = this.pauseButton) == null) {
                return;
            }
            view.requestFocus();
        }
    }

    private void setButtonEnabled(boolean z, View view) {
        if (view == null) {
            return;
        }
        view.setEnabled(z);
        view.setAlpha(z ? 1.0f : 0.3f);
        view.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void previous() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return;
        }
        currentTimeline.getWindow(this.player.getCurrentWindowIndex(), this.window);
        int previousWindowIndex = this.player.getPreviousWindowIndex();
        if (previousWindowIndex != -1 && (this.player.getCurrentPosition() <= 3000 || (this.window.isDynamic && !this.window.isSeekable))) {
            seekTo(previousWindowIndex, -9223372036854775807L);
        } else {
            seekTo(0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void next() {
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (currentTimeline.isEmpty()) {
            return;
        }
        int currentWindowIndex = this.player.getCurrentWindowIndex();
        int nextWindowIndex = this.player.getNextWindowIndex();
        if (nextWindowIndex != -1) {
            seekTo(nextWindowIndex, -9223372036854775807L);
        } else if (currentTimeline.getWindow(currentWindowIndex, this.window, false).isDynamic) {
            seekTo(currentWindowIndex, -9223372036854775807L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rewind() {
        if (this.rewindMs <= 0) {
            return;
        }
        seekTo(Math.max(this.player.getCurrentPosition() - ((long) this.rewindMs), 0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void fastForward() {
        if (this.fastForwardMs <= 0) {
            return;
        }
        long duration = this.player.getDuration();
        long currentPosition = this.player.getCurrentPosition() + ((long) this.fastForwardMs);
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(currentPosition);
    }

    private void seekTo(long j) {
        seekTo(this.player.getCurrentWindowIndex(), j);
    }

    private void seekTo(int i, long j) {
        if (this.controlDispatcher.dispatchSeekTo(this.player, i, j)) {
            return;
        }
        updateProgress();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void seekToTimeBarPosition(long j) {
        int currentWindowIndex;
        Timeline currentTimeline = this.player.getCurrentTimeline();
        if (this.multiWindowTimeBar && !currentTimeline.isEmpty()) {
            int windowCount = currentTimeline.getWindowCount();
            currentWindowIndex = 0;
            while (true) {
                long durationMs = currentTimeline.getWindow(currentWindowIndex, this.window).getDurationMs();
                if (j < durationMs) {
                    break;
                }
                if (currentWindowIndex == windowCount - 1) {
                    j = durationMs;
                    break;
                } else {
                    j -= durationMs;
                    currentWindowIndex++;
                }
            }
        } else {
            currentWindowIndex = this.player.getCurrentWindowIndex();
        }
        seekTo(currentWindowIndex, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        long j = this.hideAtMs;
        if (j != -9223372036854775807L) {
            long jUptimeMillis = j - SystemClock.uptimeMillis();
            if (jUptimeMillis <= 0) {
                hide();
            } else {
                postDelayed(this.hideAction, jUptimeMillis);
            }
        } else if (isVisible()) {
            hideAfterTimeout();
        }
        updateAll();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        removeCallbacks(this.updateProgressAction);
        removeCallbacks(this.hideAction);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        return dispatchMediaKeyEvent(keyEvent) || super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public boolean dispatchMediaKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (this.player == null || !isHandledMediaKey(keyCode)) {
            return false;
        }
        if (keyEvent.getAction() == 0) {
            if (keyCode != 90) {
                if (keyCode == 89) {
                    rewind();
                } else if (keyEvent.getRepeatCount() == 0) {
                    switch (keyCode) {
                        case 85:
                            ControlDispatcher controlDispatcher = this.controlDispatcher;
                            Player player = this.player;
                            controlDispatcher.dispatchSetPlayWhenReady(player, !player.getPlayWhenReady());
                            break;
                        case 87:
                            next();
                            break;
                        case 88:
                            previous();
                            break;
                        case 126:
                            this.controlDispatcher.dispatchSetPlayWhenReady(this.player, true);
                            break;
                        case 127:
                            this.controlDispatcher.dispatchSetPlayWhenReady(this.player, false);
                            break;
                    }
                }
            } else {
                fastForward();
            }
        }
        return true;
    }

    private boolean isPlaying() {
        Player player = this.player;
        return (player == null || player.getPlaybackState() == 4 || this.player.getPlaybackState() == 1 || !this.player.getPlayWhenReady()) ? false : true;
    }

    private static boolean canShowMultiWindowTimeBar(Timeline timeline, Timeline.Window window) {
        if (timeline.getWindowCount() > 100) {
            return false;
        }
        int windowCount = timeline.getWindowCount();
        for (int i = 0; i < windowCount; i++) {
            if (timeline.getWindow(i, window).durationUs == -9223372036854775807L) {
                return false;
            }
        }
        return true;
    }

    private final class ComponentListener extends Player.DefaultEventListener implements View.OnClickListener, TimeBar.OnScrubListener {
        private ComponentListener() {
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStart(TimeBar timeBar, long j) {
            PlayerControlView playerControlView = PlayerControlView.this;
            playerControlView.removeCallbacks(playerControlView.hideAction);
            PlayerControlView.this.scrubbing = true;
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubMove(TimeBar timeBar, long j) {
            if (PlayerControlView.this.positionView != null) {
                PlayerControlView.this.positionView.setText(Util.getStringForTime(PlayerControlView.this.formatBuilder, PlayerControlView.this.formatter, j));
            }
        }

        @Override // com.google.android.exoplayer2.ui.TimeBar.OnScrubListener
        public void onScrubStop(TimeBar timeBar, long j, boolean z) {
            PlayerControlView.this.scrubbing = false;
            if (!z && PlayerControlView.this.player != null) {
                PlayerControlView.this.seekToTimeBarPosition(j);
            }
            PlayerControlView.this.hideAfterTimeout();
        }

        @Override // com.google.android.exoplayer2.Player.DefaultEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onPlayerStateChanged(boolean z, int i) {
            PlayerControlView.this.updatePlayPauseButton();
            PlayerControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.DefaultEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onRepeatModeChanged(int i) {
            PlayerControlView.this.updateRepeatModeButton();
            PlayerControlView.this.updateNavigation();
        }

        @Override // com.google.android.exoplayer2.Player.DefaultEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onShuffleModeEnabledChanged(boolean z) {
            PlayerControlView.this.updateShuffleButton();
            PlayerControlView.this.updateNavigation();
        }

        @Override // com.google.android.exoplayer2.Player.DefaultEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onPositionDiscontinuity(int i) {
            PlayerControlView.this.updateNavigation();
            PlayerControlView.this.updateProgress();
        }

        @Override // com.google.android.exoplayer2.Player.DefaultEventListener, com.google.android.exoplayer2.Player.EventListener
        public void onTimelineChanged(Timeline timeline, Object obj, int i) {
            PlayerControlView.this.updateNavigation();
            PlayerControlView.this.updateTimeBarMode();
            PlayerControlView.this.updateProgress();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (PlayerControlView.this.player != null) {
                if (PlayerControlView.this.nextButton == view) {
                    PlayerControlView.this.next();
                } else if (PlayerControlView.this.previousButton == view) {
                    PlayerControlView.this.previous();
                } else if (PlayerControlView.this.fastForwardButton == view) {
                    PlayerControlView.this.fastForward();
                } else if (PlayerControlView.this.rewindButton == view) {
                    PlayerControlView.this.rewind();
                } else if (PlayerControlView.this.playButton == view) {
                    if (PlayerControlView.this.player.getPlaybackState() == 1) {
                        if (PlayerControlView.this.playbackPreparer != null) {
                            PlayerControlView.this.playbackPreparer.preparePlayback();
                        }
                    } else if (PlayerControlView.this.player.getPlaybackState() == 4) {
                        PlayerControlView.this.controlDispatcher.dispatchSeekTo(PlayerControlView.this.player, PlayerControlView.this.player.getCurrentWindowIndex(), -9223372036854775807L);
                    }
                    PlayerControlView.this.controlDispatcher.dispatchSetPlayWhenReady(PlayerControlView.this.player, true);
                } else if (PlayerControlView.this.pauseButton == view) {
                    PlayerControlView.this.controlDispatcher.dispatchSetPlayWhenReady(PlayerControlView.this.player, false);
                } else if (PlayerControlView.this.repeatToggleButton != view) {
                    if (PlayerControlView.this.shuffleButton == view) {
                        PlayerControlView.this.controlDispatcher.dispatchSetShuffleModeEnabled(PlayerControlView.this.player, true ^ PlayerControlView.this.player.getShuffleModeEnabled());
                    }
                } else {
                    PlayerControlView.this.controlDispatcher.dispatchSetRepeatMode(PlayerControlView.this.player, RepeatModeUtil.getNextRepeatMode(PlayerControlView.this.player.getRepeatMode(), PlayerControlView.this.repeatToggleModes));
                }
            }
            PlayerControlView.this.hideAfterTimeout();
        }
    }
}
