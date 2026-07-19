package com.evie.sidescreen.exoplayer;

/* JADX INFO: loaded from: classes.dex */
public class ExoPlayerEvent {

    public static class Error extends ExoPlayerEvent {
    }

    public static class Finished extends ExoPlayerEvent {
    }

    public static class Pause extends ExoPlayerEvent {
    }

    public static class Play extends ExoPlayerEvent {
    }

    public static class Ready extends ExoPlayerEvent {
    }

    public static class Progress extends ExoPlayerEvent {
        private final long position;

        public Progress(long j) {
            this.position = j;
        }

        public long getPosition() {
            return this.position;
        }
    }

    public static class SizeChanged extends ExoPlayerEvent {
        private final int height;
        private final float pixelWidthHeightRatio;
        private final int unappliedRotationDegrees;
        private final int width;

        public SizeChanged(int i, int i2, int i3, float f) {
            this.width = i;
            this.height = i2;
            this.unappliedRotationDegrees = i3;
            this.pixelWidthHeightRatio = f;
        }
    }
}
