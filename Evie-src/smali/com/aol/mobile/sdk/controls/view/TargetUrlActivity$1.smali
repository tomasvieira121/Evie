.class Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;


# direct methods
.method constructor <init>(Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity$1;->a:Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity$1;->a:Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;

    invoke-virtual {p1}, Lcom/aol/mobile/sdk/controls/view/TargetUrlActivity;->finish()V

    return-void
.end method
