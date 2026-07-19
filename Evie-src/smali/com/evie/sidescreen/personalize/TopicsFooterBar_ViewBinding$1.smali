.class Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding$1;
.super Lbutterknife/internal/DebouncingOnClickListener;
.source "TopicsFooterBar_ViewBinding.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding;-><init>(Lcom/evie/sidescreen/personalize/TopicsFooterBar;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding;

.field final synthetic val$target:Lcom/evie/sidescreen/personalize/TopicsFooterBar;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding;Lcom/evie/sidescreen/personalize/TopicsFooterBar;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding$1;->this$0:Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding;

    iput-object p2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-direct {p0}, Lbutterknife/internal/DebouncingOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar_ViewBinding$1;->val$target:Lcom/evie/sidescreen/personalize/TopicsFooterBar;

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->onCaretExpandClick(Landroid/view/View;)V

    return-void
.end method
