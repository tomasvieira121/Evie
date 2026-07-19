.class Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 229
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 232
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$502(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;Z)Z

    .line 233
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$600(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$700(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Player is prepared and play() was called."

    .line 234
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->log(Ljava/lang/String;)V

    .line 235
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->play()V

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$400(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 239
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$3;->this$0:Lcom/voxel/simplesearchlauncher/view/TextureVideoView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView;->access$400(Lcom/voxel/simplesearchlauncher/view/TextureVideoView;)Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/view/TextureVideoView$MediaPlayerListener;->onVideoPrepared()V

    :cond_1
    return-void
.end method
