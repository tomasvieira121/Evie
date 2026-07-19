.class Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicsFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/TopicsFooterBar;->setItems(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/TopicsFooterBar;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;->this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;->this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-static {v0}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->access$000(Lcom/evie/sidescreen/personalize/TopicsFooterBar;)Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;->this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-static {v0}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->access$000(Lcom/evie/sidescreen/personalize/TopicsFooterBar;)Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/evie/topics/Topic;

    invoke-interface {v0, p1, v1}, Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;->onTopicClickListener(Landroid/view/View;Lorg/schema/evie/topics/Topic;)V

    :cond_0
    return-void
.end method
