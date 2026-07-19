.class Lcom/evie/sidescreen/SideScreenView$2;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
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
.method constructor <init>(Lcom/evie/sidescreen/SideScreenView;Landroid/content/Context;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$2;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 204
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->onLayoutCompleted(Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 207
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$2;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$200(Lcom/evie/sidescreen/SideScreenView;)V

    .line 208
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$2;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$300(Lcom/evie/sidescreen/SideScreenView;)V

    .line 209
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$2;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$400(Lcom/evie/sidescreen/SideScreenView;)V

    .line 212
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$2;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$500(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/evie/sidescreen/mvp/LifecycleAwareMvpRecyclerAdapter;->updateVisibility()V

    return-void
.end method
