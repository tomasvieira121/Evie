.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

.field private final synthetic f$1:Lcom/evie/sidescreen/ActivityStarter;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Lcom/evie/sidescreen/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;->f$1:Lcom/evie/sidescreen/ActivityStarter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedArticlesActivity$TM7hoyzFJckwH4HBO9X1dMqqdm4;->f$1:Lcom/evie/sidescreen/ActivityStarter;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;->lambda$shareArticle$0(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesActivity;Lcom/evie/sidescreen/ActivityStarter;Ljava/lang/String;)V

    return-void
.end method
