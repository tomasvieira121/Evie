.class Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    int-to-float p2, p2

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$002(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;F)F

    .line 207
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    int-to-float p2, p3

    invoke-static {p1, p2}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$102(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;F)F

    .line 208
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$1;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$200(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)V

    return-void
.end method
