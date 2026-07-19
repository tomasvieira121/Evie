.class public Lcom/evie/common/settings/AbTestActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AbTestActivity.java"


# instance fields
.field private mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

.field mExperimentLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mExperimentText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGroupLabel:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mGroupText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 34
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance p1, Lcom/evie/common/AbTestConfiguration;

    invoke-direct {p1, p0}, Lcom/evie/common/AbTestConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    .line 37
    sget p1, Lcom/evie/common/R$layout;->activity_ab_test_debug:I

    invoke-virtual {p0, p1}, Lcom/evie/common/settings/AbTestActivity;->setContentView(I)V

    .line 38
    invoke-virtual {p0}, Lcom/evie/common/settings/AbTestActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 41
    iget-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mExperimentLabel:Landroid/widget/TextView;

    const-string v1, "Experiment (current: %s)\nEnter below to override"

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v3}, Lcom/evie/common/AbTestConfiguration;->getExperiment()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mExperimentText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v1}, Lcom/evie/common/AbTestConfiguration;->getDebugExperimentOverride()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mGroupLabel:Landroid/widget/TextView;

    const-string v1, "Group (current: %s)\nEnter below to override"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v2}, Lcom/evie/common/AbTestConfiguration;->getGroup()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mGroupText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    invoke-virtual {v0}, Lcom/evie/common/AbTestConfiguration;->getDebugGroupOverride()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onOk(Landroid/view/View;)V
    .locals 2

    .line 48
    iget-object p1, p0, Lcom/evie/common/settings/AbTestActivity;->mExperimentText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/evie/common/settings/AbTestActivity;->mGroupText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/evie/common/settings/AbTestActivity;->mAbTestConfig:Lcom/evie/common/AbTestConfiguration;

    .line 52
    invoke-virtual {v1, p1}, Lcom/evie/common/AbTestConfiguration;->setDebugExperimentOverride(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;

    move-result-object p1

    .line 53
    invoke-virtual {p1, v0}, Lcom/evie/common/AbTestConfiguration;->setDebugGroupOverride(Ljava/lang/String;)Lcom/evie/common/AbTestConfiguration;

    .line 55
    invoke-virtual {p0}, Lcom/evie/common/settings/AbTestActivity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 60
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 66
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/evie/common/settings/AbTestActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method
