.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher$22;

.field private final synthetic f$1:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher$22;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;->f$0:Lcom/voxel/launcher3/Launcher$22;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;->f$1:Landroid/view/ViewTreeObserver$OnDrawListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;->f$0:Lcom/voxel/launcher3/Launcher$22;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$22$R6qAcwXG0PhQC5Pcsh1tRNjSz_0;->f$1:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/Launcher$22;->lambda$onDraw$0(Lcom/voxel/launcher3/Launcher$22;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
