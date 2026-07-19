.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aol/mobile/sdk/chromecast/OneCastManager$CastListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->setListener(Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

.field final synthetic b:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Lcom/aol/mobile/sdk/controls/ContentControls$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;->b:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    iput-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;->a:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCast()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;->a:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onCastDisabled()V

    :cond_0
    return-void
.end method

.method public enableCast()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$10;->a:Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onCastEnabled()V

    :cond_0
    return-void
.end method
