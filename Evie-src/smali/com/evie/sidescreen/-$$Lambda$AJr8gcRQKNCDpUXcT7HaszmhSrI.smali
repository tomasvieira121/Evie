.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI;->f$0:Lcom/evie/sidescreen/SideScreenPresenter;

    return-void
.end method


# virtual methods
.method public final onRefresh()V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$AJr8gcRQKNCDpUXcT7HaszmhSrI;->f$0:Lcom/evie/sidescreen/SideScreenPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/SideScreenPresenter;->onRefresh()V

    return-void
.end method
