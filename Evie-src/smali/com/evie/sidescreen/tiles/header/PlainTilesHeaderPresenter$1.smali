.class Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;
.super Ljava/lang/Object;
.source "PlainTilesHeaderPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 75
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->access$000(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    div-double/2addr v0, v2

    .line 78
    iget-object v2, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    invoke-static {v2}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->access$100(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Lcom/evie/sidescreen/mvp/MvpViewHolder;

    move-result-object v2

    check-cast v2, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderViewHolder;->setTitle(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->access$300(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter$1;->this$0:Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;

    invoke-static {v1}, Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;->access$200(Lcom/evie/sidescreen/tiles/header/PlainTilesHeaderPresenter;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
