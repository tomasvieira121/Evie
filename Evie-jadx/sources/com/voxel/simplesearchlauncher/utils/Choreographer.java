package com.voxel.simplesearchlauncher.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.util.ArrayDeque;
import java.util.Deque;

/* JADX INFO: loaded from: classes2.dex */
public class Choreographer {
    private static final String TAG = "Choreographer";
    private static Choreographer sInstance;
    private int mAnimationCounter;
    private Runnable mTimeoutRunnable;
    private Deque<Runnable> mAnimationQueue = new ArrayDeque();
    private Deque<Runnable> mNonAnimationQueue = new ArrayDeque();
    private Handler mHandler = new Handler(Looper.getMainLooper());

    public static synchronized Choreographer getInstance() {
        if (sInstance == null) {
            sInstance = new Choreographer();
        }
        return sInstance;
    }

    private Choreographer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void handleQueues() {
        Runnable runnableRemoveFirst;
        logState();
        if (!this.mAnimationQueue.isEmpty()) {
            runnableRemoveFirst = this.mAnimationQueue.removeFirst();
        } else {
            runnableRemoveFirst = (this.mAnimationCounter != 0 || this.mNonAnimationQueue.isEmpty()) ? null : this.mNonAnimationQueue.removeFirst();
        }
        if (runnableRemoveFirst != null) {
            runnableRemoveFirst.run();
            this.mHandler.post(new Runnable() { // from class: com.voxel.simplesearchlauncher.utils.-$$Lambda$Choreographer$EGbIqHK4dQ6yvhNDFPr8RzMTXMU
                @Override // java.lang.Runnable
                public final void run() {
                    this.f$0.handleQueues();
                }
            });
        }
    }

    public synchronized void postAnimationStart(final Runnable runnable) {
        execute(new Runnable() { // from class: com.voxel.simplesearchlauncher.utils.-$$Lambda$Choreographer$wjG3US3ph7dLpMTAcowpdjkwVEk
            @Override // java.lang.Runnable
            public final void run() {
                Choreographer.lambda$postAnimationStart$2(this.f$0, runnable);
            }
        });
    }

    public static /* synthetic */ void lambda$postAnimationStart$2(Choreographer choreographer, Runnable runnable) {
        if (choreographer.mTimeoutRunnable != null) {
            choreographer.mHandler.removeCallbacks(runnable);
        } else {
            choreographer.mTimeoutRunnable = choreographer.getTimeoutRunnable();
        }
        choreographer.mHandler.postDelayed(choreographer.mTimeoutRunnable, 2000L);
        choreographer.mAnimationCounter++;
        choreographer.mAnimationQueue.addLast(runnable);
        choreographer.handleQueues();
    }

    private Runnable getTimeoutRunnable() {
        return new Runnable() { // from class: com.voxel.simplesearchlauncher.utils.-$$Lambda$Choreographer$nQFhTMeZcvs5uXfxuN3pbjX21Gw
            @Override // java.lang.Runnable
            public final void run() {
                Choreographer.lambda$getTimeoutRunnable$3(this.f$0);
            }
        };
    }

    public static /* synthetic */ void lambda$getTimeoutRunnable$3(Choreographer choreographer) {
        Log.e(TAG, "Animation timeout");
        choreographer.logState();
        choreographer.mAnimationCounter = 0;
        choreographer.mTimeoutRunnable = null;
        choreographer.handleQueues();
    }

    public void animationEnded() {
        execute(new Runnable() { // from class: com.voxel.simplesearchlauncher.utils.-$$Lambda$Choreographer$R52HNZnnmm_XX5wPhfwOxETjG_Y
            @Override // java.lang.Runnable
            public final void run() {
                Choreographer.lambda$animationEnded$4(this.f$0);
            }
        });
    }

    public static /* synthetic */ void lambda$animationEnded$4(Choreographer choreographer) {
        int i = choreographer.mAnimationCounter;
        if (i == 0) {
            return;
        }
        choreographer.mAnimationCounter = i - 1;
        if (choreographer.mAnimationCounter == 0) {
            Runnable runnable = choreographer.mTimeoutRunnable;
            if (runnable != null) {
                choreographer.mHandler.removeCallbacks(runnable);
                choreographer.mTimeoutRunnable = null;
            }
            choreographer.handleQueues();
        }
    }

    public void execute(Runnable runnable) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            runnable.run();
        } else {
            this.mHandler.post(runnable);
        }
    }

    private void logState() {
        Log.d(TAG, String.format("mAnimationCounter: %d, mAnimationQueue: %d, mNonAnimationQueue: %d", Integer.valueOf(this.mAnimationCounter), Integer.valueOf(this.mAnimationQueue.size()), Integer.valueOf(this.mNonAnimationQueue.size())));
    }
}
