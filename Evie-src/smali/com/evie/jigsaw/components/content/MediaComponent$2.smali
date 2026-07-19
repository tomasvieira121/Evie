.class Lcom/evie/jigsaw/components/content/MediaComponent$2;
.super Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;
.source "MediaComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/MediaComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/components/content/MediaComponent;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/components/content/MediaComponent;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/MediaComponent$2;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-direct {p0}, Lcom/evie/jigsaw/listeners/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/MediaComponent$2;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-virtual {v0}, Lcom/evie/jigsaw/components/content/MediaComponent;->recordVideoEvent()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/evie/jigsaw/components/content/MediaComponent$2;->this$0:Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-static {v2}, Lcom/evie/jigsaw/components/content/MediaComponent;->access$200(Lcom/evie/jigsaw/components/content/MediaComponent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "force_fullscreen"

    const/4 v2, 0x1

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
