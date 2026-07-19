.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Landroid/animation/AnimatorSet;

.field private final synthetic f$2:Ljava/util/Collection;

.field private final synthetic f$3:I

.field private final synthetic f$4:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;ILjava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$1:Landroid/animation/AnimatorSet;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$2:Ljava/util/Collection;

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$3:I

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$4:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$1:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$2:Ljava/util/Collection;

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$3:I

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$XvhTZaM44pmLCcv7X5G38guhK-E;->f$4:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/Launcher;->lambda$bindItems$35(Lcom/voxel/launcher3/Launcher;Landroid/animation/AnimatorSet;Ljava/util/Collection;ILjava/util/ArrayList;)V

    return-void
.end method
