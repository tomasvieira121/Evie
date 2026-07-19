.class final Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;
.super Ljava/lang/Object;
.source "JigsawModule.java"

# interfaces
.implements Lcom/evie/jigsaw/services/images/ImageResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LauncherImageResolver"
.end annotation


# instance fields
.field private final manager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;)V
    .locals 0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;->manager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/evie/jigsaw/services/images/models/Image;I)Landroid/net/Uri;
    .locals 1

    .line 154
    invoke-interface {p1}, Lcom/evie/jigsaw/services/images/models/Image;->getApp()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_1

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/evie/jigsaw/services/images/models/Image;->getUrl(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 161
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/dagger/module/JigsawModule$LauncherImageResolver;->manager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-interface {p1}, Lcom/evie/jigsaw/services/images/models/Image;->getApp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getDefaultAppForAction(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v0

    .line 168
    :cond_0
    invoke-static {p1}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method
