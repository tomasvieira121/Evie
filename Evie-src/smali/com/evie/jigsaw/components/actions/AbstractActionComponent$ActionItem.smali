.class public Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
.super Ljava/lang/Object;
.source "AbstractActionComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActionItem"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_id"
    .end annotation
.end field

.field private appName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "app_name"
    .end annotation
.end field

.field private customButtonImage:Lcom/evie/jigsaw/services/images/models/EvieImage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_button_image"
    .end annotation
.end field

.field private customButtonLinks:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "custom_button_links"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private def4ult:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "default"
    .end annotation
.end field

.field private description:Ljava/lang/String;

.field transient eventService:Lcom/evie/common/services/events/EventService;

.field private exclusive:Z

.field private icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

.field transient imageResolver:Lcom/evie/jigsaw/services/images/ImageResolver;

.field private installed:Z

.field transient linkResolver:Lcom/evie/common/services/links/LinkResolver;

.field private links:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final listenerToShortcut:Landroid/view/View$OnLongClickListener;

.field private transient parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

.field private transient preferenceValue:Ljava/lang/String;

.field transient preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

.field private preferredDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "preferred_description"
    .end annotation
.end field

.field transient shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

.field private shortcutTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortcut_title"
    .end annotation
.end field

.field private skipIfAppInstalled:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "skip_if_installed"
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->links:Ljava/util/List;

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->exclusive:Z

    .line 228
    iput-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->def4ult:Z

    .line 232
    iput-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->installed:Z

    .line 246
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->customButtonLinks:Ljava/util/List;

    .line 392
    new-instance v0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$2;

    invoke-direct {v0, p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$2;-><init>(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    iput-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->listenerToShortcut:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcutTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method static synthetic access$200(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    return-object p0
.end method

.method static synthetic access$300(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute(Landroid/content/Context;)V
    .locals 2

    .line 316
    new-instance v0, Lcom/evie/common/services/links/LinkRequest;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->links:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    .line 317
    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/common/services/links/LinkRequest;->analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    .line 318
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/evie/common/services/links/LinkRequest;->app(Ljava/lang/String;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    .line 320
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    invoke-virtual {v1, p1, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomButtonImage()Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->customButtonImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object v0
.end method

.method public getCustomButtonLinks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->customButtonLinks:Ljava/util/List;

    return-object v0
.end method

.method public getIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object v0
.end method

.method public getListenerToShortcut()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->listenerToShortcut:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public getPermittedDescription()Ljava/lang/String;
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferredDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 281
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getPreferredItem()Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v0

    .line 283
    iget-boolean v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->exclusive:Z

    if-eqz v1, :cond_2

    if-eq v0, p0, :cond_1

    .line 284
    iget-boolean v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->def4ult:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->description:Ljava/lang/String;

    return-object v0

    .line 288
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferredDescription:Ljava/lang/String;

    return-object v0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferredDescription:Ljava/lang/String;

    return-object v0

    .line 301
    :cond_3
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceValue()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferenceValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferenceValue:Ljava/lang/String;

    return-object v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hasCustomButton()Z
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->customButtonImage:Lcom/evie/jigsaw/services/images/models/EvieImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->customButtonLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInstalled()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->installed:Z

    return v0
.end method

.method public isPreferred()Z
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferences:Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;

    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    invoke-virtual {v1}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getPreferenceValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSkipIfAppInstalled()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->skipIfAppInstalled:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->description:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->icon:Lcom/evie/jigsaw/services/images/models/EvieImage;

    return-object p0
.end method

.method public setInstalled(Z)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-boolean p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->installed:Z

    return-object p0
.end method

.method public setLinks(Ljava/util/List;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->links:Ljava/util/List;

    return-object p0
.end method

.method public setParent(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    return-object p0
.end method

.method public setPreferenceValue(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->preferenceValue:Ljava/lang/String;

    return-object p0
.end method

.method public setShortcutTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcutTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->title:Ljava/lang/String;

    return-object p0
.end method

.method public shortcut(Landroid/content/Context;)Z
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->shortcutService:Lcom/evie/jigsaw/services/shortcuts/ShortcutService;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getShortcutIcon()Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v1, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->linkResolver:Lcom/evie/common/services/links/LinkResolver;

    new-instance v2, Lcom/evie/common/services/links/LinkRequest;

    iget-object v3, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->links:Ljava/util/List;

    invoke-direct {v2, v3}, Lcom/evie/common/services/links/LinkRequest;-><init>(Ljava/util/List;)V

    iget-object v3, p0, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->parent:Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    .line 334
    invoke-virtual {v3}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->getAnalytics()Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/common/services/links/LinkRequest;->analyticsData(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v2

    .line 335
    invoke-virtual {p0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/common/services/links/LinkRequest;->app(Ljava/lang/String;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v2

    new-instance v3, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem$1;-><init>(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;Landroid/content/Context;Lcom/evie/jigsaw/services/images/models/EvieImage;)V

    .line 336
    invoke-virtual {v2, v3}, Lcom/evie/common/services/links/LinkRequest;->callback(Lcom/evie/common/services/links/LinkCallback;)Lcom/evie/common/services/links/LinkRequest;

    move-result-object v0

    .line 333
    invoke-virtual {v1, p1, v0}, Lcom/evie/common/services/links/LinkResolver;->resolve(Landroid/content/Context;Lcom/evie/common/services/links/LinkRequest;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
