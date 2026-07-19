.class public final Lcom/aol/mobile/sdk/renderer/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aol/mobile/sdk/renderer/e;


# instance fields
.field private final a:Ljava/nio/FloatBuffer;

.field private final b:Ljava/nio/ShortBuffer;

.field private final c:I

.field private final d:I

.field private final e:I


# direct methods
.method public constructor <init>(IF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    const/16 v0, 0xb4

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/aol/mobile/sdk/renderer/h;->a(IF)Ljava/nio/FloatBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/h;->a:Ljava/nio/FloatBuffer;

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/h;->a(I)Ljava/nio/ShortBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/h;->b:Ljava/nio/ShortBuffer;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/h;->a:Ljava/nio/FloatBuffer;

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/h;->c:I

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/h;->b:Ljava/nio/ShortBuffer;

    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result p1

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/h;->d:I

    iget p1, p0, Lcom/aol/mobile/sdk/renderer/h;->d:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/h;->e:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Slices must be lesser or equals to 180"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Slices must be greater then 5"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(IF)Ljava/nio/FloatBuffer;
    .locals 16

    move/from16 v0, p1

    int-to-double v1, v0

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v1

    double-to-float v3, v3

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v4, v1

    double-to-float v1, v4

    add-int/lit8 v2, v0, 0x1

    mul-int v4, v2, v2

    mul-int/lit8 v4, v4, 0x5

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v2, v2, 0x5

    new-array v2, v2, [F

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v6, 0x0

    :goto_0
    if-gt v6, v0, :cond_1

    const/4 v7, 0x0

    :goto_1
    if-gt v7, v0, :cond_0

    mul-int/lit8 v8, v7, 0x5

    int-to-float v9, v6

    mul-float v10, v3, v9

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v10, v10

    int-to-float v11, v7

    mul-float v13, v1, v11

    float-to-double v13, v13

    move v15, v6

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v6, v13

    add-int/lit8 v13, v8, 0x0

    mul-float v12, v12, p2

    mul-float v5, v5, v12

    aput v5, v2, v13

    add-int/lit8 v5, v8, 0x1

    mul-float v12, v12, v6

    aput v12, v2, v5

    add-int/lit8 v5, v8, 0x2

    mul-float v6, p2, v10

    aput v6, v2, v5

    add-int/lit8 v5, v8, 0x3

    int-to-float v6, v0

    div-float/2addr v11, v6

    aput v11, v2, v5

    add-int/lit8 v8, v8, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    sub-float/2addr v5, v9

    aput v5, v2, v8

    add-int/lit8 v7, v7, 0x1

    move v6, v15

    goto :goto_1

    :cond_0
    move v15, v6

    invoke-virtual {v4, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    add-int/lit8 v6, v15, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v4
.end method

.method private a(I)Ljava/nio/ShortBuffer;
    .locals 12

    add-int/lit8 v0, p1, 0x1

    mul-int v1, p1, p1

    mul-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, p1, 0x6

    new-array v2, v2, [S

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, p1, :cond_0

    mul-int/lit8 v6, v5, 0x6

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v8, v5, 0x1

    mul-int v9, v4, v0

    add-int v10, v9, v5

    int-to-short v10, v10

    aput-short v10, v2, v6

    add-int/lit8 v11, v6, 0x1

    mul-int v7, v7, v0

    add-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, v2, v11

    add-int/lit8 v5, v6, 0x2

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v2, v5

    add-int/lit8 v5, v6, 0x3

    aput-short v10, v2, v5

    add-int/lit8 v5, v6, 0x4

    aput-short v7, v2, v5

    add-int/lit8 v6, v6, 0x5

    add-int/2addr v9, v8

    int-to-short v5, v9

    aput-short v5, v2, v6

    move v5, v8

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    return-object v1
.end method


# virtual methods
.method public a()Ljava/nio/FloatBuffer;
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/h;->a:Ljava/nio/FloatBuffer;

    return-object v0
.end method

.method public b()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/h;->b:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/h;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/h;->e:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/aol/mobile/sdk/renderer/h;->d:I

    return v0
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method
