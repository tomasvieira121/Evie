package com.evie.jigsaw.dagger;

import android.app.Application;
import androidx.recyclerview.widget.RecyclerView;
import com.evie.common.services.analytics.AnalyticsService;
import com.evie.common.services.events.EventService;
import com.evie.common.services.links.LinkResolver;
import com.evie.jigsaw.JigsawActivity;
import com.evie.jigsaw.JigsawActivity_MembersInjector;
import com.evie.jigsaw.JigsawSettings;
import com.evie.jigsaw.components.actions.AbstractActionComponent;
import com.evie.jigsaw.components.actions.AbstractActionComponent_ActionItem_MembersInjector;
import com.evie.jigsaw.components.actions.AbstractActionComponent_MembersInjector;
import com.evie.jigsaw.components.actions.ActionRowComponent;
import com.evie.jigsaw.components.actions.ActionRowComponent_MembersInjector;
import com.evie.jigsaw.components.content.DetailsComponent;
import com.evie.jigsaw.components.content.DetailsComponent_MembersInjector;
import com.evie.jigsaw.components.content.MediaComponent;
import com.evie.jigsaw.components.content.MediaComponent_MembersInjector;
import com.evie.jigsaw.services.actions.ActionPreferenceStore;
import com.evie.jigsaw.services.attribution.ImageAttributionService;
import com.evie.jigsaw.services.images.ImageResolver;
import com.evie.jigsaw.services.layout.LayoutService;
import com.evie.jigsaw.services.shortcuts.ShortcutService;
import com.evie.jigsaw.views.RichTextView;
import com.evie.jigsaw.views.RichTextView_MembersInjector;
import dagger.internal.DoubleCheck;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: loaded from: classes.dex */
public final class DaggerJigsawComponent implements JigsawComponent {
    private Provider<EventService> provideEventServiceProvider;
    private Provider<ActionPreferenceStore> providesActionPreferencesProvider;
    private Provider<AnalyticsService> providesAnalyticsServiceProvider;
    private Provider<Application> providesApplicationProvider;
    private Provider<ImageAttributionService> providesImageAttributionServiceProvider;
    private Provider<ImageResolver> providesImageResolverProvider;
    private Provider<LayoutService> providesLayoutServiceProvider;
    private Provider<LinkResolver> providesLinkResolverProvider;
    private Provider<JigsawSettings> providesSettingsProvider;
    private Provider<ShortcutService> providesShortcutServiceProvider;

    private DaggerJigsawComponent(JigsawModule jigsawModule) {
        initialize(jigsawModule);
    }

    public static Builder builder() {
        return new Builder();
    }

    private void initialize(JigsawModule jigsawModule) {
        this.providesApplicationProvider = DoubleCheck.provider(JigsawModule_ProvidesApplicationFactory.create(jigsawModule));
        this.providesAnalyticsServiceProvider = DoubleCheck.provider(JigsawModule_ProvidesAnalyticsServiceFactory.create(jigsawModule));
        this.provideEventServiceProvider = DoubleCheck.provider(JigsawModule_ProvideEventServiceFactory.create(jigsawModule, this.providesAnalyticsServiceProvider));
        this.providesSettingsProvider = DoubleCheck.provider(JigsawModule_ProvidesSettingsFactory.create(jigsawModule));
        this.providesImageResolverProvider = DoubleCheck.provider(JigsawModule_ProvidesImageResolverFactory.create(jigsawModule));
        this.providesLayoutServiceProvider = DoubleCheck.provider(JigsawModule_ProvidesLayoutServiceFactory.create(jigsawModule));
        this.providesLinkResolverProvider = DoubleCheck.provider(JigsawModule_ProvidesLinkResolverFactory.create(jigsawModule, this.provideEventServiceProvider, this.providesAnalyticsServiceProvider));
        this.providesActionPreferencesProvider = DoubleCheck.provider(JigsawModule_ProvidesActionPreferencesFactory.create(jigsawModule));
        this.providesImageAttributionServiceProvider = DoubleCheck.provider(JigsawModule_ProvidesImageAttributionServiceFactory.create(jigsawModule, this.providesImageResolverProvider));
        this.providesShortcutServiceProvider = DoubleCheck.provider(JigsawModule_ProvidesShortcutServiceFactory.create(jigsawModule, this.providesImageResolverProvider, this.providesAnalyticsServiceProvider));
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public Application application() {
        return this.providesApplicationProvider.get();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public EventService events() {
        return this.provideEventServiceProvider.get();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public JigsawSettings settings() {
        return this.providesSettingsProvider.get();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public ImageResolver imageResolver() {
        return this.providesImageResolverProvider.get();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public AnalyticsService analyticsService() {
        return this.providesAnalyticsServiceProvider.get();
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(JigsawActivity jigsawActivity) {
        injectJigsawActivity(jigsawActivity);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(DetailsComponent detailsComponent) {
        injectDetailsComponent(detailsComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(RichTextView richTextView) {
        injectRichTextView(richTextView);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(AbstractActionComponent<RecyclerView.ViewHolder> abstractActionComponent) {
        injectAbstractActionComponent(abstractActionComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(AbstractActionComponent.ActionItem actionItem) {
        injectActionItem(actionItem);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(ActionRowComponent actionRowComponent) {
        injectActionRowComponent(actionRowComponent);
    }

    @Override // com.evie.jigsaw.dagger.JigsawComponent
    public void inject(MediaComponent mediaComponent) {
        injectMediaComponent(mediaComponent);
    }

    private JigsawActivity injectJigsawActivity(JigsawActivity jigsawActivity) {
        JigsawActivity_MembersInjector.injectLayouts(jigsawActivity, this.providesLayoutServiceProvider.get());
        return jigsawActivity;
    }

    private DetailsComponent injectDetailsComponent(DetailsComponent detailsComponent) {
        DetailsComponent_MembersInjector.injectLinkResolver(detailsComponent, this.providesLinkResolverProvider.get());
        DetailsComponent_MembersInjector.injectActionPreferenceStore(detailsComponent, this.providesActionPreferencesProvider.get());
        DetailsComponent_MembersInjector.injectAttributionService(detailsComponent, this.providesImageAttributionServiceProvider.get());
        return detailsComponent;
    }

    private RichTextView injectRichTextView(RichTextView richTextView) {
        RichTextView_MembersInjector.injectMLinkResolver(richTextView, this.providesLinkResolverProvider.get());
        return richTextView;
    }

    private AbstractActionComponent<RecyclerView.ViewHolder> injectAbstractActionComponent(AbstractActionComponent<RecyclerView.ViewHolder> abstractActionComponent) {
        AbstractActionComponent_MembersInjector.injectShortcutService(abstractActionComponent, this.providesShortcutServiceProvider.get());
        return abstractActionComponent;
    }

    private AbstractActionComponent.ActionItem injectActionItem(AbstractActionComponent.ActionItem actionItem) {
        AbstractActionComponent_ActionItem_MembersInjector.injectEventService(actionItem, this.provideEventServiceProvider.get());
        AbstractActionComponent_ActionItem_MembersInjector.injectLinkResolver(actionItem, this.providesLinkResolverProvider.get());
        AbstractActionComponent_ActionItem_MembersInjector.injectShortcutService(actionItem, this.providesShortcutServiceProvider.get());
        AbstractActionComponent_ActionItem_MembersInjector.injectPreferences(actionItem, this.providesActionPreferencesProvider.get());
        AbstractActionComponent_ActionItem_MembersInjector.injectImageResolver(actionItem, this.providesImageResolverProvider.get());
        return actionItem;
    }

    private ActionRowComponent injectActionRowComponent(ActionRowComponent actionRowComponent) {
        AbstractActionComponent_MembersInjector.injectShortcutService(actionRowComponent, this.providesShortcutServiceProvider.get());
        ActionRowComponent_MembersInjector.injectPreferences(actionRowComponent, this.providesActionPreferencesProvider.get());
        ActionRowComponent_MembersInjector.injectAnalyticsService(actionRowComponent, this.providesAnalyticsServiceProvider.get());
        ActionRowComponent_MembersInjector.injectLinkResolver(actionRowComponent, this.providesLinkResolverProvider.get());
        return actionRowComponent;
    }

    private MediaComponent injectMediaComponent(MediaComponent mediaComponent) {
        MediaComponent_MembersInjector.injectLinkResolver(mediaComponent, this.providesLinkResolverProvider.get());
        MediaComponent_MembersInjector.injectAnalyticsService(mediaComponent, this.providesAnalyticsServiceProvider.get());
        MediaComponent_MembersInjector.injectAttributionService(mediaComponent, this.providesImageAttributionServiceProvider.get());
        return mediaComponent;
    }

    public static final class Builder {
        private JigsawModule jigsawModule;

        private Builder() {
        }

        public Builder jigsawModule(JigsawModule jigsawModule) {
            this.jigsawModule = (JigsawModule) Preconditions.checkNotNull(jigsawModule);
            return this;
        }

        public JigsawComponent build() {
            Preconditions.checkBuilderRequirement(this.jigsawModule, JigsawModule.class);
            return new DaggerJigsawComponent(this.jigsawModule);
        }
    }
}
