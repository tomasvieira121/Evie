package com.evie.sidescreen.oathplayer;

import com.aol.mobile.sdk.player.model.properties.AdProperties;

/* JADX INFO: loaded from: classes.dex */
public class OathPlayerEvent {

    public static class AdClick extends OathPlayerEvent {
    }

    public static class BuilderNotReady extends OathPlayerEvent {
    }

    public static class BuilderReady extends OathPlayerEvent {
    }

    public static class Finished extends OathPlayerEvent {
    }

    public static class Pause extends OathPlayerEvent {
    }

    public static class Play extends OathPlayerEvent {
    }

    public static class Ready extends OathPlayerEvent {
    }

    public static class AdProgress extends OathPlayerEvent {
        public final long position;

        public AdProgress(long j) {
            this.position = j;
        }

        public long getPosition() {
            return this.position;
        }
    }

    public static class AdFinished extends OathPlayerEvent {
        public final AdProperties adProps;

        public AdFinished(AdProperties adProperties) {
            this.adProps = adProperties;
        }
    }

    public static class Progress extends OathPlayerEvent {
        public final long duration;
        public final long position;

        public Progress(long j, long j2) {
            this.position = j;
            this.duration = j2;
        }

        public long getPosition() {
            return this.position;
        }

        public long getDuration() {
            return this.duration;
        }
    }

    public static class Error extends OathPlayerEvent {
        public final String message;

        public Error(String str) {
            this.message = str;
        }

        public String getMessage() {
            return this.message;
        }
    }
}
