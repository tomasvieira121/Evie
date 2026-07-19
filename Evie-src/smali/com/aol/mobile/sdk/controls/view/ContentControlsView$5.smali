.class Lcom/aol/mobile/sdk/controls/view/ContentControlsView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->startTimer()V
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

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$5;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/aol/mobile/sdk/controls/view/ContentControlsView$5;->a:Lcom/aol/mobile/sdk/controls/view/ContentControlsView;

    invoke-static {v0}, Lcom/aol/mobile/sdk/controls/view/ContentControlsView;->b(Lcom/aol/mobile/sdk/controls/view/ContentControlsView;)Lcom/aol/mobile/sdk/controls/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aol/mobile/sdk/controls/c;->d()V

    return-void
.end method
