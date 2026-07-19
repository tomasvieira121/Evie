.class Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$1;
.super Landroid/telephony/PhoneStateListener;
.source "RelatedVideosActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$1;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    .line 155
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 158
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$1;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    invoke-static {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;)Lcom/evie/sidescreen/relatedcontent/VideoHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/evie/sidescreen/relatedcontent/VideoHandler;->onVideoPause()V

    :cond_1
    return-void
.end method
