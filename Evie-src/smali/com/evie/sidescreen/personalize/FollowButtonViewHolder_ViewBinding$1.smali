.class Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "FollowButtonViewHolder_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;-><init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;->this$0:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;

    invoke-virtual {p1}, Lcom/evie/sidescreen/personalize/FollowButtonViewHolder;->onFollowButtonClick()V

    return-void
.end method
