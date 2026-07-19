.class Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;
.super Landroid/view/OrientationEventListener;
.source "RelatedVideosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->createOrientationListenerInstance()Landroid/view/OrientationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

.field final synthetic val$mWindowManager:Landroid/view/WindowManager;

.field final synthetic val$startingAngle:I


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/content/Context;ILandroid/view/WindowManager;I)V
    .locals 0

    .line 917
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iput-object p4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->val$mWindowManager:Landroid/view/WindowManager;

    iput p5, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->val$startingAngle:I

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3

    .line 920
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->val$mWindowManager:Landroid/view/WindowManager;

    if-nez p1, :cond_0

    return-void

    .line 923
    :cond_0
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 924
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 925
    iget v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->val$startingAngle:I

    sub-int v1, p1, v0

    if-eqz v1, :cond_2

    sub-int v1, p1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    sub-int/2addr p1, v0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    .line 928
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    .line 931
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 932
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$600(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Landroid/view/OrientationEventListener;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/OrientationEventListener;->disable()V

    .line 933
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$3;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$602(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/OrientationEventListener;)Landroid/view/OrientationEventListener;

    :cond_2
    return-void
.end method
