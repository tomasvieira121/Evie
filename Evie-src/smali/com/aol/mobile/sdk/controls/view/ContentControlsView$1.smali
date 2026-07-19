.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;
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

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->e()V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p3}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p3

    int-to-float v0, p2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-interface {p3, v0, v1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onSeekTo(D)V

    :cond_2
    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-virtual {p3}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/aol/mobile/sdk/controls/R$dimen;->thumb_size:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    sub-int/2addr v0, p3

    mul-int p2, p2, v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    div-int/2addr p2, v0

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    sub-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_4

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getWidth()I

    move-result p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    sub-int/2addr p1, p2

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    sub-int/2addr p1, p3

    div-int/lit8 p1, p1, 0x2

    sub-int p1, p2, p1

    :goto_0
    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->c(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/TextView;

    move-result-object p2

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setX(F)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onSeekStarted()V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onSeekStopped()V

    return-void
.end method
