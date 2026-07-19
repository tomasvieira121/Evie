.class Lcom/evie/sidescreen/SideScreenView$4;
.super Ljava/lang/Object;
.source "SideScreenView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


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

    .line 238
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int p1, p4, p2

    sub-int/2addr p8, p6

    if-ne p1, p8, :cond_0

    return-void

    .line 247
    :cond_0
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p2}, Lcom/evie/sidescreen/SideScreenView;->access$600(Lcom/evie/sidescreen/SideScreenView;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 248
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p2}, Lcom/evie/sidescreen/SideScreenView;->access$700(Lcom/evie/sidescreen/SideScreenView;)Landroid/widget/ImageSwitcher;

    move-result-object p2

    int-to-float p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/ImageSwitcher;->setPivotX(F)V

    goto :goto_0

    .line 250
    :cond_1
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p2}, Lcom/evie/sidescreen/SideScreenView;->access$700(Lcom/evie/sidescreen/SideScreenView;)Landroid/widget/ImageSwitcher;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/ImageSwitcher;->setPivotX(F)V

    .line 253
    :goto_0
    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget p2, p2, Lcom/evie/sidescreen/SideScreenView;->mHeaderParallaxDistance:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr p2, p1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 254
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$700(Lcom/evie/sidescreen/SideScreenView;)Landroid/widget/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setScaleX(F)V

    .line 255
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$4;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p1}, Lcom/evie/sidescreen/SideScreenView;->access$700(Lcom/evie/sidescreen/SideScreenView;)Landroid/widget/ImageSwitcher;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageSwitcher;->setScaleY(F)V

    return-void
.end method
