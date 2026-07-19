.class public Lcom/evie/jigsaw/components/delimiters/VerticalDelimiterComponent;
.super Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;
.source "VerticalDelimiterComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/jigsaw/components/delimiters/VerticalDelimiterComponent$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent<",
        "Lcom/evie/jigsaw/components/delimiters/VerticalDelimiterComponent$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/evie/jigsaw/components/delimiters/AbstractDelimiterComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public getInset(Landroid/content/Context;)I
    .locals 1

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/evie/jigsaw/R$dimen;->base_and_half_spacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method
