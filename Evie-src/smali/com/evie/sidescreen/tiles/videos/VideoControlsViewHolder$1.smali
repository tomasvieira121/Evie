.class Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;
.super Ljava/lang/Object;
.source "VideoControlsViewHolder.java"

# interfaces
.implements Lcom/google/android/exoplayer2/ui/TimeBar$OnScrubListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;-><init>(Landroid/view/View;Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrubMove(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 0

    return-void
.end method

.method public onScrubStart(Lcom/google/android/exoplayer2/ui/TimeBar;J)V
    .locals 0

    .line 79
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onPause()V

    return-void
.end method

.method public onScrubStop(Lcom/google/android/exoplayer2/ui/TimeBar;JZ)V
    .locals 0

    if-nez p4, :cond_0

    .line 89
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1, p2, p3}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onScrub(J)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder$1;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    iget-object p1, p1, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->mHandler:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;

    invoke-virtual {p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity$PlayerActionHandler;->onPlay()V

    :goto_0
    return-void
.end method
