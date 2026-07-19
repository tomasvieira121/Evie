.class public final Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lcom/voxel/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lcom/voxel/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 3549
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3550
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 3551
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 3553
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 3555
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 3556
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    const/4 p1, 0x2

    .line 3558
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$1800(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 0

    .line 3549
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object p0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1

    .line 3856
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3000(Lcom/voxel/recyclerview/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3000(Lcom/voxel/recyclerview/widget/RecyclerView;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3857
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3859
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 3862
    :cond_0
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3863
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 3864
    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroidx/core/view/AccessibilityDelegateCompat;

    move-result-object v0

    .line 3863
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 4

    .line 3876
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 3877
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3878
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 3879
    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    .line 3886
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const/4 p2, 0x0

    .line 3887
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3888
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 3890
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    .line 3891
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3892
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private invalidateDisplayListInt(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 3870
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 3871
    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .line 4021
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 4022
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4023
    iput-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 4024
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 3571
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3572
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    return-void
.end method

.method clearOldPositions()V
    .locals 4

    .line 4386
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4388
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4389
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4391
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 4393
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4395
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 4396
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 4398
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .line 4091
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3

    if-ltz p1, :cond_1

    .line 3699
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3703
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 3706
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    return p1

    .line 3700
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". State item count is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    .line 3701
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 4232
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3400(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4233
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$3400(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4235
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4236
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4238
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 4239
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 9

    .line 4097
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_2

    .line 4102
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4103
    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    if-ne v6, p1, :cond_1

    .line 4104
    invoke-virtual {v5, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4109
    :cond_2
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4110
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v3, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    if-lez p1, :cond_4

    .line 4111
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    if-ge p1, v3, :cond_4

    .line 4112
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    :goto_1
    if-ge v2, v0, :cond_4

    .line 4114
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4115
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v7

    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 4116
    invoke-virtual {p1, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v1

    :cond_5
    :goto_2
    return-object v1
.end method

.method getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .line 4336
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 4337
    new-instance v0, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 4339
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .line 4083
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 3594
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1

    .line 4087
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1
.end method

.method getScrapViewForId(JIZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 4183
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 4185
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4186
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4187
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_1

    const/16 p1, 0x20

    .line 4188
    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4189
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4198
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    const/16 p2, 0xe

    .line 4199
    invoke-virtual {v1, p1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    :cond_0
    return-object v1

    :cond_1
    if-nez p4, :cond_2

    .line 4206
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4207
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v3, v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4208
    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4214
    :cond_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_7

    .line 4216
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4217
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_6

    .line 4218
    invoke-virtual {v1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-ne p3, v2, :cond_5

    if-nez p4, :cond_4

    .line 4220
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    return-object v1

    :cond_5
    if-nez p4, :cond_6

    .line 4224
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method getScrapViewForPosition(IIZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 4135
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 4139
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4140
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-ne v4, p1, :cond_2

    .line 4141
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v4, v4, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v4}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1500(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 4142
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    if-eq v0, p2, :cond_1

    const-string v0, "RecyclerView"

    .line 4143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrap view for position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isn\'t dirty but has wrong view type! (found "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    invoke-virtual {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " but expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4143
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const/16 p1, 0x20

    .line 4148
    invoke-virtual {v3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    .line 4154
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mChildHelper:Lcom/voxel/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/voxel/recyclerview/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 4157
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mItemAnimator:Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4162
    :cond_4
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_7

    .line 4164
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4167
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v2

    if-ne v2, p1, :cond_6

    if-nez p3, :cond_5

    .line 4169
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_5
    return-object v0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 3724
    invoke-virtual {p0, p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 8

    if-ltz p1, :cond_16

    .line 3728
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 3735
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 3736
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v1

    const/4 v4, 0x0

    :goto_0
    if-nez v0, :cond_6

    const/4 v0, -0x1

    .line 3741
    invoke-virtual {p0, p1, v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3743
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_5

    if-nez p2, :cond_4

    const/4 v5, 0x4

    .line 3748
    invoke-virtual {v0, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3749
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3750
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v6, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v6, v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3751
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_1

    .line 3752
    :cond_2
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3753
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 3755
    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_4
    move-object v0, v1

    goto :goto_2

    :cond_5
    const/4 v4, 0x1

    :cond_6
    :goto_2
    if-nez v0, :cond_e

    .line 3764
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v1

    if-ltz v1, :cond_d

    .line 3765
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-ge v1, v5, :cond_d

    .line 3771
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v5}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v5

    .line 3773
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v6}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3774
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7, v5, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 3777
    iput v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v4, 0x1

    :cond_7
    if-nez v0, :cond_a

    .line 3781
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;

    if-eqz p2, :cond_a

    .line 3785
    invoke-virtual {p2, p0, p1, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 3787
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3791
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_3

    .line 3792
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3789
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_3
    if-nez v0, :cond_c

    .line 3805
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object p2

    invoke-virtual {p2, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 3807
    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 3808
    invoke-static {}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2900()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3809
    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    :cond_b
    move-object v0, p2

    :cond_c
    if-nez v0, :cond_e

    .line 3814
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v0, v5}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    goto :goto_4

    .line 3766
    :cond_d
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "(offset:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ").state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    .line 3768
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3821
    :cond_e
    :goto_4
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 3823
    iput p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_5

    .line 3824
    :cond_f
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result p2

    if-eqz p2, :cond_11

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result p2

    if-nez p2, :cond_11

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result p2

    if-eqz p2, :cond_10

    goto :goto_6

    :cond_10
    :goto_5
    const/4 p1, 0x0

    goto :goto_7

    .line 3829
    :cond_11
    :goto_6
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/voxel/recyclerview/widget/RecyclerView;->mAdapterHelper:Lcom/voxel/recyclerview/widget/AdapterHelper;

    invoke-virtual {p2, p1}, Lcom/voxel/recyclerview/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p2

    .line 3830
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iput-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 3831
    invoke-static {v1}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->bindViewHolder(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 3832
    iget-object p2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 3834
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p2, p2, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result p2

    if-eqz p2, :cond_12

    .line 3835
    iput p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    :cond_12
    const/4 p1, 0x1

    .line 3839
    :goto_7
    iget-object p2, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_13

    .line 3842
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3843
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 3844
    :cond_13
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 3845
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p2}, Lcom/voxel/recyclerview/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3846
    iget-object v1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    .line 3848
    :cond_14
    check-cast p2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3850
    :goto_8
    iput-object v0, p2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_15

    if-eqz p1, :cond_15

    goto :goto_9

    :cond_15
    const/4 v2, 0x0

    .line 3851
    :goto_9
    iput-boolean v2, p2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 3852
    iget-object p1, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object p1

    .line 3729
    :cond_16
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid item position "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). Item count:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    .line 3730
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method markItemDecorInsetsDirty()V
    .locals 4

    .line 4404
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4406
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4407
    iget-object v2, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    .line 4409
    iput-boolean v3, v2, Lcom/voxel/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .line 4371
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4372
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4374
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 4376
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4381
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4

    .line 4280
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4282
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    .line 4283
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_0

    const/4 v3, 0x1

    .line 4288
    invoke-virtual {v2, p2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    if-ge p1, p2, :cond_0

    const/4 v0, -0x1

    move v0, p1

    move v1, p2

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    move v1, p1

    move v0, p2

    const/4 v2, 0x1

    .line 4261
    :goto_0
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_4

    .line 4263
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v6, :cond_3

    .line 4264
    iget v7, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v7, v0, :cond_3

    iget v7, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v7, v1, :cond_1

    goto :goto_2

    .line 4267
    :cond_1
    iget v7, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v7, p1, :cond_2

    sub-int v7, p2, p1

    .line 4268
    invoke-virtual {v6, v7, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4270
    :cond_2
    invoke-virtual {v6, v2, v4}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 4

    add-int v0, p1, p2

    .line 4301
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 4303
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 4305
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, v0, :cond_0

    neg-int v3, p2

    .line 4311
    invoke-virtual {v2, v3, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_1

    .line 4312
    :cond_0
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_1

    const/16 v3, 0x8

    .line 4314
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4315
    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Z)V
    .locals 1

    .line 4246
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 4247
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;Z)V

    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 1

    .line 4033
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    .line 4034
    invoke-static {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$3302(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    .line 4035
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4036
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 1

    .line 3931
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 3933
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3935
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 1

    .line 3953
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 3957
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 3958
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3

    .line 3909
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3910
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3911
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 3913
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3914
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->unScrap()V

    goto :goto_0

    .line 3915
    :cond_1
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3916
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 3918
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method recycleViewHolderInternal(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .line 3967
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 3974
    :cond_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3979
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3985
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$3200(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    .line 3986
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    .line 3988
    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    .line 3991
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    .line 3992
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-static {v3}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->access$1500(Lcom/voxel/recyclerview/widget/RecyclerView$State;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3993
    :cond_4
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3995
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3996
    iget v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v3, v4, :cond_5

    if-lez v3, :cond_5

    .line 3997
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 3999
    :cond_5
    iget v4, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v3, v4, :cond_6

    .line 4000
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_7

    .line 4005
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 v2, 0x1

    .line 4014
    :cond_7
    :goto_3
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->onViewRecycled(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 4016
    iput-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lcom/voxel/recyclerview/widget/RecyclerView;

    :cond_8
    return-void

    .line 3980
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3975
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3968
    :cond_b
    :goto_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3970
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 3971
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c

    goto :goto_5

    :cond_c
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method scrapView(Landroid/view/View;)V
    .locals 1

    .line 4049
    invoke-static {p1}, Lcom/voxel/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 4050
    invoke-virtual {p1, p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->setScrapContainer(Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)V

    .line 4051
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4059
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 4060
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4062
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4052
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 4053
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4057
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .line 4361
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4363
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_0

    const/16 v3, 0x200

    .line 4365
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .locals 1

    .line 4326
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 4327
    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 4329
    :cond_0
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    if-eqz p1, :cond_1

    .line 4331
    iget-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mRecyclerPool:Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->getAdapter()Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$RecycledViewPool;->attach(Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0

    .line 4322
    iput-object p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheExtension:Lcom/voxel/recyclerview/widget/RecyclerView$ViewCacheExtension;

    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2

    .line 3581
    iput p1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 3583
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 3584
    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method unscrapView(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 4073
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->supportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4076
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4074
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x0

    .line 4078
    invoke-static {p1, v0}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->access$3302(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;)Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;

    .line 4079
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    return-void
.end method

.method validateViewHolderForOffsetPosition(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 7

    .line 3608
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3611
    :cond_0
    iget v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v0, :cond_4

    iget v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3615
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView;->mState:Lcom/voxel/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3617
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget v3, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 3618
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_1

    return v2

    .line 3622
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3623
    invoke-virtual {p1}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->this$0:Lcom/voxel/recyclerview/widget/RecyclerView;

    invoke-static {v0}, Lcom/voxel/recyclerview/widget/RecyclerView;->access$2100(Lcom/voxel/recyclerview/widget/RecyclerView;)Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget p1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, p1}, Lcom/voxel/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_3
    return v1

    .line 3612
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method viewRangeUpdate(II)V
    .locals 4

    add-int/2addr p2, p1

    .line 4344
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4346
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    goto :goto_1

    .line 4351
    :cond_0
    invoke-virtual {v2}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-lt v3, p1, :cond_1

    if-ge v3, p2, :cond_1

    const/4 v3, 0x2

    .line 4353
    invoke-virtual {v2, v3}, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
