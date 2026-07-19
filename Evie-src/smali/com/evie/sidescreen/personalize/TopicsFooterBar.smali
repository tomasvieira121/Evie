.class public Lcom/evie/sidescreen/personalize/TopicsFooterBar;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "TopicsFooterBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;
    }
.end annotation


# instance fields
.field private mItemLayoutId:I

.field mListItemsLayout:Landroid/widget/LinearLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mOnCaretClickListener:Landroid/view/View$OnClickListener;

.field private mOnTopicClickListener:Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_topics_footer_item:I

    iput p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mItemLayoutId:I

    return-void
.end method

.method static synthetic access$000(Lcom/evie/sidescreen/personalize/TopicsFooterBar;)Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mOnTopicClickListener:Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;

    return-object p0
.end method


# virtual methods
.method public onCaretExpandClick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mOnCaretClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 52
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 54
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public setItemLayoutId(I)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mItemLayoutId:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/Thing;",
            ">;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mListItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 64
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 65
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/schema/Thing;

    .line 67
    instance-of v2, v1, Lorg/schema/evie/topics/Topic;

    if-nez v2, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    check-cast v1, Lorg/schema/evie/topics/Topic;

    .line 72
    iget v2, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mItemLayoutId:I

    iget-object v3, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mListItemsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    invoke-virtual {v1}, Lorg/schema/evie/topics/Topic;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 75
    new-instance v1, Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;

    invoke-direct {v1, p0}, Lcom/evie/sidescreen/personalize/TopicsFooterBar$1;-><init>(Lcom/evie/sidescreen/personalize/TopicsFooterBar;)V

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mListItemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOnCaretClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mOnCaretClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnTopicClickListener(Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/TopicsFooterBar;->mOnTopicClickListener:Lcom/evie/sidescreen/personalize/TopicsFooterBar$OnTopicClickListener;

    return-void
.end method
