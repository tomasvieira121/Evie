.class Lcom/voxel/launcher3/Launcher$24;
.super Lcom/voxel/launcher3/util/ItemInfoMatcher;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->removeViewForItemInfo(Lcom/voxel/launcher3/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$targetInfo:Lcom/voxel/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/ItemInfo;)V
    .locals 0

    .line 4334
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$24;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$24;->val$targetInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-direct {p0}, Lcom/voxel/launcher3/util/ItemInfoMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 0

    .line 4337
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher$24;->val$targetInfo:Lcom/voxel/launcher3/ItemInfo;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
