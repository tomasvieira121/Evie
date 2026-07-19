.class Lcom/evie/jigsaw/components/content/MediaComponent$1$1;
.super Ljava/lang/Object;
.source "MediaComponent.java"

# interfaces
.implements Lcom/evie/common/services/links/LinkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/components/content/MediaComponent$1;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/evie/jigsaw/components/content/MediaComponent$1;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/content/MediaComponent$1;Landroid/view/View;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;->this$1:Lcom/evie/jigsaw/components/content/MediaComponent$1;

    iput-object p2, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolved(Landroid/content/Intent;)Z
    .locals 1

    .line 68
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;->this$1:Lcom/evie/jigsaw/components/content/MediaComponent$1;

    iget-object p1, p1, Lcom/evie/jigsaw/components/content/MediaComponent$1;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    iget-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$1$1;->val$view:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/evie/jigsaw/components/content/MediaComponent;->access$000(Lcom/evie/jigsaw/components/content/MediaComponent;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1
.end method
