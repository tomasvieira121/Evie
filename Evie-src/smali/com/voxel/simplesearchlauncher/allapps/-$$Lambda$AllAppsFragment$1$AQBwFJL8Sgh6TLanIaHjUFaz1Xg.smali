.class public final synthetic Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

.field private final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;->f$0:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;->f$1:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;->f$0:Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/allapps/-$$Lambda$AllAppsFragment$1$AQBwFJL8Sgh6TLanIaHjUFaz1Xg;->f$1:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/allapps/AllAppsFragment$1;->lambda$onClick$0(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;Landroid/view/View;)V

    return-void
.end method
