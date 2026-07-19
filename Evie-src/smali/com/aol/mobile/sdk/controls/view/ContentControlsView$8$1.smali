.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8$1;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;

    iget-object p1, p1, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$8;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->a(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;Landroid/app/Dialog;)Landroid/app/Dialog;

    return-void
.end method
