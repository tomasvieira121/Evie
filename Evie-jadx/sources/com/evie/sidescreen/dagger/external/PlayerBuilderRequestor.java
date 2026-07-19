package com.evie.sidescreen.dagger.external;

import com.aol.mobile.sdk.player.PlayerBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class PlayerBuilderRequestor {
    Iterator<PlayerBuilderRequestCallback> iterator;
    List<PlayerBuilderRequestCallback> mCallbackList = new ArrayList();
    Exception mException;
    PlayerBuilder mPlayerBuilder;

    public interface PlayerBuilderRequestCallback {
        void onFailure(Exception exc);

        void onSuccess(PlayerBuilder playerBuilder);
    }

    public synchronized void fulfillRequests(PlayerBuilder playerBuilder) {
        this.mPlayerBuilder = playerBuilder;
        resolveRequests();
    }

    public synchronized void failRequests(Exception exc) {
        this.mException = exc;
        resolveRequests();
    }

    public synchronized void request(PlayerBuilderRequestCallback playerBuilderRequestCallback) {
        this.mCallbackList.add(playerBuilderRequestCallback);
        resolveRequests();
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    private synchronized void resolveRequests() {
        if (this.mPlayerBuilder != null || this.mException != null) {
            this.iterator = this.mCallbackList.iterator();
            while (this.iterator.hasNext()) {
                PlayerBuilderRequestCallback next = this.iterator.next();
                if (this.mPlayerBuilder != null) {
                    next.onSuccess(this.mPlayerBuilder);
                } else if (this.mException != null) {
                    next.onFailure(this.mException);
                }
                this.iterator.remove();
            }
        }
    }
}
