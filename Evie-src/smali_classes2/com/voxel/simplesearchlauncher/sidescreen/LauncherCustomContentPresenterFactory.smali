.class public final Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;
.super Ljava/lang/Object;
.source "LauncherCustomContentPresenterFactory.java"


# instance fields
.field private final analyticsHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final sideScreenSharedDependenciesProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedDependencies;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/evie/sidescreen/SideScreenSharedDependencies;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    const/4 p1, 0x2

    .line 29
    invoke-static {p2, p1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->sideScreenSharedDependenciesProvider:Ljavax/inject/Provider;

    const/4 p1, 0x3

    .line 30
    invoke-static {p3, p1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/inject/Provider;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method private static checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 43
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@AutoFactory method argument is null but is not marked @Nullable. Argument index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public create(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;
    .locals 5

    .line 34
    new-instance v0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;

    const/4 v1, 0x1

    .line 35
    invoke-static {p1, v1}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->contextProvider:Ljavax/inject/Provider;

    .line 36
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->sideScreenSharedDependenciesProvider:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/SideScreenSharedDependencies;

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->analyticsHandlerProvider:Ljavax/inject/Provider;

    .line 38
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenterFactory;->checkNotNull(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/voxel/simplesearchlauncher/sidescreen/LauncherCustomContentPresenter;-><init>(Lcom/voxel/launcher3/Launcher;Landroid/content/Context;Lcom/evie/sidescreen/SideScreenSharedDependencies;Lcom/voxel/simplesearchlauncher/analytics/AnalyticsHandler;)V

    return-object v0
.end method
