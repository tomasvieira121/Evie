.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

.field private final synthetic f$1:I

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    iput p2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$1:I

    iput-object p3, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;

    iget v1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$1:I

    iget-object v2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosFragment$rTcnn4mAwLgAkZBlv0emvk2tQaA;->f$3:Z

    check-cast p1, Lcom/evie/common/data/Lce;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;->lambda$getRelatedContent$0(Lcom/evie/sidescreen/relatedcontent/RelatedVideosFragment;ILjava/lang/String;ZLcom/evie/common/data/Lce;)V

    return-void
.end method
