.class public final enum Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;
.super Ljava/lang/Enum;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

.field public static final enum big_title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

.field public static final enum content:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

.field public static final enum subtitle:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

.field public static final enum title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;


# instance fields
.field private final mProcessor:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

.field private final mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 208
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const-string v1, "big_title"

    sget v2, Lcom/evie/jigsaw/R$style;->TextBigTitle:I

    invoke-static {}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$400()Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->big_title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    .line 209
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const-string v1, "title"

    sget v2, Lcom/evie/jigsaw/R$style;->TextTitle:I

    invoke-static {}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$400()Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    .line 210
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const-string v1, "subtitle"

    sget v2, Lcom/evie/jigsaw/R$style;->TextSubtitle:I

    invoke-static {}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$400()Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    move-result-object v3

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->subtitle:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    .line 211
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const-string v1, "content"

    sget v2, Lcom/evie/jigsaw/R$style;->TextContent:I

    invoke-static {}, Lcom/evie/jigsaw/components/content/DetailsComponent;->access$400()Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    move-result-object v3

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;-><init>(Ljava/lang/String;IILcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->content:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const/4 v0, 0x4

    .line 206
    new-array v0, v0, [Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->big_title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->subtitle:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    aput-object v1, v0, v6

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->content:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    aput-object v1, v0, v7

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;",
            ")V"
        }
    .end annotation

    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->mStyle:I

    iput-object p4, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->mProcessor:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;
    .locals 1

    .line 206
    const-class v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;
    .locals 1

    .line 206
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    return-object v0
.end method


# virtual methods
.method public inflate(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/evie/jigsaw/components/content/DetailsComponent;)Lcom/evie/jigsaw/views/RichTextView;
    .locals 3

    .line 218
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 219
    sget v1, Lcom/evie/jigsaw/R$layout;->v2_subcomponent_details_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/evie/jigsaw/views/RichTextView;

    .line 223
    iget v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->mStyle:I

    invoke-virtual {p2, p1, v0}, Lcom/evie/jigsaw/views/RichTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 224
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->mProcessor:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;

    invoke-interface {v0, p1, p2, p3}, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailProcessor;->process(Landroid/content/Context;Lcom/evie/jigsaw/views/RichTextView;Lcom/evie/jigsaw/components/content/DetailsComponent;)V

    return-object p2
.end method
