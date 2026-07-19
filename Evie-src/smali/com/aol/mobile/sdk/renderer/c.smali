.class public final Lcom/aol/mobile/sdk/renderer/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:[F

.field private final e:[F

.field private final f:[F


# direct methods
.method public constructor <init>(FFF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/c;->d:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/aol/mobile/sdk/renderer/c;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/c;->f:[F

    iput p1, p0, Lcom/aol/mobile/sdk/renderer/c;->a:F

    iput p2, p0, Lcom/aol/mobile/sdk/renderer/c;->c:F

    iput p3, p0, Lcom/aol/mobile/sdk/renderer/c;->b:F

    const-wide/16 p1, 0x0

    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/aol/mobile/sdk/renderer/c;->a(DD)V

    return-void
.end method


# virtual methods
.method public a(DD)V
    .locals 19

    const-wide v0, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v2, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sub-double v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/aol/mobile/sdk/renderer/c;->d:[F

    double-to-float v13, v4

    double-to-float v14, v2

    double-to-float v15, v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    invoke-static/range {v8 .. v18}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    return-void
.end method

.method public a(II)V
    .locals 6

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v3, p1, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, v3, p1

    if-gez p1, :cond_0

    iget p1, p0, Lcom/aol/mobile/sdk/renderer/c;->a:F

    div-float/2addr p1, v3

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/aol/mobile/sdk/renderer/c;->a:F

    :goto_0
    move v2, p1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/c;->e:[F

    const/4 v1, 0x0

    iget v4, p0, Lcom/aol/mobile/sdk/renderer/c;->c:F

    iget v5, p0, Lcom/aol/mobile/sdk/renderer/c;->b:F

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->perspectiveM([FIFFFF)V

    return-void
.end method

.method public a()[F
    .locals 6

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/c;->f:[F

    iget-object v2, p0, Lcom/aol/mobile/sdk/renderer/c;->e:[F

    iget-object v4, p0, Lcom/aol/mobile/sdk/renderer/c;->d:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/c;->f:[F

    return-object v0
.end method
