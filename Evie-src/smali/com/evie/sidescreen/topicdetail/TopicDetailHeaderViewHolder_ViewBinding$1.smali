.class Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicDetailHeaderViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->onClickBackButton()V

    return-void
.end method
