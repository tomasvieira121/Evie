.class Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;
.super Landroid/os/AsyncTask;
.source "IconPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BitmapWorkerTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private mResourceName:Ljava/lang/String;

.field private final mViewHolderWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 270
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->mViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;)Ljava/lang/String;
    .locals 0

    .line 264
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->mResourceName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 276
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->mResourceName:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->access$100(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)Lcom/evie/common/iconpack/IconPackFilter;

    move-result-object p1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/evie/common/iconpack/IconPackFilter;->loadDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 264
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->doInBackground([Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->mViewHolderWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->getBitmapWorkerTask()Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;

    move-result-object v1

    if-ne p0, v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 292
    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 293
    new-instance p1, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 294
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 295
    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x64

    .line 296
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 264
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
