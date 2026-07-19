.class Lcom/aol/mobile/sdk/renderer/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/f;-><init>(Lcom/aol/mobile/sdk/renderer/e;Lcom/aol/mobile/sdk/renderer/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/f;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/f$1;->a:Lcom/aol/mobile/sdk/renderer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f$1;->a:Lcom/aol/mobile/sdk/renderer/f;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/f;->a(Lcom/aol/mobile/sdk/renderer/f;)Lcom/aol/mobile/sdk/renderer/i;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceReleased(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f$1;->a:Lcom/aol/mobile/sdk/renderer/f;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/f;->a(Lcom/aol/mobile/sdk/renderer/f;)Lcom/aol/mobile/sdk/renderer/i;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceResized(II)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/f$1;->a:Lcom/aol/mobile/sdk/renderer/f;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/f;->a(Lcom/aol/mobile/sdk/renderer/f;)Lcom/aol/mobile/sdk/renderer/i;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    invoke-interface {v0, p1}, Lcom/aol/mobile/sdk/renderer/i;->onVideoSurfaceAvailable(Landroid/view/Surface;)V

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
