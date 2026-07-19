.class Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;
.super Ljava/lang/Object;
.source "TilesSection.java"

# interfaces
.implements Lcom/evie/sidescreen/mvp/Replacer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/tiles/TilesSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TilesSectionReplacer"
.end annotation


# instance fields
.field mTarget:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/evie/sidescreen/tiles/TilesSection;


# direct methods
.method public constructor <init>(Lcom/evie/sidescreen/tiles/TilesSection;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "Ljava/util/List<",
            "Lcom/evie/sidescreen/mvp/ItemPresenter;",
            ">;>;)V"
        }
    .end annotation

    .line 289
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->this$0:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->mTarget:Lio/reactivex/Observer;

    return-void
.end method


# virtual methods
.method public replace(Lcom/evie/sidescreen/mvp/ItemPresenter;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/evie/sidescreen/mvp/ItemPresenter<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lcom/evie/sidescreen/mvp/ItemPresenter<",
            "*>;>;)V"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->this$0:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/TilesSection;->access$000(Lcom/evie/sidescreen/tiles/TilesSection;)Lcom/evie/sidescreen/mvp/Replacer;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->this$0:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-static {v0}, Lcom/evie/sidescreen/tiles/TilesSection;->access$100(Lcom/evie/sidescreen/tiles/TilesSection;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 304
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->this$0:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-static {v1}, Lcom/evie/sidescreen/tiles/TilesSection;->access$100(Lcom/evie/sidescreen/tiles/TilesSection;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/subjects/BehaviorSubject;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 305
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    .line 307
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 309
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    .line 310
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/evie/sidescreen/mvp/ItemPresenter;

    .line 314
    instance-of v1, p2, Lcom/evie/sidescreen/mvp/Unreliable;

    if-eqz v1, :cond_3

    .line 315
    check-cast p2, Lcom/evie/sidescreen/mvp/Unreliable;

    iget-object v1, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->this$0:Lcom/evie/sidescreen/tiles/TilesSection;

    invoke-static {v1}, Lcom/evie/sidescreen/tiles/TilesSection;->access$000(Lcom/evie/sidescreen/tiles/TilesSection;)Lcom/evie/sidescreen/mvp/Replacer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/evie/sidescreen/mvp/Unreliable;->setReplacer(Lcom/evie/sidescreen/mvp/Replacer;)V

    goto :goto_1

    .line 318
    :cond_4
    iget-object p1, p0, Lcom/evie/sidescreen/tiles/TilesSection$TilesSectionReplacer;->mTarget:Lio/reactivex/Observer;

    invoke-interface {p1, v0}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method
