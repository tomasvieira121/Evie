.class public final synthetic Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/imageviewer/-$$Lambda$PopupViewHolder$KWmkf_ggYrEx-KsQY2jD6cvnCJ4;->f$0:Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;->lambda$animateFullScreen$3(Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;)V

    return-void
.end method
