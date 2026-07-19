.class public final synthetic Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$2:I

    return-void
.end method


# virtual methods
.method public final onSystemUiVisibilityChange(I)V
    .locals 3

    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$0:Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/evie/sidescreen/relatedcontent/-$$Lambda$RelatedVideosActivity$y5suLPa4zUHSWSp9IxERJu8Hq3Y;->f$2:I

    invoke-static {v0, v1, v2, p1}, Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;->lambda$setPersistentImmersiveMode$2(Lcom/evie/sidescreen/relatedcontent/RelatedVideosActivity;Landroid/view/View;II)V

    return-void
.end method
