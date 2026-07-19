.class public final Lcom/evie/search/dagger/DaggerSearchComponent;
.super Ljava/lang/Object;
.source "DaggerSearchComponent.java"

# interfaces
.implements Lcom/evie/search/dagger/SearchComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/dagger/DaggerSearchComponent$Builder;
    }
.end annotation


# instance fields
.field private analyticsServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/analytics/AnalyticsService;",
            ">;"
        }
    .end annotation
.end field

.field private eventServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/events/EventService;",
            ">;"
        }
    .end annotation
.end field

.field private linkResolverProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/common/services/links/LinkResolver;",
            ">;"
        }
    .end annotation
.end field

.field private searchShortcutHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/search/SearchShortcutHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/evie/search/dagger/SearchModule;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->initialize(Lcom/evie/search/dagger/SearchModule;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/search/dagger/SearchModule;Lcom/evie/search/dagger/DaggerSearchComponent$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;-><init>(Lcom/evie/search/dagger/SearchModule;)V

    return-void
.end method

.method public static builder()Lcom/evie/search/dagger/DaggerSearchComponent$Builder;
    .locals 2

    .line 47
    new-instance v0, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;-><init>(Lcom/evie/search/dagger/DaggerSearchComponent$1;)V

    return-object v0
.end method

.method private initialize(Lcom/evie/search/dagger/SearchModule;)V
    .locals 2

    .line 53
    invoke-static {p1}, Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;->create(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/SearchModule_SearchShortcutHandlerFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 55
    invoke-static {p1}, Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;->create(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/SearchModule_AnalyticsServiceFactory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 56
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 58
    invoke-static {p1, v0}, Lcom/evie/search/dagger/SearchModule_EventServiceFactory;->create(Lcom/evie/search/dagger/SearchModule;Ljavax/inject/Provider;)Lcom/evie/search/dagger/SearchModule_EventServiceFactory;

    move-result-object v0

    .line 57
    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->eventServiceProvider:Ljavax/inject/Provider;

    .line 59
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->eventServiceProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->analyticsServiceProvider:Ljavax/inject/Provider;

    .line 61
    invoke-static {p1, v0, v1}, Lcom/evie/search/dagger/SearchModule_LinkResolverFactory;->create(Lcom/evie/search/dagger/SearchModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/evie/search/dagger/SearchModule_LinkResolverFactory;

    move-result-object p1

    .line 60
    invoke-static {p1}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private injectFrequentlyUsedItemPresenter(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    .line 157
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    .line 156
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 158
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 159
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 158
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectLocalItemPresenter(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 113
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 114
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 113
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectLocalSubitemPresenter(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 141
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 142
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 141
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectRecentItemPresenter(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 120
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 121
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 120
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectRemoteItemPresenter(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 127
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 128
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 127
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectRemoteSubitemPresenter(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;)Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    .line 148
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    .line 147
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 149
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 150
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 149
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectSearchPresenter(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 107
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 106
    invoke-static {p1, v0}, Lcom/evie/search/SearchPresenter_MembersInjector;->injectMSearchShortcutHandler(Lcom/evie/search/SearchPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method

.method private injectWebItemPresenter(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)Lcom/evie/search/recyclerview/presenter/WebItemPresenter;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->linkResolverProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/common/services/links/LinkResolver;

    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter_MembersInjector;->injectMLinkResolver(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;Lcom/evie/common/services/links/LinkResolver;)V

    .line 134
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent;->searchShortcutHandlerProvider:Ljavax/inject/Provider;

    .line 135
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/SearchShortcutHandler;

    .line 134
    invoke-static {p1, v0}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter_MembersInjector;->injectShortcutHandler(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;Lcom/evie/search/SearchShortcutHandler;)V

    return-object p1
.end method


# virtual methods
.method public inject(Lcom/evie/search/SearchPresenter;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectSearchPresenter(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectFrequentlyUsedItemPresenter(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectLocalItemPresenter(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectLocalSubitemPresenter(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectRecentItemPresenter(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectRemoteItemPresenter(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectRemoteSubitemPresenter(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;)Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/evie/search/dagger/DaggerSearchComponent;->injectWebItemPresenter(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    return-void
.end method
