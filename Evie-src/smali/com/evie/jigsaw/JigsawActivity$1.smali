.class Lcom/evie/jigsaw/JigsawActivity$1;
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

    .line 51
    iput-object p1, p0, Lcom/evie/jigsaw/JigsawActivity$1;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/evie/jigsaw/JigsawActivity$1;->this$0:Lcom/evie/jigsaw/JigsawActivity;

    invoke-static {v0}, Lcom/evie/jigsaw/JigsawActivity;->access$000(Lcom/evie/jigsaw/JigsawActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
