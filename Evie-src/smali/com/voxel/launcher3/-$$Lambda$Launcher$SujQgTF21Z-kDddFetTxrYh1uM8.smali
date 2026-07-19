.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Landroid/animation/AnimatorSet;

.field private final synthetic f$2:Landroid/view/View;

.field private final synthetic f$3:Z

.field private final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Landroid/view/View;ZLjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$1:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$2:Landroid/view/View;

    iput-boolean p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$3:Z

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$1:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$2:Landroid/view/View;

    iget-boolean v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$3:Z

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$SujQgTF21Z-kDddFetTxrYh1uM8;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->lambda$hideAppsCustomizeHelper$31(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Landroid/view/View;ZLjava/util/ArrayList;)V

    return-void
.end method
