.class Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;
.super Ljava/lang/Object;
.source "PersonalizeSearchActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mTopicsListFragment:Lcom/evie/sidescreen/personalize/TopicsListFragment;

    iget-object v0, v0, Lcom/evie/sidescreen/personalize/TopicsListFragment;->mTopicsListPresenter:Lcom/evie/sidescreen/personalize/TopicsListPresenter;

    invoke-virtual {v0}, Lcom/evie/sidescreen/personalize/TopicsListPresenter;->clear()V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-static {v0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->access$000(Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    iget-object p1, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoResults:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    iget-object p1, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mResultsContainer:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity$1;->this$0:Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;->mNoSearchYet:Z

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
