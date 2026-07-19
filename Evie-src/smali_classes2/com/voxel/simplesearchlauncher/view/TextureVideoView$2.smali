.class Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 212
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    sget-object v0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;->END:Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$302(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$State;

    const-string p1, "Video has ended."

    .line 216
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$400(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$2;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$400(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;->onVideoEnd()V

    :cond_0
    return-void
.end method
