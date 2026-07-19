.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/util/ItemInfoMatcher;

.field private final synthetic f$1:Ljava/util/HashMap;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$0:Lcom/voxel/launcher3/util/ItemInfoMatcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$3:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 7

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$0:Lcom/voxel/launcher3/util/ItemInfoMatcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$BFa00BaVFGg_oLPeVI1OwRFwi-0;->f$3:Ljava/util/HashMap;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->lambda$removeItemsByMatcher$17(Lcom/voxel/launcher3/util/ItemInfoMatcher;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
