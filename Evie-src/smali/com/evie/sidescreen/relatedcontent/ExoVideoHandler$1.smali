.class Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;
.super Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;
.source "ExoVideoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->enterFullscreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-direct {p0, p2, p3, p4}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;-><init>(Landroid/content/Context;ILcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/evie/sidescreen/relatedcontent/FullScreenExoDialog;->onBackPressed()V

    .line 148
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler$1;->this$0:Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;

    invoke-static {v0}, Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;->access$000(Lcom/evie/sidescreen/relatedcontent/ExoVideoHandler;)Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/evie/sidescreen/relatedcontent/VideoHandler$VideoHelperInterface;->manuallyExitFullScreen()V

    return-void
.end method
