.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$4;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$4;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->s(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method
