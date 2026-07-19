.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo;->f$0:Lcom/evie/sidescreen/SideScreenView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$jXQFbkv7OAsLAJPu2tNb9ewGuBo;->f$0:Lcom/evie/sidescreen/SideScreenView;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenView;->showBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method
