.class Lcom/aol/mobile/sdk/renderer/b;
.super Lcom/aol/mobile/sdk/renderer/a;


# instance fields
.field private final b:Lcom/aol/mobile/sdk/renderer/l;

.field private final c:Lcom/aol/mobile/sdk/renderer/m;

.field private d:Ljava/lang/String;

.field private e:D

.field private f:D


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/aol/mobile/sdk/renderer/l;

    invoke-direct {v0}, Lcom/aol/mobile/sdk/renderer/l;-><init>()V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->b:Lcom/aol/mobile/sdk/renderer/l;

    new-instance v0, Lcom/aol/mobile/sdk/renderer/m;

    new-instance v1, Lcom/aol/mobile/sdk/renderer/b$1;

    invoke-direct {v1, p0}, Lcom/aol/mobile/sdk/renderer/b$1;-><init>(Lcom/aol/mobile/sdk/renderer/b;)V

    invoke-direct {v0, p1, v1}, Lcom/aol/mobile/sdk/renderer/m;-><init>(Landroid/content/Context;Lcom/aol/mobile/sdk/renderer/m$a;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->c:Lcom/aol/mobile/sdk/renderer/m;

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/renderer/b;)Lcom/aol/mobile/sdk/renderer/l;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/renderer/b;->b:Lcom/aol/mobile/sdk/renderer/l;

    return-object p0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/aol/mobile/sdk/renderer/a;->dispose()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->c:Lcom/aol/mobile/sdk/renderer/m;

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/renderer/m;->a()V

    return-void
.end method

.method public render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V
    .locals 11

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->b:Lcom/aol/mobile/sdk/renderer/l;

    iget-object v1, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->callbacks:Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;

    invoke-virtual {v0, v1}, Lcom/aol/mobile/sdk/renderer/l;->a(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM$Callbacks;)V

    invoke-super {p0, p1}, Lcom/aol/mobile/sdk/renderer/a;->render(Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;)V

    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->d:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v3, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->videoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/aol/mobile/sdk/renderer/b;->d:Ljava/lang/String;

    const/4 v8, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    :goto_0
    iget-wide v3, p0, Lcom/aol/mobile/sdk/renderer/b;->e:D

    iget-wide v5, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->longitude:D

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3da5fd7fe1796495L    # 1.0E-11

    cmpl-double v0, v3, v5

    if-lez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-wide v3, p0, Lcom/aol/mobile/sdk/renderer/b;->f:D

    iget-wide v9, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->latitude:D

    sub-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v7, v3, v5

    if-lez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iget-wide v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->longitude:D

    iput-wide v2, p0, Lcom/aol/mobile/sdk/renderer/b;->e:D

    iget-wide v2, p1, Lcom/aol/mobile/sdk/renderer/viewmodel/VideoVM;->latitude:D

    iput-wide v2, p0, Lcom/aol/mobile/sdk/renderer/b;->f:D

    if-nez v8, :cond_5

    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/aol/mobile/sdk/renderer/b;->b:Lcom/aol/mobile/sdk/renderer/l;

    iget-wide v4, p0, Lcom/aol/mobile/sdk/renderer/b;->e:D

    iget-wide v6, p0, Lcom/aol/mobile/sdk/renderer/b;->f:D

    invoke-virtual/range {v3 .. v8}, Lcom/aol/mobile/sdk/renderer/l;->a(DDZ)V

    :cond_6
    return-void
.end method
