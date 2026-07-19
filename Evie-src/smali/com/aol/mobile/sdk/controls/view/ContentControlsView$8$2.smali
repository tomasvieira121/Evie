.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p1, p1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/controls/b;->a(I)V

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p1, p1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->o(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/aol/mobile/sdk/controls/b;->b(I)Lcom/aol/mobile/sdk/controls/b$a;

    move-result-object p1

    sget-object p2, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$6;->a:[I

    iget-object p3, p1, Lcom/aol/mobile/sdk/controls/b$a;->a:Lcom/aol/mobile/sdk/controls/b$a$a;

    invoke-virtual {p3}, Lcom/aol/mobile/sdk/controls/b$a$a;->ordinal()I

    move-result p3

    aget p2, p2, p3

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p1, p1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->p(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p2, p2, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p2

    iget p1, p1, Lcom/aol/mobile/sdk/controls/b$a;->b:I

    invoke-interface {p2, p1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onAudioTrackSelected(I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$2;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p2, p2, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {p2}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/ContentControls$Listener;

    move-result-object p2

    iget p1, p1, Lcom/aol/mobile/sdk/controls/b$a;->b:I

    invoke-interface {p2, p1}, Lcom/aol/mobile/sdk/controls/ContentControls$Listener;->onCcTrackSelected(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
