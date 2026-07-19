package com.evie.jigsaw;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import androidx.recyclerview.widget.RecyclerView;
import com.crashlytics.android.Crashlytics;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.events.EventService;
import com.evie.jigsaw.components.actions.AbstractActionComponent;
import com.evie.jigsaw.components.actions.ActionRowComponent;
import com.evie.jigsaw.components.content.DetailsComponent;
import com.evie.jigsaw.components.content.MediaComponent;
import com.evie.jigsaw.dagger.DaggerJigsawComponent;
import com.evie.jigsaw.dagger.JigsawComponent;
import com.evie.jigsaw.dagger.JigsawModule;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.views.RichTextView;

/* JADX INFO: loaded from: classes.dex */
public class Jigsaw implements JigsawComponent {
    private final JigsawComponent resources;

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public AnalyticsService analyticsService() {
        return this.resources.analyticsService();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public Application application() {
        return this.resources.application();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public EventService events() {
        return this.resources.events();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public ImageResolver imageResolver() {
        return this.resources.imageResolver();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(JigsawActivity jigsawActivity) {
        this.resources.inject(jigsawActivity);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(AbstractActionComponent.ActionItem actionItem) {
        this.resources.inject(actionItem);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(AbstractActionComponent<RecyclerView.ViewHolder> abstractActionComponent) {
        this.resources.inject(abstractActionComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(ActionRowComponent actionRowComponent) {
        this.resources.inject(actionRowComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(DetailsComponent detailsComponent) {
        this.resources.inject(detailsComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(MediaComponent mediaComponent) {
        this.resources.inject(mediaComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(RichTextView richTextView) {
        this.resources.inject(richTextView);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public JigsawSettings settings() {
        return this.resources.settings();
    }

    public Jigsaw(JigsawSettings jigsawSettings) {
        this.resources = DaggerJigsawComponent.builder().jigsawModule(new JigsawModule(jigsawSettings)).build();
    }

    public static Intent prepare(Context context, Uri uri) {
        if (uri == null) {
            try {
                throw new RuntimeException();
            } catch (RuntimeException e) {
                Crashlytics.logException(e);
            }
        }
        Intent intent = new Intent(context, (Class<?>) JigsawActivity.class);
        if (!(getActivity(context) instanceof JigsawActivity)) {
            intent.addFlags(268468224);
        }
        intent.setData(uri);
        return intent;
    }

    private static Activity getActivity(Context context) {
        while (context instanceof ContextWrapper) {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        return null;
    }
}
