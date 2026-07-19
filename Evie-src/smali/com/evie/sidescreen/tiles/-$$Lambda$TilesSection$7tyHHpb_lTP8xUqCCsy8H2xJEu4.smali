.class public final synthetic Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/tiles/TilesSection;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/tiles/TilesSection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$TilesSection$7tyHHpb_lTP8xUqCCsy8H2xJEu4;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/tiles/TilesSection;->lambda$new$8(Lcom/evie/sidescreen/tiles/TilesSection;Lcom/evie/common/data/Lce;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
