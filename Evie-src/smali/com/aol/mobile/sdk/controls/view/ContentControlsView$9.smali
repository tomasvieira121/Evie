.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->r(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object p1

    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    move-result-object p2

    iget-object p3, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$9;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p3}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->q(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;

    move-result-object p3

    invoke-virtual {p3}, Lcom/aol/mobile/sdk/controls/view/AdsSeekBar;->getProgress()I

    move-result p3

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    return-void
.end method
