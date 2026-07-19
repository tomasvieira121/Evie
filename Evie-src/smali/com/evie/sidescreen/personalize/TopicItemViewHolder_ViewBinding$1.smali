.class Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicItemViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/TopicItemViewHolder;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/TopicItemViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/TopicItemViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/TopicItemViewHolder;->onItemViewClick()V

    return-void
.end method
