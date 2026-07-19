.class public Lcom/evie/sidescreen/personalize/PersonalizeActivity;
.super Lcom/evie/sidescreen/SideScreenActivity;
.source "PersonalizeActivity.java"

# interfaces
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mToolbarTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/evie/sidescreen/SideScreenActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getPopupViewProvider()Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 2

    .line 107
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method protected getScreenViewMetaData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewProtobuf()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewSubType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewTitle()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getScreenViewType()Ljava/lang/String;
    .locals 1

    const-string v0, "personalize"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->onCreateInject()V

    .line 34
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    sget p1, Lcom/evie/sidescreen/R$layout;->ss_personalize_activity:I

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->setContentView(I)V

    .line 36
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 38
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 39
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 42
    iget-object p1, p0, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->mToolbarTitle:Landroid/widget/TextView;

    sget v0, Lcom/evie/sidescreen/R$string;->ss_personalize_activity_title:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    .line 76
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const-string v0, "Search"

    const/4 v1, 0x0

    const/16 v2, 0x65

    .line 77
    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    sget v0, Lcom/evie/sidescreen/R$drawable;->homescreen_search_icon:I

    .line 78
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    const/4 v0, 0x2

    .line 79
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/evie/sidescreen/SideScreenActivity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 86
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/evie/sidescreen/personalize/PersonalizeSearchActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    .line 90
    :cond_0
    invoke-super {p0, p1}, Lcom/evie/sidescreen/SideScreenActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Lcom/evie/sidescreen/personalize/PersonalizeActivity;->getSupportFragmentInjector()Ldagger/android/DispatchingAndroidInjector;

    move-result-object v0

    return-object v0
.end method
