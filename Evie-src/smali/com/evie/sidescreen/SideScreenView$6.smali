.class Lcom/evie/sidescreen/SideScreenView$6;
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

    .line 291
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    if-eq p2, p6, :cond_3

    if-eq p3, p7, :cond_3

    if-eq p4, p8, :cond_3

    if-ne p5, p9, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget-object p1, p1, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 304
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget-object p2, p1, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p2

    iget-object p3, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget p3, p3, Lcom/evie/sidescreen/SideScreenView;->mBackTopTopButtonShadowPadding:I

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Lcom/evie/sidescreen/SideScreenView;->access$802(Lcom/evie/sidescreen/SideScreenView;I)I

    .line 305
    iget-object p1, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    iget-object p1, p1, Lcom/evie/sidescreen/SideScreenView;->mBackToTopButton:Landroid/view/View;

    iget-object p2, p0, Lcom/evie/sidescreen/SideScreenView$6;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {p2}, Lcom/evie/sidescreen/SideScreenView;->access$800(Lcom/evie/sidescreen/SideScreenView;)I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
