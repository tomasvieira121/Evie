.class Lcom/android/photos/views/TiledImageView$1;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/photos/views/TiledImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/photos/views/TiledImageView;


# direct methods
.method constructor <init>(Lcom/android/photos/views/TiledImageView;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/photos/views/TiledImageView$1;->this$0:Lcom/android/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/photos/views/TiledImageView$1;->this$0:Lcom/android/photos/views/TiledImageView;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView;->mRenderer:Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;

    iget-object v0, v0, Lcom/android/photos/views/TiledImageView$ImageRendererWrapper;->image:Lcom/android/photos/views/TiledImageRenderer;

    invoke-virtual {v0}, Lcom/android/photos/views/TiledImageRenderer;->freeTextures()V

    return-void
.end method
