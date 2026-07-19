.class Lcom/evie/sidescreen/SideScreenView$5;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "SideScreenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/SideScreenView;-><init>(Lcom/evie/sidescreen/SideScreenPresenter;Landroid/content/Context;Lcom/evie/sidescreen/weather/WeatherPresenter;ZZZLcom/evie/sidescreen/searchbar/WhiteSearchBarBackgroundModelFactory;Lcom/evie/sidescreen/searchbar/SearchBarPresenterFactory;Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;Lcom/evie/sidescreen/SideScreenConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$5;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$5;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget-object p1, p1, Lcom/evie/sidescreen/SideScreenView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 287
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$5;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenView;->hideBackToTopButtonImmediate()V

    return-void
.end method
