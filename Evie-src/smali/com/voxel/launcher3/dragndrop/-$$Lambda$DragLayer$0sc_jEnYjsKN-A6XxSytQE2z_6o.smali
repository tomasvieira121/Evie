.class public final synthetic Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/voxel/launcher3/dragndrop/-$$Lambda$DragLayer$0sc_jEnYjsKN-A6XxSytQE2z_6o;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/dragndrop/DragLayer;->lambda$animateViewIntoPosition$0(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
