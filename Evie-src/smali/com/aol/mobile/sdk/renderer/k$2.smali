.class Lcom/aol/mobile/sdk/renderer/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/renderer/k;->a(DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:D

.field final synthetic b:D

.field final synthetic c:Lcom/aol/mobile/sdk/renderer/k;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/renderer/k;DD)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/k$2;->c:Lcom/aol/mobile/sdk/renderer/k;

    iput-wide p2, p0, Lcom/aol/mobile/sdk/renderer/k$2;->a:D

    iput-wide p4, p0, Lcom/aol/mobile/sdk/renderer/k$2;->b:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/k$2;->c:Lcom/aol/mobile/sdk/renderer/k;

    invoke-static {v0}, Lcom/aol/mobile/sdk/renderer/k;->a(Lcom/aol/mobile/sdk/renderer/k;)Lcom/aol/mobile/sdk/renderer/f;

    move-result-object v0

    iget-wide v1, p0, Lcom/aol/mobile/sdk/renderer/k$2;->a:D

    iget-wide v3, p0, Lcom/aol/mobile/sdk/renderer/k$2;->b:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/aol/mobile/sdk/renderer/f;->a(DD)V

    return-void
.end method
