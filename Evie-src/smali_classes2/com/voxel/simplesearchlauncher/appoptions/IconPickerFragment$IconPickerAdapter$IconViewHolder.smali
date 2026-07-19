.class Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
.source "IconPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IconViewHolder"
.end annotation


# instance fields
.field mBitmapWorkerTaskWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;",
            ">;"
        }
    .end annotation
.end field

.field mIcon:Landroid/widget/ImageView;

.field final synthetic this$1:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Landroid/view/View;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->this$1:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;

    .line 314
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0158

    .line 315
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mIcon:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method getBitmapWorkerTask()Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mBitmapWorkerTaskWeakReference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;

    :goto_0
    return-object v0
.end method
