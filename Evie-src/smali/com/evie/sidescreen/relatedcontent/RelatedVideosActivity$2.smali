.class Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;
.super Landroid/database/ContentObserver;
.source "RelatedVideosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->registerAutoRotateSettingChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/os/Handler;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    if-nez p1, :cond_3

    .line 291
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$202(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Z)Z

    .line 293
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$200(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 294
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$300(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 299
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$400(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 300
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 304
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$2;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-virtual {p1, v1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->setRequestedOrientation(I)V

    :cond_3
    :goto_0
    return-void
.end method
