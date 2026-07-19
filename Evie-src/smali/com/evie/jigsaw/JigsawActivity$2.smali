.class Lcom/evie/jigsaw/JigsawActivity$2;
.super Ljava/lang/Object;
.source "JigsawActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/JigsawActivity;
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

    .line 60
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$2;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity$2;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v0}, Lcom/evie/jigsaw/JigsawActivity;->access$100(Lcom/evie/jigsaw/JigsawActivity;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evie/jigsaw/components/base/AbstractComponent;

    .line 65
    iget-object v1, p0, Lcom/evie/jigsaw/JigsawActivity$2;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v1}, Lcom/evie/jigsaw/JigsawActivity;->access$200(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 66
    iget-object v1, p0, Lcom/evie/jigsaw/JigsawActivity$2;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v1}, Lcom/evie/jigsaw/JigsawActivity;->access$200(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/evie/jigsaw/JigsawActivity$2;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v2}, Lcom/evie/jigsaw/JigsawActivity;->access$200(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/evie/jigsaw/components/base/AbstractComponent;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method
