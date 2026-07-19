.class public final Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;
.super Ljava/lang/Object;
.source "VerticalListSpacingStrategy.java"

# interfaces
.implements Lcom/evie/jigsaw/adapters/spacing/SpacingStrategy;


# instance fields
.field private final space:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;->space:I

    return-void
.end method


# virtual methods
.method public space(Landroid/view/View;II)V
    .locals 3

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr p3, v1

    if-ne p2, p3, :cond_1

    const/4 v0, 0x1

    .line 21
    :cond_1
    iget p2, p0, Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;->space:I

    div-int/lit8 p3, p2, 0x2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 24
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 27
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 30
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 31
    iget p2, p0, Lcom/evie/jigsaw/adapters/spacing/VerticalListSpacingStrategy;->space:I

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 34
    :cond_4
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    return-void
.end method
