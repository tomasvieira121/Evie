.class Lcom/evie/jigsaw/JigsawActivity$4;
.super Ljava/lang/Object;
.source "JigsawActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/jigsaw/JigsawActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/jigsaw/JigsawActivity;


# direct methods
.method constructor <init>(Lcom/evie/jigsaw/JigsawActivity;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$4;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$4;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {p1}, Lcom/evie/jigsaw/JigsawActivity;->access$600(Lcom/evie/jigsaw/JigsawActivity;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/evie/jigsaw/Jigsaw;->prepare(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity$4;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/JigsawActivity;->startActivity(Landroid/content/Intent;)V

    .line 143
    iget-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$4;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-virtual {p1}, Lcom/evie/jigsaw/JigsawActivity;->finish()V

    return-void
.end method
