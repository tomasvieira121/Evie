.class Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;
.super Ljava/lang/Object;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadIconPackResult"
.end annotation


# instance fields
.field mIconPackFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/core/util/Pair<",
            "Lcom/voxel/simplesearchlauncher/iconpack/IconPack;",
            "Lcom/evie/common/iconpack/IconPackFilter;",
            ">;>;"
        }
    .end annotation
.end field

.field mSuggestedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;


# direct methods
.method private constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)V

    return-void
.end method
