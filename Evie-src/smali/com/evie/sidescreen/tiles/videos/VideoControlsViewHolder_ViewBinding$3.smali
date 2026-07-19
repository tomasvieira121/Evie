.class Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;
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

    .line 57
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;->this$0:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;->val$target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder_ViewBinding$3;->val$target:Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/videos/VideoControlsViewHolder;->onEnterFullScreen(Landroid/view/View;)V

    return-void
.end method
