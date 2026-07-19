.class Lcom/voxel/launcher3/CropView$1;
.super Ljava/lang/Object;
.source "CropView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/CropView;->moveToLeft()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/CropView;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/CropView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/voxel/launcher3/CropView$1;->this$0:Lcom/voxel/launcher3/CropView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/voxel/launcher3/CropView$1;->this$0:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->moveToLeft()V

    .line 206
    iget-object v0, p0, Lcom/voxel/launcher3/CropView$1;->this$0:Lcom/voxel/launcher3/CropView;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CropView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
