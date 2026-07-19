.class Lcom/aol/mobile/sdk/controls/c$4;
.super Lcom/aol/mobile/sdk/controls/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/c;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/c;)V
    .locals 1

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/aol/mobile/sdk/controls/c$b;-><init>(Lcom/aol/mobile/sdk/controls/c;Lcom/aol/mobile/sdk/controls/c$1;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->startTimer()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->show()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->b(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;Lcom/aol/mobile/sdk/controls/c$a;)Lcom/aol/mobile/sdk/controls/c$a;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->cancelTimer()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->show()V

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/c$4;->a:Lcom/aol/mobile/sdk/controls/c;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/c;->d(Lcom/aol/mobile/sdk/controls/c;)Lcom/aol/mobile/sdk/controls/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aol/mobile/sdk/controls/c;->a(Lcom/aol/mobile/sdk/controls/c;Lcom/aol/mobile/sdk/controls/c$a;)Lcom/aol/mobile/sdk/controls/c$a;

    return-void
.end method
