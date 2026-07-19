.class public final synthetic Lcom/evie/sidescreen/tiles/-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs;
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

    iput-object p1, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/tiles/-$$Lambda$0L_Ej33NorW7bo-o7YzdgBq-uvs;->f$0:Lcom/evie/sidescreen/tiles/TilesSection;

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/tiles/TilesSection;->assembleSectionWithContent(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
