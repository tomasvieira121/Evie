package android.support.v4.media.session;

import android.media.session.MediaSession;

/* JADX INFO: loaded from: classes.dex */
class MediaSessionCompatApi21 {

    static class QueueItem {
        public static Object getDescription(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long getQueueId(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }
}
