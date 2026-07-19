.class Lcom/aol/mobile/sdk/controls/view/SidePanel$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/SidePanel;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/aol/mobile/sdk/controls/view/SidePanel;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/SidePanel;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$1;->b:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    return-void
.end method
