.class public final Lcom/aol/mobile/sdk/renderer/l;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/renderer/l$a;,
        Lcom/aol/mobile/sdk/renderer/l$b;
    }
.end annotation


# instance fields
.field private a:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

.field private b:Lcom/aol/mobile/sdk/renderer/l$a;

.field private c:Lcom/aol/mobile/sdk/renderer/l$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(DDD)V
    .locals 9

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/aol/mobile/sdk/renderer/l$b;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/aol/mobile/sdk/renderer/l$b;-><init>(DDD)V

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lcom/aol/mobile/sdk/renderer/l$a;->a:D

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide v3

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    iget-wide v0, v0, Lcom/aol/mobile/sdk/renderer/l$a;->b:D

    add-double/2addr v0, p5

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide v7

    new-instance v0, Lcom/aol/mobile/sdk/renderer/l$b;

    move-object v2, v0

    move-wide v5, p3

    invoke-direct/range {v2 .. v8}, Lcom/aol/mobile/sdk/renderer/l$b;-><init>(DDD)V

    :goto_0
    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    :cond_1
    iget-object p3, p0, Lcom/aol/mobile/sdk/renderer/l;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    iget-wide p3, p3, Lcom/aol/mobile/sdk/renderer/l$b;->a:D

    sub-double/2addr p3, p1

    invoke-static {p3, p4}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide p1

    iget-object p3, p0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    iget-wide p3, p3, Lcom/aol/mobile/sdk/renderer/l$b;->c:D

    sub-double/2addr p3, p5

    invoke-static {p3, p4}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide p3

    new-instance p5, Lcom/aol/mobile/sdk/renderer/l$a;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/aol/mobile/sdk/renderer/l$a;-><init>(DD)V

    iput-object p5, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    iget-object p1, p0, Lcom/aol/mobile/sdk/renderer/l;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    iget-object p2, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    iget-wide p2, p2, Lcom/aol/mobile/sdk/renderer/l$a;->a:D

    iget-object p4, p0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    iget-wide p4, p4, Lcom/aol/mobile/sdk/renderer/l$a;->b:D

    invoke-interface {p1, p2, p3, p4, p5}, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;->onCameraDirectionChanged(DD)V

    :cond_2
    return-void
.end method

.method public a(DDZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    if-eqz p5, :cond_0

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    :cond_0
    iget-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    if-eqz v5, :cond_1

    iget-wide v5, v5, Lcom/aol/mobile/sdk/renderer/l$a;->a:D

    sub-double v5, v1, v5

    iget-object v7, v0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    iget-wide v7, v7, Lcom/aol/mobile/sdk/renderer/l$a;->b:D

    sub-double v7, v3, v7

    iget-object v9, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    iget-wide v9, v9, Lcom/aol/mobile/sdk/renderer/l$b;->a:D

    add-double/2addr v9, v5

    invoke-static {v9, v10}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide v12

    iget-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    iget-wide v5, v5, Lcom/aol/mobile/sdk/renderer/l$b;->c:D

    add-double/2addr v5, v7

    invoke-static {v5, v6}, Lcom/aol/mobile/sdk/renderer/n;->a(D)D

    move-result-wide v16

    new-instance v5, Lcom/aol/mobile/sdk/renderer/l$b;

    iget-object v6, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    iget-wide v14, v6, Lcom/aol/mobile/sdk/renderer/l$b;->b:D

    move-object v11, v5

    invoke-direct/range {v11 .. v17}, Lcom/aol/mobile/sdk/renderer/l$b;-><init>(DDD)V

    iput-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->c:Lcom/aol/mobile/sdk/renderer/l$b;

    :cond_1
    new-instance v5, Lcom/aol/mobile/sdk/renderer/l$a;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/aol/mobile/sdk/renderer/l$a;-><init>(DD)V

    iput-object v5, v0, Lcom/aol/mobile/sdk/renderer/l;->b:Lcom/aol/mobile/sdk/renderer/l$a;

    return-void
.end method

.method public a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/l;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/aol/mobile/sdk/renderer/l;->a:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    :cond_0
    return-void
.end method
