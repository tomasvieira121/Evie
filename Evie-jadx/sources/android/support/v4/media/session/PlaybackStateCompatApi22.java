package android.support.v4.media.session;

import android.media.session.PlaybackState;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
class PlaybackStateCompatApi22 {
    public static Bundle getExtras(Object obj) {
        return ((PlaybackState) obj).getExtras();
    }
}
