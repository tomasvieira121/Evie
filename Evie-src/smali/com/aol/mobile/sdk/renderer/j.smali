.class public final Lcom/aol/mobile/sdk/renderer/j;
.super Landroid/view/TextureView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/i;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/aol/mobile/sdk/renderer/j$1;

    invoke-direct {p1, p0, p2}, Lcom/aol/mobile/sdk/renderer/j$1;-><init>(Lcom/aol/mobile/sdk/renderer/j;Lcom/aol/mobile/sdk/renderer/i;)V

    invoke-virtual {p0, p1}, Lcom/aol/mobile/sdk/renderer/j;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method
