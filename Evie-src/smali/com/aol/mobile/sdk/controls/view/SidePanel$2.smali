.class Lcom/aol/mobile/sdk/controls/view/SidePanel$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$2;->b:Lcom/aol/mobile/sdk/controls/view/SidePanel;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$2;->a:Landroid/view/View;

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

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/SidePanel$2;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
