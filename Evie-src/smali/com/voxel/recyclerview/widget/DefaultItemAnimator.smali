.class public Lcom/voxel/recyclerview/widget/DefaultItemAnimator;
.super Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/recyclerview/widget/DefaultItemAnimator$VpaListenerAdapter;,
        Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;,
        Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;
    }
.end annotation


# instance fields
.field private mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/RecyclerView$ItemAnimator;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 0

    .line 34
    invoke-direct/range {p0 .. p5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateChangeImpl(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateAddImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$700(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method static synthetic access$900(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;)Ljava/util/ArrayList;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    return-object p0
.end method

.method private animateAddImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .line 222
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 225
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getAddDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$5;

    invoke-direct {v2, p0, p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$5;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    .line 226
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateChangeImpl(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 5

    .line 333
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 334
    :cond_0
    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 335
    :goto_0
    iget-object v2, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1

    .line 336
    iget-object v1, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_1
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 338
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 340
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v3

    .line 339
    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 341
    iget v3, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toX:I

    iget v4, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 342
    iget v3, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->toY:I

    iget v4, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 343
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;

    invoke-direct {v4, p0, p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$7;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_2
    if-eqz v1, :cond_3

    .line 362
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 365
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$8;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 380
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_3
    return-void
.end method

.method private animateMoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .locals 7

    .line 270
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v4, :cond_0

    .line 274
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_0
    if-eqz v5, :cond_1

    .line 277
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 282
    :cond_1
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 284
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance p3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$6;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private animateRemoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 193
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 194
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    new-instance v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$4;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 210
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private dispatchFinishedWhenDone()V
    .locals 1

    .line 523
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    :cond_0
    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;",
            ">;",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 385
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 386
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    .line 387
    invoke-direct {p0, v1, p2}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    iget-object v2, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_0

    .line 389
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V
    .locals 1

    .line 396
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 399
    :cond_0
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1

    .line 400
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_1
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 4

    .line 405
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_0

    .line 406
    iput-object v2, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_1

    .line 408
    iput-object v2, p1, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x1

    .line 413
    :goto_0
    iget-object p1, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 414
    iget-object p1, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 415
    iget-object p1, p2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 416
    invoke-virtual {p0, p2, v3}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchChangeFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_1
    return v3
.end method


# virtual methods
.method public animateAdd(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .line 215
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 216
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 217
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateChange(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 11

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    .line 311
    iget-object v1, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    .line 312
    iget-object v4, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 313
    iget-object v5, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v5}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v5

    .line 314
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v6, p5, p3

    int-to-float v6, v6

    sub-float/2addr v6, v1

    float-to-int v6, v6

    sub-int v7, p6, p4

    int-to-float v7, v7

    sub-float/2addr v7, v4

    float-to-int v7, v7

    .line 318
    iget-object v8, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v8, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 319
    iget-object v1, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 320
    iget-object v1, v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1, v5}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    if-eqz v3, :cond_0

    .line 321
    iget-object v1, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0, p2}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 324
    iget-object v1, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v4, v6

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 325
    iget-object v1, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v4, v7

    int-to-float v4, v4

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 326
    iget-object v1, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 328
    :cond_0
    iget-object v9, v0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v10, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    const/4 v8, 0x0

    move-object v1, v10

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    return v1
.end method

.method public animateMove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .locals 8

    .line 249
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float p2, p2

    .line 250
    iget-object v1, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v3, p2

    int-to-float p2, p3

    .line 251
    iget-object p3, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v4, p2

    .line 252
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v3

    sub-int p3, p5, v4

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 256
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p2, :cond_1

    neg-int p2, p2

    int-to-float p2, p2

    .line 260
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_1
    if-eqz p3, :cond_2

    neg-int p2, p3

    int-to-float p2, p2

    .line 263
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 265
    :cond_2
    iget-object p2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;-><init>(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/voxel/recyclerview/widget/DefaultItemAnimator$1;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateRemove(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    .line 187
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 188
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method cancelAll(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 616
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public endAnimation(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 7

    .line 422
    iget-object v0, p1, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 424
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 426
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_1

    .line 427
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 428
    iget-object v3, v3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_0

    .line 429
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 430
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 431
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 432
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 436
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    .line 437
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 440
    :cond_2
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 441
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 442
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 445
    :cond_3
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_5

    .line 446
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 447
    invoke-direct {p0, v4, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimation(Ljava/util/List;Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 448
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 449
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 452
    :cond_5
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_8

    .line 453
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 454
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_3
    if-ltz v5, :cond_7

    .line 455
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 456
    iget-object v6, v6, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_6

    .line 457
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 458
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 459
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 460
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 461
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 462
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 468
    :cond_8
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_a

    .line 469
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 471
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 472
    invoke-virtual {p0, p1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 473
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 474
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 480
    :cond_a
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 485
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 490
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 495
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 499
    invoke-direct {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .locals 7

    .line 530
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 532
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 533
    iget-object v3, v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 534
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 535
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 536
    iget-object v1, v2, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 537
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 541
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 542
    invoke-virtual {p0, v2}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchRemoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 543
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v0, :cond_2

    .line 547
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 548
    iget-object v4, v3, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 549
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 550
    invoke-virtual {p0, v3}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 551
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 553
    :cond_2
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_3

    .line 555
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 557
    :cond_3
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 562
    :cond_4
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_7

    .line 564
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 565
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_5
    if-ltz v4, :cond_6

    .line 567
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    .line 568
    iget-object v6, v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 569
    iget-object v6, v6, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 570
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 571
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 572
    iget-object v5, v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchMoveFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 573
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 575
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 579
    :cond_7
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_a

    .line 581
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 582
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 584
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 585
    iget-object v5, v4, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 586
    invoke-static {v5, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 587
    invoke-virtual {p0, v4}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAddFinished(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 588
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 590
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 594
    :cond_a
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_d

    .line 596
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_9
    if-ltz v2, :cond_c

    .line 599
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->endChangeAnimationIfNecessary(Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;)V

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 601
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 606
    :cond_d
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 607
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 609
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 611
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 504
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public runPendingAnimations()V
    .locals 10

    .line 97
    iget-object v0, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 98
    iget-object v1, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 99
    iget-object v2, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 100
    iget-object v3, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 107
    invoke-direct {p0, v5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->animateRemoveImpl(Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v4, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 112
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v6, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$1;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$MoveInfo;->holder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 131
    :cond_2
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_1
    if-eqz v2, :cond_5

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v6, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 140
    new-instance v6, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$2;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_4

    .line 151
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$ChangeInfo;->oldHolder:Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    .line 152
    iget-object v5, v5, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_2

    .line 154
    :cond_4
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_2
    if-eqz v3, :cond_b

    .line 159
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v5, p0, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v5, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator$3;-><init>(Lcom/voxel/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v2, :cond_6

    goto :goto_3

    .line 180
    :cond_6
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    :cond_7
    :goto_3
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_8

    .line 173
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_4

    :cond_8
    move-wide v8, v6

    :goto_4
    if-eqz v1, :cond_9

    .line 174
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_5

    :cond_9
    move-wide v0, v6

    :goto_5
    if-eqz v2, :cond_a

    .line 175
    invoke-virtual {p0}, Lcom/voxel/recyclerview/widget/DefaultItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 176
    :cond_a
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 177
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/voxel/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 178
    invoke-static {v0, v5, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_b
    :goto_6
    return-void
.end method
