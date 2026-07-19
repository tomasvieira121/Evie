.class public final Lcom/evie/jigsaw/listeners/FinishingOnClickListener;
.super Ljava/lang/Object;
.source "FinishingOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 19
    instance-of v0, p1, Lcom/evie/jigsaw/JigsawActivity;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/evie/jigsaw/JigsawActivity;

    sget-object v0, Lcom/evie/common/services/analytics/models/CloseMethod;->VIEW_TOUCH:Lcom/evie/common/services/analytics/models/CloseMethod;

    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/JigsawActivity;->finish(Lcom/evie/common/services/analytics/models/CloseMethod;)V

    goto :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 27
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method
