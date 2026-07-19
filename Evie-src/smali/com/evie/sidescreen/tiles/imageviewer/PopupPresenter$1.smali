.class Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;
.super Ljava/lang/Object;
.source "PopupPresenter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->dismissPopup(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 132
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-static {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->access$000(Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object p1

    check-cast p1, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->dismissPopup()V

    .line 133
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;->dispose()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
