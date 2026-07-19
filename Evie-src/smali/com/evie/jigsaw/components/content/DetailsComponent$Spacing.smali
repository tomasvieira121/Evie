.class public final enum Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;
.super Ljava/lang/Enum;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Spacing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

.field public static final enum normal:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

.field public static final enum text:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

.field public static final enum wide:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;


# instance fields
.field private final mLineSpacing:I

.field private final mViewSpacing:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 237
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    const-string v1, "normal"

    sget v2, Lcom/evie/jigsaw/R$dimen;->details_normal_view_spacing:I

    sget v3, Lcom/evie/jigsaw/R$dimen;->details_normal_line_spacing:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->normal:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    .line 239
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    const-string v1, "text"

    sget v2, Lcom/evie/jigsaw/R$dimen;->details_text_only_view_spacing:I

    sget v3, Lcom/evie/jigsaw/R$dimen;->details_text_only_line_spacing:I

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->text:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    .line 241
    new-instance v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    const-string v1, "wide"

    sget v2, Lcom/evie/jigsaw/R$dimen;->details_wide_view_spacing:I

    sget v3, Lcom/evie/jigsaw/R$dimen;->details_wide_line_spacing:I

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->wide:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    const/4 v0, 0x3

    .line 234
    new-array v0, v0, [Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->normal:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->text:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->wide:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .line 234
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->mViewSpacing:I

    iput p4, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->mLineSpacing:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;
    .locals 1

    .line 234
    const-class v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    return-object p0
.end method

.method public static values()[Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;
    .locals 1

    .line 234
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->$VALUES:[Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    invoke-virtual {v0}, [Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    return-object v0
.end method


# virtual methods
.method public getLineSpacing(Landroid/content/Context;)I
    .locals 1

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->mLineSpacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getViewSpacing(Landroid/content/Context;)I
    .locals 1

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->mViewSpacing:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method
