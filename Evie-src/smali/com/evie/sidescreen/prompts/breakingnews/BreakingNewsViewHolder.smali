.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "BreakingNewsViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# instance fields
.field mSection:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    sget v0, Lcom/evie/sidescreen/R$layout;->ss_prompt_breakingnews:I

    sput v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsViewHolder;->mPresenter:Lcom/evie/sidescreen/mvp/ItemPresenter;

    check-cast v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsPresenter;->onDismissClick(Landroid/view/View;)V

    return-void
.end method
