.class public Lcom/evie/jigsaw/Jigsaw;
.super Ljava/lang/Object;
.source "Jigsaw.java"

# interfaces
.implements Lcom/evie/jigsaw/dagger/JigsawComponent;


# instance fields
.field private final resources:Lcom/evie/jigsaw/dagger/JigsawComponent;


# direct methods
.method public constructor <init>(Lcom/evie/jigsaw/JigsawSettings;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;->builder()Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;

    move-result-object v0

    new-instance v1, Lcom/evie/jigsaw/dagger/JigsawModule;

    invoke-direct {v1, p1}, Lcom/evie/jigsaw/dagger/JigsawModule;-><init>(Lcom/evie/jigsaw/JigsawSettings;)V

    .line 23
    invoke-virtual {v0, v1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;->jigsawModule(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;->build()Lcom/evie/jigsaw/dagger/JigsawComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    return-void
.end method

.method private static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    .line 61
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    .line 62
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 63
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 66
    :cond_0
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static prepare(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 50
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evie/jigsaw/JigsawActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    invoke-static {p0}, Lcom/evie/jigsaw/Jigsaw;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    instance-of p0, p0, Lcom/evie/jigsaw/JigsawActivity;

    if-nez p0, :cond_1

    const p0, 0x10008000

    .line 53
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0}, Lcom/evie/jigsaw/dagger/JigsawComponent;->analyticsService()Lcom/evie/common/services/analytics/AnalyticsService;

    move-result-object v0

    return-object v0
.end method

.method public application()Landroid/app/Application;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0}, Lcom/evie/jigsaw/dagger/JigsawComponent;->application()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public events()Lcom/evie/common/services/events/EventService;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0}, Lcom/evie/jigsaw/dagger/JigsawComponent;->events()Lcom/evie/common/services/events/EventService;

    move-result-object v0

    return-object v0
.end method

.method public imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0}, Lcom/evie/jigsaw/dagger/JigsawComponent;->imageResolver()Lcom/evie/jigsaw/services/images/ImageResolver;

    move-result-object v0

    return-object v0
.end method

.method public inject(Lcom/evie/jigsaw/JigsawActivity;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/JigsawActivity;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/jigsaw/components/actions/AbstractActionComponent<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/components/actions/AbstractActionComponent;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/components/actions/ActionRowComponent;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/components/content/MediaComponent;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/components/content/MediaComponent;)V

    return-void
.end method

.method public inject(Lcom/evie/jigsaw/views/RichTextView;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0, p1}, Lcom/evie/jigsaw/dagger/JigsawComponent;->inject(Lcom/evie/jigsaw/views/RichTextView;)V

    return-void
.end method

.method public settings()Lcom/evie/jigsaw/JigsawSettings;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/evie/jigsaw/Jigsaw;->resources:Lcom/evie/jigsaw/dagger/JigsawComponent;

    invoke-interface {v0}, Lcom/evie/jigsaw/dagger/JigsawComponent;->settings()Lcom/evie/jigsaw/JigsawSettings;

    move-result-object v0

    return-object v0
.end method
