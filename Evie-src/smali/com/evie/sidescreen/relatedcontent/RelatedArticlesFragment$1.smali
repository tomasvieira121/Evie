.class Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;
.super Ljava/lang/Object;
.source "RelatedArticlesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->lambda$getRelatedContent$0(ILjava/lang/String;ZLcom/evie/common/data/Lce;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

.field final synthetic val$articleId:Ljava/lang/String;

.field final synthetic val$attempt:I

.field final synthetic val$full:Z


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Ljava/lang/String;ZI)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    iput-object p2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$articleId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$full:Z

    iput p4, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$attempt:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 149
    iget-object v0, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->this$0:Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;

    iget-object v1, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$articleId:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$full:Z

    iget v3, p0, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment$1;->val$attempt:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;->access$000(Lcom/evie/sidescreen/relatedcontent/RelatedArticlesFragment;Ljava/lang/String;ZI)V

    return-void
.end method
