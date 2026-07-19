.class public Lcom/evie/sidescreen/mvp/MvpViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MvpViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/evie/sidescreen/mvp/ItemPresenter;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;"
    }
.end annotation


# instance fields
.field protected mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method


# virtual methods
.method public bindPresenter(Lcom/evie/sidescreen/mvp/ItemPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-void
.end method

.method public unbindPresenter()V
    .locals 1

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/evie/sidescreen/mvp/MvpViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    return-void
.end method
