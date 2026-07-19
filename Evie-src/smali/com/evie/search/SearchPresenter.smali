.class public Lcom/evie/search/SearchPresenter;
.super Ljava/lang/Object;
.source "SearchPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;,
        Lcom/evie/search/SearchPresenter$SearchListExpandListener;,
        Lcom/evie/search/SearchPresenter$SearchStateChangeListener;,
        Lcom/evie/search/SearchPresenter$SearchState;,
        Lcom/evie/search/SearchPresenter$SearchObserverState;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/evie/search/SearchAdapter;

.field private mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

.field private mAvailableHeight:I

.field private mContactManager:Lcom/evie/search/local/ContactManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentDisposable:Lio/reactivex/disposables/Disposable;

.field private mCurrentQuery:Ljava/lang/String;

.field private mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

.field private final mCustomPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomRunnable:Ljava/lang/Runnable;

.field private mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

.field private final mFrequentlyUsedHeight:I

.field private final mFrequentsHeader:Ljava/lang/String;

.field private final mItemHeight:I

.field private mListExpandCounter:I

.field private mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

.field private final mLocalHeader:Ljava/lang/String;

.field private mLocalItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/model/LocalSearchItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalItemsShowing:I

.field private final mLocalPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

.field private mRecentDisposable:Lio/reactivex/disposables/Disposable;

.field private mRecentPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecentsHeader:Ljava/lang/String;

.field private mRemoteAllowed:Z

.field private final mRemoteHeader:Ljava/lang/String;

.field private final mRemotePresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteSearchManager:Lcom/evie/search/remote/RemoteSearchManager;

.field private mSearchListExpandListener:Lcom/evie/search/SearchPresenter$SearchListExpandListener;

.field private mSearchQueryChangeListener:Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;

.field private mSearchSettings:Lcom/evie/common/SearchSettings;

.field mSearchShortcutHandler:Lcom/evie/search/SearchShortcutHandler;

.field private mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

.field private mSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private final mUnavailableHeight:I

.field private final mWebPresenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation
.end field

.field private mWebSearchAllowed:Z

.field private mWebSearchManager:Lcom/evie/search/web/WebSearchManager;

.field private final searchComponent:Lcom/evie/search/dagger/SearchComponent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/evie/models/frequentlyused/FrequentlyUsedModel;Lcom/evie/search/AppAvailabilityProvider;Ljava/lang/String;)V
    .locals 3

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/evie/search/SearchPresenter;->mListExpandCounter:I

    .line 108
    iput v0, p0, Lcom/evie/search/SearchPresenter;->mAvailableHeight:I

    const-string v1, ""

    .line 110
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    const/4 v1, 0x0

    .line 111
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    .line 115
    iput-boolean v0, p0, Lcom/evie/search/SearchPresenter;->mRemoteAllowed:Z

    .line 116
    iput-boolean v0, p0, Lcom/evie/search/SearchPresenter;->mWebSearchAllowed:Z

    .line 269
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 270
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCustomRunnable:Ljava/lang/Runnable;

    .line 313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    .line 314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mRemotePresenters:Ljava/util/List;

    .line 315
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    .line 316
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mWebPresenters:Ljava/util/List;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mSearchSettings:Lcom/evie/common/SearchSettings;

    .line 123
    new-instance v1, Lcom/evie/search/SearchAdapter;

    invoke-direct {v1}, Lcom/evie/search/SearchAdapter;-><init>()V

    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    .line 124
    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    .line 125
    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    .line 127
    iget-object p2, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    if-nez p2, :cond_0

    .line 128
    new-instance p2, Lcom/evie/search/AppAvailabilityProvider$DefaultProvider;

    invoke-direct {p2}, Lcom/evie/search/AppAvailabilityProvider$DefaultProvider;-><init>()V

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    .line 131
    :cond_0
    invoke-static {}, Lcom/evie/search/dagger/DaggerSearchComponent;->builder()Lcom/evie/search/dagger/DaggerSearchComponent$Builder;

    move-result-object p2

    new-instance p3, Lcom/evie/search/dagger/SearchModule;

    new-instance v1, Lcom/evie/common/services/analytics/BaseAnalyticsService;

    invoke-direct {v1}, Lcom/evie/common/services/analytics/BaseAnalyticsService;-><init>()V

    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-direct {p3, p1, v1, v2}, Lcom/evie/search/dagger/SearchModule;-><init>(Landroid/content/Context;Lcom/evie/common/services/analytics/AnalyticsService;Lcom/evie/search/SearchAdapter;)V

    .line 132
    invoke-virtual {p2, p3}, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;->searchModule(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/DaggerSearchComponent$Builder;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;->build()Lcom/evie/search/dagger/SearchComponent;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    .line 138
    iget-object p2, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {p2, p0}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/SearchPresenter;)V

    .line 141
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/api/LocationHandler;->init(Landroid/content/Context;)V

    .line 143
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    .line 145
    new-instance p2, Lcom/evie/search/-$$Lambda$SearchPresenter$fkUNgwFswgpz5_SYBlqwPQFpP-I;

    invoke-direct {p2, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$fkUNgwFswgpz5_SYBlqwPQFpP-I;-><init>(Lcom/evie/search/SearchPresenter;)V

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    const-string p2, "com.evie.search"

    .line 151
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    iget-object p3, p0, Lcom/evie/search/SearchPresenter;->mSharedPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 152
    invoke-interface {p2, p3}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 154
    iget-object p2, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 155
    sget p3, Lcom/evie/search/R$string;->search_frequently_used_header:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mFrequentsHeader:Ljava/lang/String;

    .line 156
    sget p3, Lcom/evie/search/R$string;->search_recent_results_header:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mRecentsHeader:Ljava/lang/String;

    .line 157
    sget p3, Lcom/evie/search/R$string;->search_local_results_header:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mLocalHeader:Ljava/lang/String;

    .line 158
    sget p3, Lcom/evie/search/R$string;->search_remote_results_header:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mRemoteHeader:Ljava/lang/String;

    .line 159
    sget p3, Lcom/evie/search/R$dimen;->search_header_top_spacing:I

    .line 160
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v0, Lcom/evie/search/R$dimen;->search_header_text_size:I

    .line 161
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    sget v0, Lcom/evie/search/R$dimen;->frequently_used_item_height:I

    .line 162
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    sget v0, Lcom/evie/search/R$dimen;->search_delimiter_small_height:I

    .line 163
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p0, Lcom/evie/search/SearchPresenter;->mFrequentlyUsedHeight:I

    .line 164
    sget p3, Lcom/evie/search/R$dimen;->search_header_top_spacing:I

    .line 165
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v0, Lcom/evie/search/R$dimen;->search_header_text_size:I

    .line 166
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    sget v0, Lcom/evie/search/R$dimen;->keyboard_estimate_height:I

    .line 167
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p3, v0

    iput p3, p0, Lcom/evie/search/SearchPresenter;->mUnavailableHeight:I

    .line 168
    sget p3, Lcom/evie/search/R$dimen;->search_item_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/evie/search/SearchPresenter;->mItemHeight:I

    const/4 p2, 0x1

    .line 170
    invoke-static {p1, p2}, Lcom/evie/search/local/LocalSearchManager;->getInstance(Landroid/content/Context;Z)Lcom/evie/search/local/LocalSearchManager;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    .line 171
    new-instance p2, Lcom/evie/search/remote/RemoteSearchManager;

    invoke-direct {p2, p4}, Lcom/evie/search/remote/RemoteSearchManager;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mRemoteSearchManager:Lcom/evie/search/remote/RemoteSearchManager;

    .line 172
    new-instance p2, Lcom/evie/search/web/WebSearchManager;

    invoke-direct {p2}, Lcom/evie/search/web/WebSearchManager;-><init>()V

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mWebSearchManager:Lcom/evie/search/web/WebSearchManager;

    .line 173
    invoke-static {p1}, Lcom/evie/search/local/LocalAppsManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/LocalAppsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/evie/search/SearchPresenter;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    .line 174
    invoke-static {p1}, Lcom/evie/search/local/ContactManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mContactManager:Lcom/evie/search/local/ContactManager;

    .line 176
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {p1}, Lcom/evie/common/SearchSettings;->getIncludeFrequentlyUsed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/evie/search/SearchPresenter;->setupRecentObservable(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchPresenter$SearchStateChangeListener;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/search/SearchPresenter;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/evie/search/SearchPresenter;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mWebPresenters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/SearchAdapter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/evie/search/SearchPresenter;Lio/reactivex/disposables/Disposable;)Lio/reactivex/disposables/Disposable;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mRecentDisposable:Lio/reactivex/disposables/Disposable;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mRecentPresenters:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/evie/search/SearchPresenter;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/local/LocalAppsManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/evie/search/SearchPresenter;Lcom/evie/search/model/LocalSearchItem;)Z
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/evie/search/SearchPresenter;->isHiddenFromSearch(Lcom/evie/search/model/LocalSearchItem;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/evie/search/SearchPresenter;)Landroid/content/Context;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/search/SearchPresenter;)Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mLocalHeader:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/evie/search/SearchPresenter;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mRemotePresenters:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$800(Lcom/evie/search/SearchPresenter;)Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    return-object p0
.end method

.method static synthetic access$900(Lcom/evie/search/SearchPresenter;)Ljava/util/List;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    return-object p0
.end method

.method private generateLocalSubitems(Lcom/evie/search/model/LocalSearchItem;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/search/model/LocalSearchItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;",
            ">;"
        }
    .end annotation

    .line 465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 468
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CONTACT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 470
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mContactManager:Lcom/evie/search/local/ContactManager;

    invoke-virtual {v1, p1}, Lcom/evie/search/local/ContactManager;->contactRecentlyUsed(Lcom/evie/search/model/LocalSearchItem;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 471
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mContactManager:Lcom/evie/search/local/ContactManager;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/evie/search/local/ContactManager;->getContactData(Ljava/lang/String;)Lcom/evie/search/model/ContactData;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/evie/search/model/ContactData;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/search/model/ActionData;

    .line 473
    invoke-virtual {v2}, Lcom/evie/search/model/ActionData;->getActionType()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1f725e

    if-eq v5, v6, :cond_1

    const v6, 0x273d2d

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "TEXT"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "CALL"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    :cond_2
    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 476
    :pswitch_0
    invoke-direct {p0, p1, v2}, Lcom/evie/search/SearchPresenter;->generateSubitem(Lcom/evie/search/model/LocalSearchItem;Lcom/evie/search/model/ActionData;)Lcom/evie/search/local/LocalSearchSubitem;

    move-result-object v2

    .line 477
    new-instance v3, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;

    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4, v2}, Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/local/LocalSearchSubitem;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private generateSubitem(Lcom/evie/search/model/LocalSearchItem;Lcom/evie/search/model/ActionData;)Lcom/evie/search/local/LocalSearchSubitem;
    .locals 11

    .line 489
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    const-string v1, "action_default_items_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/evie/search/model/ActionData;->getActionType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    invoke-virtual {p2}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/search/model/AppLink;

    .line 493
    invoke-virtual {v4}, Lcom/evie/search/model/AppLink;->getLink()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_2

    .line 501
    invoke-virtual {p2}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/evie/search/model/AppLink;

    .line 506
    :cond_2
    invoke-virtual {p2}, Lcom/evie/search/model/ActionData;->getActionType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x1f725e

    const/4 v7, 0x1

    if-eq v5, v6, :cond_4

    const v6, 0x273d2d

    if-eq v5, v6, :cond_3

    goto :goto_1

    :cond_3
    const-string v5, "TEXT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const-string v5, "CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_1
    packed-switch v1, :pswitch_data_0

    move-object v9, v3

    move-object v10, v9

    goto :goto_2

    .line 512
    :pswitch_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/search/R$string;->contact_action_text_type:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 513
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/search/R$string;->contact_action_text_type:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v9, v3

    goto :goto_2

    .line 508
    :pswitch_1
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/search/R$string;->contact_action_call_type:I

    new-array v3, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 509
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/evie/search/R$string;->contact_action_call_type:I

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    move-object v9, v3

    .line 516
    :goto_2
    new-instance v0, Lcom/evie/search/local/LocalSearchSubitem;

    invoke-virtual {v4}, Lcom/evie/search/model/AppLink;->getLink()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/evie/search/model/ActionData;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    move-object v5, v0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/evie/search/local/LocalSearchSubitem;-><init>(Lcom/evie/search/model/LocalSearchItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSearchObservable(Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/evie/search/model/SearchPresenterData;",
            ">;"
        }
    .end annotation

    .line 365
    new-instance v0, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;

    invoke-direct {v0, p0, p1}, Lcom/evie/search/-$$Lambda$SearchPresenter$xN3IZbuvzz0lQ5SI8ShlIXTOrM0;-><init>(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)V

    .line 366
    invoke-static {v0}, Lio/reactivex/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/evie/search/model/SearchPresenterData;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v3, Lcom/evie/search/model/SearchPresenterData$DataType;->LOCAL:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {v1, v2, v3}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    .line 399
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 400
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 403
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object v1

    .line 405
    iget-boolean v2, p0, Lcom/evie/search/SearchPresenter;->mRemoteAllowed:Z

    const-wide/16 v3, 0x5

    if-eqz v2, :cond_0

    .line 406
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mRemoteSearchManager:Lcom/evie/search/remote/RemoteSearchManager;

    invoke-virtual {v1, p1}, Lcom/evie/search/remote/RemoteSearchManager;->search(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/search/-$$Lambda$SearchPresenter$WvKlGsbCdckvRUgN2iawwW86BdI;

    invoke-direct {v2, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$WvKlGsbCdckvRUgN2iawwW86BdI;-><init>(Lcom/evie/search/SearchPresenter;)V

    .line 407
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 426
    invoke-virtual {v1, v3, v4, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/evie/search/model/SearchPresenterData;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sget-object v6, Lcom/evie/search/model/SearchPresenterData$DataType;->REMOTE:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {v2, v5, v6}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    .line 427
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v1

    .line 431
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 432
    new-instance v5, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    iget-object v6, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    new-instance v7, Lcom/evie/search/model/WebSearchItem;

    const/4 v8, 0x1

    invoke-direct {v7, v8, p1}, Lcom/evie/search/model/WebSearchItem;-><init>(ZLjava/lang/String;)V

    invoke-direct {v5, p0, v6, v7}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/WebSearchItem;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    new-instance v5, Lcom/evie/search/model/SearchPresenterData;

    sget-object v6, Lcom/evie/search/model/SearchPresenterData$DataType;->WEB:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {v5, v2, v6}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    .line 435
    invoke-static {v5}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    .line 437
    iget-boolean v6, p0, Lcom/evie/search/SearchPresenter;->mWebSearchAllowed:Z

    if-eqz v6, :cond_1

    .line 438
    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mWebSearchManager:Lcom/evie/search/web/WebSearchManager;

    invoke-virtual {v2, p1}, Lcom/evie/search/web/WebSearchManager;->search(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v2, Lcom/evie/search/-$$Lambda$SearchPresenter$vH5fZz8dlTTPvOMnx86p6WqMoIA;

    invoke-direct {v2, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$vH5fZz8dlTTPvOMnx86p6WqMoIA;-><init>(Lcom/evie/search/SearchPresenter;)V

    .line 439
    invoke-virtual {p1, v2}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 447
    invoke-virtual {p1, v3, v4, v2}, Lio/reactivex/Observable;->timeout(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 448
    invoke-virtual {p1, v5}, Lio/reactivex/Observable;->startWith(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 449
    invoke-virtual {p1, v5}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v2

    .line 452
    :cond_1
    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->just(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/Observable;->concatEager(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/evie/search/model/SearchPresenterData;

    const/4 v1, 0x0

    sget-object v2, Lcom/evie/search/model/SearchPresenterData$DataType;->CLEAR:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {v0, v1, v2}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    .line 454
    invoke-static {v0}, Lio/reactivex/Observable;->just(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 455
    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->mergeWith(Lio/reactivex/ObservableSource;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method private getSearchObserver(Ljava/lang/String;)Lio/reactivex/observers/DisposableObserver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/observers/DisposableObserver<",
            "Lcom/evie/search/model/SearchPresenterData;",
            ">;"
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/evie/search/SearchPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/evie/search/SearchPresenter$1;-><init>(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)V

    return-object v0
.end method

.method private isHiddenFromSearch(Lcom/evie/search/model/LocalSearchItem;)Z
    .locals 2

    .line 520
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/evie/search/AppAvailabilityProvider;->isHiddenFromSearch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public static synthetic lambda$expandLocalResults$1(Lcom/evie/search/SearchPresenter;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v0}, Lcom/evie/search/SearchAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static synthetic lambda$getSearchObservable$2(Lcom/evie/search/SearchPresenter;Ljava/lang/String;)Lcom/evie/search/model/SearchPresenterData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-virtual {v0, p1}, Lcom/evie/search/local/LocalSearchManager;->search(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    .line 369
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 370
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    .line 372
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 373
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v0}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v0

    const v2, 0x3f266666    # 0.65f

    mul-float v0, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 374
    :goto_0
    iget v4, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    if-ge v3, v4, :cond_1

    .line 375
    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/search/model/LocalSearchItem;

    invoke-virtual {v4}, Lcom/evie/search/model/LocalSearchItem;->getRank()F

    move-result v4

    cmpg-float v4, v4, v0

    if-gez v4, :cond_0

    .line 376
    iput v3, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_1
    :goto_1
    iget v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    const/4 v0, 0x0

    .line 382
    :goto_3
    iget v3, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    if-ge v0, v3, :cond_4

    .line 383
    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/search/model/LocalSearchItem;

    .line 384
    invoke-direct {p0, v3}, Lcom/evie/search/SearchPresenter;->isHiddenFromSearch(Lcom/evie/search/model/LocalSearchItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_4

    .line 386
    :cond_3
    new-instance v4, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/LocalSearchItem;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-direct {p0, v3}, Lcom/evie/search/SearchPresenter;->generateLocalSubitems(Lcom/evie/search/model/LocalSearchItem;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 390
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 392
    new-instance v0, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mLocalHeader:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 393
    new-instance v0, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_5
    new-instance v0, Lcom/evie/search/model/SearchPresenterData;

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->LOCAL:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {v0, p1, v1}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    return-object v0
.end method

.method public static synthetic lambda$getSearchObservable$3(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Lcom/evie/search/model/SearchPresenterData;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 411
    new-instance v1, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mRemoteHeader:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/RemoteSearchItem;

    .line 413
    new-instance v2, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/RemoteSearchItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v1}, Lcom/evie/search/model/RemoteSearchItem;->getSubitems()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    invoke-virtual {v1}, Lcom/evie/search/model/RemoteSearchItem;->getSubitems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/evie/search/model/RemoteSearchItem;

    .line 416
    invoke-virtual {v3, v1}, Lcom/evie/search/model/RemoteSearchItem;->setParent(Lcom/evie/search/model/RemoteSearchItem;)V

    .line 417
    new-instance v4, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;

    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v3}, Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/RemoteSearchItem;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    new-instance p1, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    :cond_2
    new-instance p1, Lcom/evie/search/model/SearchPresenterData;

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->REMOTE:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {p1, v0, v1}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    return-object p1
.end method

.method public static synthetic lambda$getSearchObservable$4(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Lcom/evie/search/model/SearchPresenterData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/WebSearchItem;

    .line 443
    new-instance v2, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/evie/search/recyclerview/presenter/WebItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/WebSearchItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 445
    :cond_0
    new-instance p1, Lcom/evie/search/model/SearchPresenterData;

    sget-object v1, Lcom/evie/search/model/SearchPresenterData$DataType;->WEB:Lcom/evie/search/model/SearchPresenterData$DataType;

    invoke-direct {p1, v0, v1}, Lcom/evie/search/model/SearchPresenterData;-><init>(Ljava/util/List;Lcom/evie/search/model/SearchPresenterData$DataType;)V

    return-object p1
.end method

.method public static synthetic lambda$new$0(Lcom/evie/search/SearchPresenter;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "include_frequently_used"

    .line 146
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget v0, p0, Lcom/evie/search/SearchPresenter;->mAvailableHeight:I

    invoke-virtual {p0, v0}, Lcom/evie/search/SearchPresenter;->setAvailableHeight(I)V

    const/4 v0, 0x1

    .line 148
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/evie/search/SearchPresenter;->setupRecentObservable(Z)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$setupRecentObservable$5(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 743
    new-instance v1, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mRecentsHeader:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 747
    sget v1, Lcom/evie/search/R$string;->search_no_recents_title:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 748
    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 751
    sget v2, Lcom/evie/search/R$string;->search_no_recents_message:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 753
    :cond_0
    sget v2, Lcom/evie/search/R$string;->search_no_recents_no_contacts:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 755
    :goto_0
    new-instance v2, Lcom/evie/search/recyclerview/presenter/MessagePresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1, p1}, Lcom/evie/search/recyclerview/presenter/MessagePresenter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 759
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/RecentItem;

    .line 760
    invoke-virtual {v1}, Lcom/evie/search/model/RecentItem;->getLocalComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 761
    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lcom/evie/search/AppAvailabilityProvider;->isHiddenFromBrowse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 763
    :cond_2
    new-instance v2, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/RecentItem;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static synthetic lambda$setupRecentObservable$6(Lcom/evie/search/SearchPresenter;Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 776
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 777
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 778
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;

    .line 781
    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mAppAvailabilityProvider:Lcom/evie/search/AppAvailabilityProvider;

    iget-object v6, v4, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->packageName:Ljava/lang/String;

    iget-object v7, v4, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->className:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Lcom/evie/search/AppAvailabilityProvider;->isHiddenFromBrowse(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 786
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    invoke-virtual {v4}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ANY"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 796
    :try_start_1
    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 802
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v4}, Lcom/evie/models/frequentlyused/data/FrequentlyUsedApp;->toComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v4, v5

    :goto_1
    const-string v5, "android.intent.category.LAUNCHER"

    .line 806
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 807
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 808
    new-instance v5, Lcom/evie/search/model/FrequentlyUsedItem;

    invoke-direct {v5, v4}, Lcom/evie/search/model/FrequentlyUsedItem;-><init>(Landroid/content/Intent;)V

    .line 809
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :catch_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 812
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 813
    new-instance p1, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mFrequentsHeader:Ljava/lang/String;

    invoke-direct {p1, v3, v4}, Lcom/evie/search/recyclerview/presenter/HeaderPresenter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance p1, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v3, v1}, Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 815
    new-instance p1, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v1, v2}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$setupRecentObservable$7(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 825
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 826
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 827
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private setupRecentObservable(Z)V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mRecentDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 734
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-virtual {v0}, Lcom/evie/search/local/LocalSearchManager;->getRecentSubject()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    new-instance v1, Lcom/evie/search/-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU;

    invoke-direct {v1, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$py1I5ycEvUsC4hnT4pLPF_T3znU;-><init>(Lcom/evie/search/SearchPresenter;)V

    .line 741
    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 767
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object v0

    .line 768
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 771
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    if-eqz p1, :cond_1

    .line 772
    invoke-interface {p1}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->getFrequentlyUsedApps()Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/evie/search/-$$Lambda$SearchPresenter$r6iRohv0hGoaGuzH_FtbQquHx2c;

    invoke-direct {v1, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$r6iRohv0hGoaGuzH_FtbQquHx2c;-><init>(Lcom/evie/search/SearchPresenter;)V

    .line 773
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 820
    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->onErrorReturnItem(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    .line 821
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 823
    sget-object v1, Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;->INSTANCE:Lcom/evie/search/-$$Lambda$SearchPresenter$rjemiD6vaXtBXDVPGTrU58QYpgA;

    invoke-static {p1, v0, v1}, Lio/reactivex/Observable;->combineLatest(Lio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiFunction;)Lio/reactivex/Observable;

    move-result-object v0

    .line 834
    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/evie/search/SearchPresenter$2;

    invoke-direct {v0, p0}, Lcom/evie/search/SearchPresenter$2;-><init>(Lcom/evie/search/SearchPresenter;)V

    .line 835
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method


# virtual methods
.method public changeSearchQuery(Ljava/lang/String;)V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mSearchQueryChangeListener:Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;

    invoke-interface {v0, p1}, Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;->onSearchQueryChange(Ljava/lang/String;)V

    return-void
.end method

.method public clearDragSink()V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mSearchShortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    invoke-virtual {v0}, Lcom/evie/search/SearchShortcutHandler;->clearDragSink()V

    return-void
.end method

.method public clearPresenters()V
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 243
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mRemotePresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 244
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 245
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mWebPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v0}, Lcom/evie/search/SearchAdapter;->clearPresenters()V

    return-void
.end method

.method public clickFirstResult()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v0}, Lcom/evie/search/SearchAdapter;->clickFirstResult()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 532
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mRecentDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    .line 536
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 537
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mRecentDisposable:Lio/reactivex/disposables/Disposable;

    :cond_1
    return-void
.end method

.method public expandLocalResults()V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    add-int/lit8 v2, v1, 0x4

    const/4 v3, 0x0

    if-le v0, v2, :cond_2

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 202
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    iget v2, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    add-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evie/search/model/LocalSearchItem;

    .line 203
    invoke-direct {p0, v1}, Lcom/evie/search/SearchPresenter;->isHiddenFromSearch(Lcom/evie/search/model/LocalSearchItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 205
    :cond_0
    new-instance v2, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v1}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/LocalSearchItem;)V

    .line 206
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 207
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/evie/search/SearchAdapter;->insertPresenter(ILcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 210
    :cond_1
    iget v1, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    goto :goto_4

    .line 212
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 213
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 214
    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/search/model/LocalSearchItem;

    .line 215
    invoke-direct {p0, v2}, Lcom/evie/search/SearchPresenter;->isHiddenFromSearch(Lcom/evie/search/model/LocalSearchItem;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    .line 217
    :cond_3
    new-instance v4, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;

    iget-object v5, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, v2}, Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Lcom/evie/search/model/LocalSearchItem;)V

    .line 218
    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v2, v0, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 219
    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v2, v0, v4}, Lcom/evie/search/SearchAdapter;->insertPresenter(ILcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 222
    :cond_4
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/evie/search/SearchPresenter;->mLocalItemsShowing:I

    .line 223
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 224
    iget-object v1, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    new-instance v2, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;

    iget-object v4, p0, Lcom/evie/search/SearchPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v4, v3}, Lcom/evie/search/recyclerview/presenter/DelimiterPresenter;-><init>(Lcom/evie/search/SearchPresenter;Landroid/content/Context;Z)V

    invoke-virtual {v1, v0, v2}, Lcom/evie/search/SearchAdapter;->changePresenter(ILcom/evie/search/recyclerview/presenter/BaseItemPresenter;)V

    .line 228
    :goto_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/evie/search/-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I;

    invoke-direct {v1, p0}, Lcom/evie/search/-$$Lambda$SearchPresenter$wsGdhB-W7goufaa1Esp6yph-14I;-><init>(Lcom/evie/search/SearchPresenter;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 230
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mSearchListExpandListener:Lcom/evie/search/SearchPresenter$SearchListExpandListener;

    if-eqz v0, :cond_5

    .line 231
    invoke-interface {v0}, Lcom/evie/search/SearchPresenter$SearchListExpandListener;->onSearchListExpand()V

    :cond_5
    return-void
.end method

.method public getAdapter()Lcom/evie/search/SearchAdapter;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    return-object v0
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/FrequentlyUsedItemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/LocalItemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/LocalSubitemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/RecentItemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/RemoteItemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/RemoteSubitemPresenter;)V

    return-void
.end method

.method public inject(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->searchComponent:Lcom/evie/search/dagger/SearchComponent;

    invoke-interface {v0, p1}, Lcom/evie/search/dagger/SearchComponent;->inject(Lcom/evie/search/recyclerview/presenter/WebItemPresenter;)V

    return-void
.end method

.method public logFrequentlyUsedItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 2

    .line 930
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    const-string v1, "ev_item_tap_main_list"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 932
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    if-eqz p1, :cond_0

    .line 933
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchState;->RECENT_CLICKED:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {p1, v0}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    :cond_0
    return-void
.end method

.method public logRecentItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 2

    .line 922
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    const-string v1, "ev_item_tap_recent_list"

    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 924
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    if-eqz p1, :cond_0

    .line 925
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchState;->RECENT_CLICKED:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {p1, v0}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    :cond_0
    return-void
.end method

.method public logSearchItemClicked(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 4

    .line 910
    invoke-static {}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->getInstance()Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    move-result-object v0

    const-string v1, "ev_item_tap_main_list"

    const-string v2, "search_input"

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    .line 913
    invoke-virtual {p1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    const-string v2, "search_input_length"

    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;->add(Ljava/lang/String;I)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;

    move-result-object p1

    .line 910
    invoke-virtual {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;->logEvent(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V

    .line 916
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    if-eqz p1, :cond_0

    .line 917
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchState;->COMPLETED:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {p1, v0}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    :cond_0
    return-void
.end method

.method public logSearchItemDragged(Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler$EventProp;)V
    .locals 0

    return-void
.end method

.method public refreshFrequents()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mFrequentlyUsed:Lcom/evie/models/frequentlyused/FrequentlyUsedModel;

    if-eqz v0, :cond_0

    .line 237
    invoke-interface {v0}, Lcom/evie/models/frequentlyused/FrequentlyUsedModel;->refresh()V

    :cond_0
    return-void
.end method

.method public removeCustomPresenter()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCustomRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 296
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCustomRunnable:Ljava/lang/Runnable;

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/evie/search/SearchPresenter;->mRemotePresenters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v0, v2

    const/4 v2, 0x0

    .line 301
    :goto_0
    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v3, v0}, Lcom/evie/search/SearchAdapter;->removePresenter(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 305
    iput-object v1, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/evie/search/SearchAdapter;->setCustomViewHolderFactory(Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;)V

    return-void
.end method

.method public search(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 331
    :cond_1
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mCurrentQuery:Ljava/lang/String;

    const/4 v0, 0x0

    .line 332
    iput v0, p0, Lcom/evie/search/SearchPresenter;->mListExpandCounter:I

    .line 334
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 338
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mRecentPresenters:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/evie/search/SearchAdapter;->setPresenters(Ljava/util/List;)V

    .line 341
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mLocalPresenters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 342
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mRemotePresenters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 343
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 344
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mWebPresenters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 346
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    if-eqz p1, :cond_4

    .line 347
    sget-object v0, Lcom/evie/search/SearchPresenter$SearchState;->IDLE:Lcom/evie/search/SearchPresenter$SearchState;

    invoke-interface {p1, v0}, Lcom/evie/search/SearchPresenter$SearchStateChangeListener;->onSearchStateChange(Lcom/evie/search/SearchPresenter$SearchState;)V

    goto :goto_0

    .line 350
    :cond_3
    invoke-direct {p0, p1}, Lcom/evie/search/SearchPresenter;->getSearchObservable(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 351
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 352
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->computation()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 353
    invoke-direct {p0, p1}, Lcom/evie/search/SearchPresenter;->getSearchObserver(Ljava/lang/String;)Lio/reactivex/observers/DisposableObserver;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->subscribeWith(Lio/reactivex/Observer;)Lio/reactivex/Observer;

    move-result-object p1

    check-cast p1, Lio/reactivex/disposables/Disposable;

    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mCurrentDisposable:Lio/reactivex/disposables/Disposable;

    :cond_4
    :goto_0
    return-void
.end method

.method public setAvailableHeight(I)V
    .locals 1

    .line 188
    iput p1, p0, Lcom/evie/search/SearchPresenter;->mAvailableHeight:I

    .line 189
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mSearchSettings:Lcom/evie/common/SearchSettings;

    invoke-virtual {v0}, Lcom/evie/common/SearchSettings;->getIncludeFrequentlyUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget v0, p0, Lcom/evie/search/SearchPresenter;->mFrequentlyUsedHeight:I

    sub-int/2addr p1, v0

    .line 192
    :cond_0
    iget v0, p0, Lcom/evie/search/SearchPresenter;->mUnavailableHeight:I

    sub-int/2addr p1, v0

    .line 193
    iget v0, p0, Lcom/evie/search/SearchPresenter;->mItemHeight:I

    div-int/2addr p1, v0

    const/4 v0, 0x3

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 194
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mLocalSearchManager:Lcom/evie/search/local/LocalSearchManager;

    invoke-virtual {v0, p1}, Lcom/evie/search/local/LocalSearchManager;->setMaxRecents(I)V

    return-void
.end method

.method public setCustomPresenter(Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 288
    :cond_0
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mCustomPresenter:Lcom/evie/search/recyclerview/presenter/BaseItemPresenter;

    .line 289
    iput-object p3, p0, Lcom/evie/search/SearchPresenter;->mCustomRunnable:Ljava/lang/Runnable;

    .line 290
    iget-object p1, p0, Lcom/evie/search/SearchPresenter;->mAdapter:Lcom/evie/search/SearchAdapter;

    invoke-virtual {p1, p2}, Lcom/evie/search/SearchAdapter;->setCustomViewHolderFactory(Lcom/evie/search/recyclerview/viewholder/CustomViewHolderFactory;)V

    return-void
.end method

.method public setDragSink(Lcom/evie/common/dragndrop/DragSink;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/evie/search/SearchPresenter;->mSearchShortcutHandler:Lcom/evie/search/SearchShortcutHandler;

    invoke-virtual {v0, p1}, Lcom/evie/search/SearchShortcutHandler;->setDragSink(Lcom/evie/common/dragndrop/DragSink;)V

    return-void
.end method

.method public setSearchListExpandListener(Lcom/evie/search/SearchPresenter$SearchListExpandListener;)V
    .locals 0

    .line 892
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchListExpandListener:Lcom/evie/search/SearchPresenter$SearchListExpandListener;

    return-void
.end method

.method public setSearchQueryChangeListener(Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchQueryChangeListener:Lcom/evie/search/SearchPresenter$SearchQueryChangeListener;

    return-void
.end method

.method public setSearchStateChangeListener(Lcom/evie/search/SearchPresenter$SearchStateChangeListener;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/evie/search/SearchPresenter;->mSearchStateChangeListener:Lcom/evie/search/SearchPresenter$SearchStateChangeListener;

    return-void
.end method

.method public setWebSearchAllowed(Z)V
    .locals 0

    .line 254
    iput-boolean p1, p0, Lcom/evie/search/SearchPresenter;->mWebSearchAllowed:Z

    return-void
.end method
