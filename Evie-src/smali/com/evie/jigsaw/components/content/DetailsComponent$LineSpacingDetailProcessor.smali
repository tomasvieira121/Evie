.class final Lcom/evie/jigsaw/components/content/DetailsComponent$LineSpacingDetailProcessor;
.super Ljava/lang/Object;
.source "DetailsComponent.java"

# interfaces
.implements Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineSpacingDetailProcessor"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Landroid/content/Context;Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/components/content/DetailsComponent;)V
    .locals 0

    .line 174
    invoke-static {p3}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$200(Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->getLineSpacing(Landroid/content/Context;)I

    move-result p1

    int-to-float p1, p1

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, p3}, Lcom/evie/jigsaw/views/RichTextView;->setLineSpacing(FF)V

    return-void
.end method
