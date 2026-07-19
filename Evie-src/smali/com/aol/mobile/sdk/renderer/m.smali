.class public final Lcom/aol/mobile/sdk/renderer/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/m$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/aol/mobile/sdk/renderer/m$a;

.field private final b:Landroid/hardware/SensorManager;

.field private final c:Landroid/view/WindowManager;

.field private final d:Landroid/hardware/Sensor;

.field private final e:Landroid/hardware/SensorEventListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/m$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aol/mobile/sdk/renderer/m$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/renderer/m$1;-><init>(Lcom/aol/mobile/sdk/renderer/m;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/m;->e:Landroid/hardware/SensorEventListener;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/m;->a:Lcom/aol/mobile/sdk/renderer/m$a;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/SensorManager;

    iput-object p2, p0, Lcom/aol/mobile/sdk/renderer/m;->b:Landroid/hardware/SensorManager;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m;->c:Landroid/view/WindowManager;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m;->b:Landroid/hardware/SensorManager;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/m;->d:Landroid/hardware/Sensor;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/m;->d:Landroid/hardware/Sensor;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/m;->b:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/m;->e:Landroid/hardware/SensorEventListener;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/m;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/m;->c:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic b(Lcom/aol/mobile/sdk/renderer/m;)Lcom/aol/mobile/sdk/renderer/m$a;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/m;->a:Lcom/aol/mobile/sdk/renderer/m$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/m;->d:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/m;->b:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/m;->e:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method
