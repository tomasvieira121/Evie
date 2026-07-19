package com.google.android.exoplayer2.source;

import android.os.Handler;
import com.google.android.exoplayer2.C0762C;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.util.Assertions;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface MediaSourceEventListener {
    void onDownstreamFormatChanged(int i, Format format, int i2, Object obj, long j);

    void onLoadCanceled(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5);

    void onLoadCompleted(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5);

    void onLoadError(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3, long j4, long j5, IOException iOException, boolean z);

    void onLoadStarted(DataSpec dataSpec, int i, int i2, Format format, int i3, Object obj, long j, long j2, long j3);

    public static final class EventDispatcher {
        private final Handler handler;
        private final MediaSourceEventListener listener;
        private final long mediaTimeOffsetMs;

        public EventDispatcher(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            this(handler, mediaSourceEventListener, 0L);
        }

        public EventDispatcher(Handler handler, MediaSourceEventListener mediaSourceEventListener, long j) {
            this.handler = mediaSourceEventListener != null ? (Handler) Assertions.checkNotNull(handler) : null;
            this.listener = mediaSourceEventListener;
            this.mediaTimeOffsetMs = j;
        }

        public void loadStarted(final DataSpec dataSpec, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3) {
            Handler handler;
            if (this.listener == null || (handler = this.handler) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.1
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.this.listener.onLoadStarted(dataSpec, i, i2, format, i3, obj, EventDispatcher.this.adjustMediaTime(j), EventDispatcher.this.adjustMediaTime(j2), j3);
                }
            });
        }

        public void loadCompleted(DataSpec dataSpec, int i, long j, long j2, long j3) {
            loadCompleted(dataSpec, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public void loadCompleted(final DataSpec dataSpec, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5) {
            Handler handler;
            if (this.listener == null || (handler = this.handler) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.2
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.this.listener.onLoadCompleted(dataSpec, i, i2, format, i3, obj, EventDispatcher.this.adjustMediaTime(j), EventDispatcher.this.adjustMediaTime(j2), j3, j4, j5);
                }
            });
        }

        public void loadCanceled(DataSpec dataSpec, int i, long j, long j2, long j3) {
            loadCanceled(dataSpec, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3);
        }

        public void loadCanceled(final DataSpec dataSpec, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5) {
            Handler handler;
            if (this.listener == null || (handler = this.handler) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.3
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.this.listener.onLoadCanceled(dataSpec, i, i2, format, i3, obj, EventDispatcher.this.adjustMediaTime(j), EventDispatcher.this.adjustMediaTime(j2), j3, j4, j5);
                }
            });
        }

        public void loadError(DataSpec dataSpec, int i, long j, long j2, long j3, IOException iOException, boolean z) {
            loadError(dataSpec, i, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, j, j2, j3, iOException, z);
        }

        public void loadError(final DataSpec dataSpec, final int i, final int i2, final Format format, final int i3, final Object obj, final long j, final long j2, final long j3, final long j4, final long j5, final IOException iOException, final boolean z) {
            Handler handler;
            if (this.listener == null || (handler = this.handler) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.4
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.this.listener.onLoadError(dataSpec, i, i2, format, i3, obj, EventDispatcher.this.adjustMediaTime(j), EventDispatcher.this.adjustMediaTime(j2), j3, j4, j5, iOException, z);
                }
            });
        }

        public void downstreamFormatChanged(final int i, final Format format, final int i2, final Object obj, final long j) {
            Handler handler;
            if (this.listener == null || (handler = this.handler) == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher.6
                @Override // java.lang.Runnable
                public void run() {
                    EventDispatcher.this.listener.onDownstreamFormatChanged(i, format, i2, obj, EventDispatcher.this.adjustMediaTime(j));
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long adjustMediaTime(long j) {
            long jUsToMs = C0762C.usToMs(j);
            if (jUsToMs == -9223372036854775807L) {
                return -9223372036854775807L;
            }
            return this.mediaTimeOffsetMs + jUsToMs;
        }
    }
}
