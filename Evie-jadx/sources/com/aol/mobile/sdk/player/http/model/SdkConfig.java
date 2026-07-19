package com.aol.mobile.sdk.player.http.model;

/* JADX INFO: loaded from: classes.dex */
public final class SdkConfig {
    public final Services services;
    public final Telemetry telemetry;
    public final Tracking tracking;
    public final String userAgent;

    public SdkConfig(String str, Services services, Tracking tracking, Telemetry telemetry) {
        this.userAgent = str;
        this.services = services;
        this.tracking = tracking;
        this.telemetry = telemetry;
    }

    public interface Tracking {

        public static final class Native implements Tracking {
        }

        public static final class JavaScript implements Tracking {
            public final String source;
            public final Telemetry telemetry;

            public JavaScript(String str, Telemetry telemetry) {
                this.source = str;
                this.telemetry = telemetry;
            }
        }
    }

    public static final class Services {
        public final Video video;

        public Services(Video video) {
            this.video = video;
        }

        public static final class Video {
            public final String context;
            public final String url;

            public Video(String str, String str2) {
                this.context = str;
                this.url = str2;
            }
        }
    }

    public static class Telemetry {
        public final String context;
        public final String url;

        public Telemetry(String str, String str2) {
            this.context = str;
            this.url = str2;
        }
    }
}
