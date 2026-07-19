.class Lcom/aol/mobile/sdk/renderer/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/renderer/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/a;

.field private b:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/aol/mobile/sdk/renderer/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/aol/mobile/sdk/renderer/a$a$1;

    invoke-direct {p1, p0}, Lcom/aol/mobile/sdk/renderer/a$a$1;-><init>(Lcom/aol/mobile/sdk/renderer/a$a;)V

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/a$a;->b:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/aol/mobile/sdk/renderer/a;Lcom/aol/mobile/sdk/renderer/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a$a;-><init>(Lcom/aol/mobile/sdk/renderer/a;)V

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/a$a;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/a$a;->b:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->i(Lcom/aol/mobile/sdk/renderer/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a;->b:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method b()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/a$a;->a:Lcom/aol/mobile/sdk/renderer/a;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/a;->i(Lcom/aol/mobile/sdk/renderer/a;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/renderer/a$a;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
