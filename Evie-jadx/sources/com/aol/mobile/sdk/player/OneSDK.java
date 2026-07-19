package com.aol.mobile.sdk.player;

import android.content.Context;
import android.os.Handler;
import com.aol.mobile.sdk.player.http.HttpService;
import com.aol.mobile.sdk.player.http.model.SdkConfig;
import com.aol.mobile.sdk.player.metrics.MetricsPlugin;
import com.aol.mobile.sdk.player.p002js.JsMetricsPlugin;
import com.aol.mobile.sdk.player.telemetry.AdPlugin;
import com.aol.mobile.sdk.player.telemetry.TelemetryPlugin;
import com.aol.mobile.sdk.player.telemetry.TelemetrySender;
import com.aol.mobile.sdk.player.telemetry.VrmTelemetry;
import com.aol.mobile.sdk.player.utils.VideoProviderUtils;
import com.aol.mobile.sdk.player.utils.VolumeGetter;
import com.aol.mobile.sdk.renderer.RenderersRegistry;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public final class OneSDK {
    private AdPlugin adPlugin;
    private HttpService httpService;
    private final HashSet<Plugin> plugins = new HashSet<>();
    final RenderersRegistry renderersRegistry;
    private VideoProvider videoProvider;
    private VrmTelemetry vrmTelemetry;

    public OneSDK(Context context, SdkConfig sdkConfig) {
        this.renderersRegistry = new RenderersRegistry(context);
        this.httpService = new HttpService(new Handler(), sdkConfig.userAgent);
        String str = sdkConfig.services.video.url;
        String str2 = sdkConfig.services.video.context;
        HttpService httpService = this.httpService;
        this.videoProvider = new VideoProvider(httpService, str, str2, new TelemetrySender(httpService, sdkConfig.telemetry.context, sdkConfig.telemetry.url));
        VolumeGetter volumeGetter = new VolumeGetter(context);
        if (sdkConfig.tracking instanceof SdkConfig.Tracking.Native) {
            addPlugin(new MetricsPlugin(this.httpService, volumeGetter));
        } else if (sdkConfig.tracking instanceof SdkConfig.Tracking.JavaScript) {
            addPlugin(new JsMetricsPlugin((SdkConfig.Tracking.JavaScript) sdkConfig.tracking, this.httpService));
        }
        addPlugin(new TelemetryPlugin(this.httpService, sdkConfig.telemetry));
        this.vrmTelemetry = new VrmTelemetry(this.httpService, sdkConfig.telemetry);
        this.adPlugin = new AdPlugin(this.httpService, volumeGetter);
    }

    public void addPlugin(Plugin plugin) {
        this.plugins.add(plugin);
    }

    public void removePlugin(Plugin plugin) {
        this.plugins.remove(plugin);
    }

    public VideoProvider getVideoProvider() {
        return this.videoProvider;
    }

    public PlayerBuilder createBuilder() {
        return new PlayerBuilder(this);
    }

    Player constructPlayer(VideoProviderResponse videoProviderResponse, Player player) {
        int i;
        player.setAdManager(new AdManager(this.httpService.userAgent, VideoProviderUtils.getAdsTimelines(videoProviderResponse), player, 500L, 2000L));
        Iterator<Plugin> it = this.plugins.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            PlayerStateObserver[] playerStateObserverArrProvideObservers = it.next().provideObservers(videoProviderResponse);
            int length = playerStateObserverArrProvideObservers.length;
            while (i < length) {
                player.addPlayerStateObserver(playerStateObserverArrProvideObservers[i]);
                i++;
            }
        }
        StateObserver[] stateObserverArrProvideObservers = this.adPlugin.provideObservers(videoProviderResponse);
        int length2 = stateObserverArrProvideObservers.length;
        while (i < length2) {
            player.addStateObserver(stateObserverArrProvideObservers[i]);
            i++;
        }
        player.addStateObserver(this.vrmTelemetry.getStateObserver());
        return player;
    }
}
