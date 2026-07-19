.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI;->f$0:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$8Ll1RBhZHBAVi2-dB_ehD9ycrcI;->f$0:Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;

    invoke-virtual {v0}, Lcom/evie/sidescreen/relatedcontent/FullScreenPeekyControls;->hideControls()V

    return-void
.end method
