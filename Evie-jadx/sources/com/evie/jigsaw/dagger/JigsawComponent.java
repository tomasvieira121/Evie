package com.evie.jigsaw.dagger;

import android.app.Application;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.events.EventService;
import com.evie.jigsaw.JigsawActivity;
import com.evie.jigsaw.JigsawSettings;
import com.evie.jigsaw.components.actions.AbstractActionComponent;
import com.evie.jigsaw.components.actions.ActionRowComponent;
import com.evie.jigsaw.components.content.DetailsComponent;
import com.evie.jigsaw.components.content.MediaComponent;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.views.RichTextView;

/* JADX INFO: loaded from: classes.dex */
public interface JigsawComponent {
    AnalyticsService analyticsService();

    Application application();

    EventService events();

    ImageResolver imageResolver();

    void inject(JigsawActivity jigsawActivity);

    void inject(AbstractActionComponent.ActionItem actionItem);

    void inject(AbstractActionComponent<RecyclerView.ViewHolder> abstractActionComponent);

    void inject(ActionRowComponent actionRowComponent);

    void inject(DetailsComponent detailsComponent);

    void inject(MediaComponent mediaComponent);

    void inject(RichTextView richTextView);

    JigsawSettings settings();
}
