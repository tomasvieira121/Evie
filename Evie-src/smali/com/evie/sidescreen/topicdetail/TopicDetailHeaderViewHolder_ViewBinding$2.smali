.class Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;
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

    .line 46
    iput-object p1, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;->this$0:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder_ViewBinding$2;->val$target:Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/topicdetail/TopicDetailHeaderViewHolder;->onClickFollowContextButton(Landroid/view/View;)V

    return-void
.end method
