.class Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;
.super Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;
.source "IconPickerFragment.java"

# interfaces
.implements Lcom/voxel/recyclerview/widget/SpringRecyclerView$SpringItemPositioner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconPickerAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;
    }
.end annotation


# instance fields
.field private mItemHeight:I

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 339
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 323
    new-instance p1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$IconPickerAdapter$B4wLRBL8M-9rtpPV6YUKkvu2MiQ;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$IconPickerAdapter$B4wLRBL8M-9rtpPV6YUKkvu2MiQ;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 340
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$302(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Landroid/view/View;)V
    .locals 2

    .line 324
    check-cast p1, Landroid/widget/ImageView;

    .line 325
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 327
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "ICON"

    .line 332
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->setResultCode(I)V

    .line 334
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->setResultIntent(Landroid/content/Intent;)V

    .line 335
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->runExitAnimation()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$onBindViewHolder$1(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p5, p3

    .line 363
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 365
    iget p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mItemHeight:I

    if-eq p2, p1, :cond_0

    .line 366
    iput p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mItemHeight:I

    .line 367
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->resetOverscrollPositions()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPotentialWork(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;Ljava/lang/String;)Z
    .locals 2

    .line 374
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->getBitmapWorkerTask()Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 377
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->access$200(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->cancel(Z)Z

    :cond_2
    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewHeightForPosition(I)I
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->getLayoutManager()Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    .line 399
    rem-int v1, p1, v0

    .line 400
    div-int/2addr p1, v0

    if-nez v1, :cond_0

    .line 403
    iget p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mItemHeight:I

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasUniformViewHeight()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 353
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;

    .line 354
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 355
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->cancelPotentialWork(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;)V

    .line 358
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mBitmapWorkerTaskWeakReference:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    .line 359
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 361
    :cond_0
    iget p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mItemHeight:I

    if-nez p2, :cond_1

    .line 362
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mIcon:Landroid/widget/ImageView;

    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$IconPickerAdapter$HMxUkRputG4HscXUMYzrT66SVBA;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$IconPickerFragment$IconPickerAdapter$HMxUkRputG4HscXUMYzrT66SVBA;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 345
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d005e

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 346
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;Landroid/view/View;)V

    .line 347
    iget-object p1, p2, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter$IconViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$IconPickerAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
