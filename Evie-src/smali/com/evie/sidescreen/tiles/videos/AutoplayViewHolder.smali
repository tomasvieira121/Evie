.class public Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "AutoplayViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mAutoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    sget v0, Lcom/evie/sidescreen/R$layout;->tile_autoplay:I

    sput v0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mInitialized:Z

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation runtime Lbutterknife/OnCheckedChanged;
    .end annotation

    .line 35
    iget-boolean p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mInitialized:Z

    if-eqz p1, :cond_0

    .line 36
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast p1, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;

    invoke-virtual {p1, p2}, Lcom/evie/sidescreen/tiles/videos/AutoplayPresenter;->onCheckedChanged(Z)V

    :cond_0
    return-void
.end method

.method public setAutoplay(Z)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mAutoplaySwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/evie/sidescreen/tiles/videos/AutoplayViewHolder;->mInitialized:Z

    return-void
.end method
