.class public final Lcom/aol/mobile/sdk/controls/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aol/mobile/sdk/controls/c$b;,
        Lcom/aol/mobile/sdk/controls/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

.field private b:Lcom/aol/mobile/sdk/controls/c$a;

.field private final c:Lcom/aol/mobile/sdk/controls/c$a;

.field private final d:Lcom/aol/mobile/sdk/controls/c$a;

.field private final e:Lcom/aol/mobile/sdk/controls/c$a;

.field private final f:Lcom/aol/mobile/sdk/controls/c$a;


# direct methods
.method public constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/aol/mobile/sdk/controls/c$1;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/c$1;-><init>(Lcom/aol/mobile/sdk/controls/c;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->c:Lcom/aol/mobile/sdk/controls/c$a;

    new-instance v0, Lcom/aol/mobile/sdk/controls/c$2;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/c$2;-><init>(Lcom/aol/mobile/sdk/controls/c;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->d:Lcom/aol/mobile/sdk/controls/c$a;

    new-instance v0, Lcom/aol/mobile/sdk/controls/c$3;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/c$3;-><init>(Lcom/aol/mobile/sdk/controls/c;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->e:Lcom/aol/mobile/sdk/controls/c$a;

    new-instance v0, Lcom/aol/mobile/sdk/controls/c$4;

    invoke-direct {v0, p0}, Lcom/aol/mobile/sdk/controls/c$4;-><init>(Lcom/aol/mobile/sdk/controls/c;)V

    iput-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->f:Lcom/aol/mobile/sdk/controls/c$a;

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/c;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/c;->c:Lcom/aol/mobile/sdk/controls/c$a;

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    return-void
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/c;Lcom/aol/mobile/sdk/controls/c$a;)Lcom/aol/mobile/sdk/controls/c$a;
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    return-object p1
.end method

.method static synthetic a(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/c;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    return-object p0
.end method

.method static synthetic b(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/c;->d:Lcom/aol/mobile/sdk/controls/c$a;

    return-object p0
.end method

.method static synthetic c(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/c;->f:Lcom/aol/mobile/sdk/controls/c$a;

    return-object p0
.end method

.method static synthetic d(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/c;->c:Lcom/aol/mobile/sdk/controls/c$a;

    return-object p0
.end method

.method static synthetic e(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;
    .locals 0

    iget-object p0, p0, Lcom/aol/mobile/sdk/controls/c;->e:Lcom/aol/mobile/sdk/controls/c$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/c$a;->a()V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/c$a;->c()V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/c$a;->b()V

    return-void
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/c$a;->d()V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c;->b:Lcom/aol/mobile/sdk/controls/c$a;

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/c$a;->e()V

    return-void
.end method
