.class Lcom/evie/common/iconpack/shader/ShaderRegister;
.super Ljava/lang/Object;
.source "ShaderRegister.java"


# instance fields
.field private brightness:F

.field private brightnessDirty:Z

.field private channels:[[F

.field private intensity:[F

.field private intensityDirty:Z

.field private size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensityDirty:Z

    .line 16
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightnessDirty:Z

    return-void
.end method

.method private dirty()V
    .locals 1

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensityDirty:Z

    .line 62
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightnessDirty:Z

    return-void
.end method

.method private ensureSize(I)V
    .locals 4

    .line 29
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    if-ge v0, p1, :cond_0

    .line 30
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    :cond_0
    return-void
.end method

.method private recalculateBrightnessIfNeeded()V
    .locals 10

    .line 80
    iget-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightnessDirty:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    move-wide v5, v3

    const/4 v0, 0x0

    .line 83
    :goto_0
    iget v1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object v7, v1, v2

    aget v7, v7, v0

    const/4 v8, 0x1

    aget-object v8, v1, v8

    aget v8, v8, v0

    const/4 v9, 0x2

    aget-object v9, v1, v9

    aget v9, v9, v0

    add-float/2addr v8, v9

    const/4 v9, 0x3

    aget-object v9, v1, v9

    aget v9, v9, v0

    add-float/2addr v8, v9

    mul-float v7, v7, v8

    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v7

    .line 85
    aget-object v1, v1, v2

    aget v1, v1, v0

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    div-double/2addr v3, v5

    double-to-float v0, v3

    .line 87
    iput v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightness:F

    .line 88
    iput-boolean v2, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightnessDirty:Z

    :cond_1
    return-void
.end method

.method private recalculateIntensityIfNeeded()V
    .locals 6

    .line 94
    iget-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensityDirty:Z

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensity:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    if-ge v0, v1, :cond_1

    .line 96
    :cond_0
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensity:[F

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    :goto_0
    iget v2, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    if-ge v1, v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensity:[F

    iget-object v3, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    const/4 v4, 0x1

    aget-object v4, v3, v4

    aget v4, v4, v1

    const/4 v5, 0x2

    aget-object v5, v3, v5

    aget v5, v5, v1

    add-float/2addr v4, v5

    const/4 v5, 0x3

    aget-object v3, v3, v5

    aget v3, v3, v1

    add-float/2addr v4, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v4, v3

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iput-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensityDirty:Z

    :cond_3
    return-void
.end method


# virtual methods
.method addChannel(I[FI)V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 122
    aget v1, p1, v0

    aget v2, p2, v0

    add-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method addValue(IFI)V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 165
    aget v1, p1, v0

    add-float/2addr v1, p2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method divideChannel(I[FI)V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 149
    aget v1, p1, v0

    aget v2, p2, v0

    div-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method divideValue(IFI)V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 192
    aget v1, p1, v0

    div-float/2addr v1, p2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method getBrightness()F
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->recalculateBrightnessIfNeeded()V

    .line 57
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightness:F

    return v0
.end method

.method getChannel(I)[F
    .locals 3

    packed-switch p1, :pswitch_data_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to retrieve invalid channel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Use getBrightness() instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :pswitch_1
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->recalculateIntensityIfNeeded()V

    .line 47
    iget-object p1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensity:[F

    return-object p1

    .line 40
    :pswitch_2
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method multiplyChannel(I[FI)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 140
    aget v1, p1, v0

    aget v2, p2, v0

    mul-float v1, v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method multiplyValue(IFI)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 183
    aget v1, p1, v0

    mul-float v1, v1, p2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method setPixels([II)V
    .locals 6

    .line 67
    invoke-direct {p0, p2}, Lcom/evie/common/iconpack/shader/ShaderRegister;->ensureSize(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, p2, :cond_0

    .line 69
    iget-object v3, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    const/4 v4, 0x3

    aget-object v4, v3, v4

    aget v5, p1, v1

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    aput v5, v4, v1

    const/4 v4, 0x2

    .line 70
    aget-object v4, v3, v4

    aget v5, p1, v1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    aput v5, v4, v1

    .line 71
    aget-object v2, v3, v2

    aget v4, p1, v1

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-float v4, v4

    aput v4, v2, v1

    .line 72
    aget-object v2, v3, v0

    aget v3, p1, v1

    ushr-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->intensityDirty:Z

    .line 75
    iput-boolean v2, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->brightnessDirty:Z

    return-void
.end method

.method setSize(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/evie/common/iconpack/shader/ShaderRegister;->ensureSize(I)V

    .line 25
    iput p1, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->size:I

    return-void
.end method

.method subtractChannel(I[FI)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 131
    aget v1, p1, v0

    aget v2, p2, v0

    sub-float/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method subtractValue(IFI)V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 174
    aget v1, p1, v0

    sub-float/2addr v1, p2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method writeChannel(I[FI)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 114
    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method

.method writeValue(IFI)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/evie/common/iconpack/shader/ShaderRegister;->channels:[[F

    aget-object p1, v0, p1

    const/4 v0, 0x0

    .line 157
    invoke-static {p1, v0, p3, p2}, Ljava/util/Arrays;->fill([FIIF)V

    .line 158
    invoke-direct {p0}, Lcom/evie/common/iconpack/shader/ShaderRegister;->dirty()V

    return-void
.end method
