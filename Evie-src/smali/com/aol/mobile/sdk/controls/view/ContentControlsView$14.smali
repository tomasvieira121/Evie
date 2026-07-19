.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->d(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/d;->a()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->e(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/d;->a()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->f(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/d;->a()I

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$14;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
