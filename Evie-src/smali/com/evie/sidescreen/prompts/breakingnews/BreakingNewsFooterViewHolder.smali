.class public Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;
.super Lcom/evie/sidescreen/mvp/MvpViewHolder;
.source "BreakingNewsFooterViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/mvp/MvpViewHolder<",
        "Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterPresenter;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget v0, Lcom/evie/sidescreen/R$layout;->tiles_footer:I

    sput v0, Lcom/evie/sidescreen/prompts/breakingnews/BreakingNewsFooterViewHolder;->ID:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/evie/sidescreen/mvp/MvpViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method
