.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$bRk2eSxa1UDcCxrPMQfXdUUPTFo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$bRk2eSxa1UDcCxrPMQfXdUUPTFo;->f$0:Lcom/voxel/launcher3/Launcher;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$bRk2eSxa1UDcCxrPMQfXdUUPTFo;->f$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/Launcher;->lambda$hideBlurImage$30(Lcom/voxel/launcher3/Launcher;Landroid/animation/ValueAnimator;)V

    return-void
.end method
