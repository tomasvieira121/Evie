.class Lcom/github/rahatarmanahmed/cpv/CircularProgressView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->setProgress(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

.field final synthetic val$currentProgress:F


# direct methods
.method constructor <init>(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;F)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$2;->this$0:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    iput p2, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$2;->val$currentProgress:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 287
    iget-object p1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$2;->this$0:Lcom/github/rahatarmanahmed/cpv/CircularProgressView;

    invoke-static {p1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressView;->access$100(Lcom/github/rahatarmanahmed/cpv/CircularProgressView;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/rahatarmanahmed/cpv/CircularProgressViewListener;

    .line 288
    iget v1, p0, Lcom/github/rahatarmanahmed/cpv/CircularProgressView$2;->val$currentProgress:F

    invoke-interface {v0, v1}, Lcom/github/rahatarmanahmed/cpv/CircularProgressViewListener;->onProgressUpdateEnd(F)V

    goto :goto_0

    :cond_0
    return-void
.end method
