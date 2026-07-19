package com.evie.sidescreen.youtube;

import android.app.IntentService;
import android.content.Intent;
import com.evie.sidescreen.relatedcontent.RelatedVideosActivity;

/* JADX INFO: loaded from: classes.dex */
public class YouTubeWarmerIntentService extends IntentService {
    public YouTubeWarmerIntentService() {
        super("YTWarmer");
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        RelatedVideosActivity.warmup(getApplicationContext());
    }
}
