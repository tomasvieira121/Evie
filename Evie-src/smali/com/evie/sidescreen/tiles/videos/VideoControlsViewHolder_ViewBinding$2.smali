.class Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "VideoControlsViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 48
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->onPauseClick()V

    return-void
.end method
