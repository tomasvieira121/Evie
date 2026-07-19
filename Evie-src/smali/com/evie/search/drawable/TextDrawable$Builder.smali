.class public Lcom/evie/search/drawable/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lcom/evie/search/drawable/TextDrawable$IBuilder;
.implements Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;
.implements Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/drawable/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 167
    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->text:Ljava/lang/String;

    const v0, -0x777778

    .line 168
    iput v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->color:I

    const/4 v0, -0x1

    .line 169
    iput v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->textColor:I

    const/4 v1, 0x0

    .line 170
    iput v1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->borderThickness:I

    .line 171
    iput v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->width:I

    .line 172
    iput v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->height:I

    .line 173
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v2, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    const-string v2, "sans-serif-light"

    .line 174
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 175
    iput v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->fontSize:I

    .line 176
    iput-boolean v1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->isBold:Z

    .line 177
    iput-boolean v1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->toUpperCase:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/search/drawable/TextDrawable$1;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/evie/search/drawable/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evie/search/drawable/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method static synthetic access$100(Lcom/evie/search/drawable/TextDrawable$Builder;)I
    .locals 0

    .line 140
    iget p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->height:I

    return p0
.end method

.method static synthetic access$200(Lcom/evie/search/drawable/TextDrawable$Builder;)I
    .locals 0

    .line 140
    iget p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->width:I

    return p0
.end method

.method static synthetic access$300(Lcom/evie/search/drawable/TextDrawable$Builder;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->toUpperCase:Z

    return p0
.end method

.method static synthetic access$400(Lcom/evie/search/drawable/TextDrawable$Builder;)Ljava/lang/String;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/evie/search/drawable/TextDrawable$Builder;)I
    .locals 0

    .line 140
    iget p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->color:I

    return p0
.end method

.method static synthetic access$600(Lcom/evie/search/drawable/TextDrawable$Builder;)I
    .locals 0

    .line 140
    iget p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->fontSize:I

    return p0
.end method

.method static synthetic access$700(Lcom/evie/search/drawable/TextDrawable$Builder;)Z
    .locals 0

    .line 140
    iget-boolean p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->isBold:Z

    return p0
.end method

.method static synthetic access$800(Lcom/evie/search/drawable/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$900(Lcom/evie/search/drawable/TextDrawable$Builder;)I
    .locals 0

    .line 140
    iget p0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->borderThickness:I

    return p0
.end method


# virtual methods
.method public beginConfig()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;
    .locals 0

    return-object p0
.end method

.method public bold()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->isBold:Z

    return-object p0
.end method

.method public build(Ljava/lang/String;I)Lcom/evie/search/drawable/TextDrawable;
    .locals 0

    .line 270
    iput p2, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->color:I

    .line 271
    iput-object p1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 272
    new-instance p1, Lcom/evie/search/drawable/TextDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/evie/search/drawable/TextDrawable;-><init>(Lcom/evie/search/drawable/TextDrawable$Builder;Lcom/evie/search/drawable/TextDrawable$1;)V

    return-object p1
.end method

.method public buildRound(Ljava/lang/String;I)Lcom/evie/search/drawable/TextDrawable;
    .locals 0

    .line 264
    invoke-virtual {p0}, Lcom/evie/search/drawable/TextDrawable$Builder;->round()Lcom/evie/search/drawable/TextDrawable$IBuilder;

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/evie/search/drawable/TextDrawable$Builder;->build(Ljava/lang/String;I)Lcom/evie/search/drawable/TextDrawable;

    move-result-object p1

    return-object p1
.end method

.method public endConfig()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;
    .locals 0

    return-object p0
.end method

.method public fontSize(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 206
    iput p1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->fontSize:I

    return-object p0
.end method

.method public round()Lcom/evie/search/drawable/TextDrawable$IBuilder;
    .locals 1

    .line 238
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object p0
.end method

.method public withBorder(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;
    .locals 0

    .line 196
    iput p1, p0, Lcom/evie/search/drawable/TextDrawable$Builder;->borderThickness:I

    return-object p0
.end method
