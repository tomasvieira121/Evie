.class Lcom/aol/mobile/sdk/renderer/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aol/mobile/sdk/renderer/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/renderer/b;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/b;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/b$1;->a:Lcom/aol/mobile/sdk/renderer/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)V
    .locals 8

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/b$1;->a:Lcom/aol/mobile/sdk/renderer/b;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/b;->a(Lcom/aol/mobile/sdk/renderer/b;)Lcom/aol/mobile/sdk/renderer/l;

    move-result-object v1

    float-to-double v2, p1

    float-to-double v4, p2

    float-to-double v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/aol/mobile/sdk/renderer/l;->a(DDD)V

    return-void
.end method
