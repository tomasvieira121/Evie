.class Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/view/AdControlsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    if-ne p1, v0, :cond_1

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/AdControls$Listener;->onAdClicked()V

    :cond_1
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->b(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/AdControls$Listener;->onAdPresented()V

    :cond_2
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->c(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    move-result-object v0

    sget-object v1, Lcom/aol/mobile/sdk/controls/AdControls$Button;->PLAY:Lcom/aol/mobile/sdk/controls/AdControls$Button;

    invoke-interface {v0, v1}, Lcom/aol/mobile/sdk/controls/AdControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/AdControls$Button;)V

    :cond_3
    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->d(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/view/TintableImageButton;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/AdControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/AdControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/AdControlsView;->a(Lcom/aol/mobile/sdk/controls/view/AdControlsView;)Lcom/aol/mobile/sdk/controls/AdControls$Listener;

    move-result-object p1

    sget-object v0, Lcom/aol/mobile/sdk/controls/AdControls$Button;->PAUSE:Lcom/aol/mobile/sdk/controls/AdControls$Button;

    invoke-interface {p1, v0}, Lcom/aol/mobile/sdk/controls/AdControls$Listener;->onButtonClick(Lcom/aol/mobile/sdk/controls/AdControls$Button;)V

    :cond_4
    return-void
.end method
