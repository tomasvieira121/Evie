.class Lcom/aol/mobile/sdk/renderer/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/renderer/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/m;

.field private final b:[F

.field private final c:[F

.field private d:[F


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/m;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->a:Lcom/aol/mobile/sdk/renderer/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->c:[F

    return-void
.end method

.method private a([F[F)Z
    .locals 5

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v2, 0x1

    const v3, 0x2d2febff    # 1.0E-11f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    aget v1, p1, v2

    aget v4, p2, v2

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x2

    aget p1, p1, v1

    aget p2, p2, v1

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, p1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->a:Lcom/aol/mobile/sdk/renderer/m;

    invoke-static {p1}, Lcom/aol/mobile/sdk/renderer/m;->a(Lcom/aol/mobile/sdk/renderer/m;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/16 v1, 0x82

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    invoke-static {v0, v2, v3, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    invoke-static {v0, v3, v2, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    invoke-static {v0, v1, v3, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    invoke-static {v0, v3, v1, p1}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    :goto_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->b:[F

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/m$1;->c:[F

    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->d:[F

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->c:[F

    invoke-direct {p0, p1, v1}, Lcom/aol/mobile/sdk/renderer/m$1;->a([F[F)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->a:Lcom/aol/mobile/sdk/renderer/m;

    invoke-static {p1}, Lcom/aol/mobile/sdk/renderer/m;->b(Lcom/aol/mobile/sdk/renderer/m;)Lcom/aol/mobile/sdk/renderer/m$a;

    move-result-object p1

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->c:[F

    aget v4, v1, v0

    aget v3, v1, v3

    aget v1, v1, v2

    invoke-interface {p1, v4, v3, v1}, Lcom/aol/mobile/sdk/renderer/m$a;->a(FFF)V

    goto :goto_1

    :cond_2
    const/4 p1, 0x3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->d:[F

    :goto_1
    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->c:[F

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/m$1;->d:[F

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
