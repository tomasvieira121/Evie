.class public final Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;
.super Ljava/lang/Object;
.source "DaggerJigsawComponent.java"

# interfaces
.implements Lcom/evie/jigsaw/dagger/JigsawComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;
    }
.end annotation


# instance fields
.field private provideEventServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/events/EventService;",
            ">;"
        }
    .end annotation
.end field

.field private providesActionPreferencesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;",
            ">;"
        }
    .end annotation
.end field

.field private providesAnalyticsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private providesApplicationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private providesImageAttributionServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/attribution/ImageAttributionService;",
            ">;"
        }
    .end annotation
.end field

.field private providesImageResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/images/ImageResolver;",
            ">;"
        }
    .end annotation
.end field

.field private providesLayoutServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/layout/LayoutService;",
            ">;"
        }
    .end annotation
.end field

.field private providesLinkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/links/LinkResolver;",
            ">;"
        }
    .end annotation
.end field

.field private providesSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/JigsawSettings;",
            ">;"
        }
    .end annotation
.end field

.field private providesShortcutServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/jigsaw/services/shortcuts/ShortcutService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->initialize(Lcom/evie/jigsaw/dagger/JigsawModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;)V

    return-void
.end method

.method public static builder()Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;
    .locals 2

    .line 63
    new-instance v0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;-><init>(Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/jigsaw/dagger/JigsawModule;)V
    .locals 2

    .line 69
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesApplicationFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    .line 72
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesAnalyticsServiceFactory;

    move-result-object v0

    .line 71
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 73
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 75
    invoke-static {p1, v0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvideEventServiceFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvideEventServiceFactory;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->provideEventServiceProvider:Ljavax/inject/Provider;

    .line 78
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesSettingsFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesSettingsProvider:Ljavax/inject/Provider;

    .line 80
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageResolverFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageResolverFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageResolverProvider:Ljavax/inject/Provider;

    .line 82
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLayoutServiceFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLayoutServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLayoutServiceProvider:Ljavax/inject/Provider;

    .line 83
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->provideEventServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 85
    invoke-static {p1, v0, v1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesLinkResolverFactory;

    move-result-object v0

    .line 84
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    .line 89
    invoke-static {p1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesActionPreferencesFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesActionPreferencesFactory;

    move-result-object v0

    .line 88
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesActionPreferencesProvider:Ljavax/inject/Provider;

    .line 90
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageResolverProvider:Ljavax/inject/Provider;

    .line 92
    invoke-static {p1, v0}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesImageAttributionServiceFactory;

    move-result-object v0

    .line 91
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageAttributionServiceProvider:Ljavax/inject/Provider;

    .line 94
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageResolverProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 96
    invoke-static {p1, v0, v1}, Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;->create(Lcom/evie/jigsaw/dagger/JigsawModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/jigsaw/dagger/JigsawModule_ProvidesShortcutServiceFactory;

    move-result-object p1

    .line 95
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesShortcutServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectAbstractActionComponent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesShortcutServiceProvider:Ljavax/inject/Provider;

    .line 185
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    .line 184
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_MembersInjector;->injectShortcutService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)V

    return-object p1
.end method

.method private injectActionItem(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->provideEventServiceProvider:Ljavax/inject/Provider;

    .line 192
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/events/EventService;

    .line 191
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;->injectEventService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/common/services/events/EventService;)V

    .line 193
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    .line 194
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    .line 193
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;->injectLinkResolver(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/common/services/links/LinkResolver;)V

    .line 195
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesShortcutServiceProvider:Ljavax/inject/Provider;

    .line 196
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    .line 195
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;->injectShortcutService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)V

    .line 197
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesActionPreferencesProvider:Ljavax/inject/Provider;

    .line 198
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    .line 197
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;->injectPreferences(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V

    .line 199
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageResolverProvider:Ljavax/inject/Provider;

    .line 200
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/images/ImageResolver;

    .line 199
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_ActionItem_MembersInjector;->injectImageResolver(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Lcom/evie/jigsaw/services/images/ImageResolver;)V

    return-object p1
.end method

.method private injectActionRowComponent(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)Lcom/evie/jigsaw/components/actions/ActionRowComponent;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesShortcutServiceProvider:Ljavax/inject/Provider;

    .line 206
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    .line 205
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent_MembersInjector;->injectShortcutService(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;Lcom/evie/jigsaw/services/shortcuts/ShortcutService;)V

    .line 207
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesActionPreferencesProvider:Ljavax/inject/Provider;

    .line 208
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    .line 207
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent_MembersInjector;->injectPreferences(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V

    .line 209
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 210
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/analytics/AnalyticsService;

    .line 209
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent_MembersInjector;->injectAnalyticsService(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/common/services/analytics/AnalyticsService;)V

    .line 211
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    .line 212
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    .line 211
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/actions/ActionRowComponent_MembersInjector;->injectLinkResolver(Lcom/evie/jigsaw/components/actions/ActionRowComponent;Lcom/evie/common/services/links/LinkResolver;)V

    return-object p1
.end method

.method private injectDetailsComponent(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/components/content/DetailsComponent;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    .line 169
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    .line 168
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/DetailsComponent_MembersInjector;->injectLinkResolver(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/common/services/links/LinkResolver;)V

    .line 170
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesActionPreferencesProvider:Ljavax/inject/Provider;

    .line 171
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    .line 170
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/DetailsComponent_MembersInjector;->injectActionPreferenceStore(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)V

    .line 172
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageAttributionServiceProvider:Ljavax/inject/Provider;

    .line 173
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    .line 172
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/DetailsComponent_MembersInjector;->injectAttributionService(Lcom/evie/jigsaw/components/content/DetailsComponent;Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)V

    return-object p1
.end method

.method private injectJigsawActivity(Lcom/evie/jigsaw/JigsawActivity;)Lcom/evie/jigsaw/JigsawActivity;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLayoutServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/layout/LayoutService;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/JigsawActivity_MembersInjector;->injectLayouts(Lcom/evie/jigsaw/JigsawActivity;Lcom/evie/jigsaw/services/layout/LayoutService;)V

    return-object p1
.end method

.method private injectMediaComponent(Lcom/evie/jigsaw/components/content/MediaComponent;)Lcom/evie/jigsaw/components/content/MediaComponent;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/MediaComponent_MembersInjector;->injectLinkResolver(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/common/services/links/LinkResolver;)V

    .line 218
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    .line 219
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/analytics/AnalyticsService;

    .line 218
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/MediaComponent_MembersInjector;->injectAnalyticsService(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/common/services/analytics/AnalyticsService;)V

    .line 220
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageAttributionServiceProvider:Ljavax/inject/Provider;

    .line 221
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/attribution/ImageAttributionService;

    .line 220
    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/MediaComponent_MembersInjector;->injectAttributionService(Lcom/evie/jigsaw/components/content/MediaComponent;Lcom/evie/jigsaw/services/attribution/ImageAttributionService;)V

    return-object p1
.end method

.method private injectRichTextView(Lcom/evie/jigsaw/views/RichTextView;)Lcom/evie/jigsaw/views/RichTextView;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesLinkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/views/RichTextView_MembersInjector;->injectMLinkResolver(Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/common/services/links/LinkResolver;)V

    return-object p1
.end method


# virtual methods
.method public analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesAnalyticsServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/analytics/AnalyticsService;

    return-object v0
.end method

.method public application()Landroid/app/Application;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesApplicationProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    return-object v0
.end method

.method public events()Lcom/evie/common/services/events/EventService;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->provideEventServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/events/EventService;

    return-object v0
.end method

.method public imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesImageResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/services/images/ImageResolver;

    return-object v0
.end method

.method public inject(Lcom/evie/jigsaw/JigsawActivity;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectJigsawActivity(Lcom/evie/jigsaw/JigsawActivity;)Lcom/evie/jigsaw/JigsawActivity;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 0

    .line 149
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectActionItem(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 144
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectAbstractActionComponent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectActionRowComponent(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 0

    .line 134
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectDetailsComponent(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/components/content/DetailsComponent;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/content/MediaComponent;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectMediaComponent(Lcom/evie/jigsaw/components/content/MediaComponent;)Lcom/evie/jigsaw/components/content/MediaComponent;

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/views/RichTextView;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->injectRichTextView(Lcom/evie/jigsaw/views/RichTextView;)Lcom/evie/jigsaw/views/RichTextView;

    return-void
.end method

.method public settings()Lcom/evie/jigsaw/JigsawSettings;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->providesSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/JigsawSettings;

    return-object v0
.end method
