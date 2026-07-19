.class public Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SearchSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;
    }
.end annotation


# instance fields
.field private REQUEST_DONE_BUTTON_DIALOG:I

.field private REQUEST_SEARCH_BAR_STYLE_DIALOG:I

.field private REQUEST_SEARCH_ENGINE_DIALOG:I

.field mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

.field mDoneButtonSetting:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field mSearchBarStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

.field mSearchEngine:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_DONE_BUTTON_DIALOG:I

    const/4 v0, 0x2

    .line 37
    iput v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_BAR_STYLE_DIALOG:I

    const/4 v0, 0x3

    .line 38
    iput v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_ENGINE_DIALOG:I

    return-void
.end method

.method private static getResourceIdForSearchDoneType(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f1200c7

    return p0

    :cond_0
    const p0, 0x7f1200c9

    return p0
.end method

.method private static getResourceIdForSearchEngine(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const p0, 0x7f1200cf

    return p0

    :pswitch_0
    const p0, 0x7f1200ce

    return p0

    :pswitch_1
    const p0, 0x7f1200cc

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getTextResourceIdForSearchBarStyle(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const p0, 0x7f1200c3

    return p0

    :cond_0
    const p0, 0x7f1200c1

    return p0
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;Landroid/view/View;)V
    .locals 5

    .line 66
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f1200c1

    const v4, 0x7f1200c2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const v3, 0x7f1200c3

    const v4, 0x7f1200c4

    invoke-direct {v0, v2, v2, v3, v4}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarStyle()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v0, 0x7f1200c8

    .line 72
    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    .line 73
    iget v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_BAR_STYLE_DIALOG:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 74
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;Lcom/evie/common/SearchSettings;Landroid/view/View;)V
    .locals 5

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 81
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v1, 0x0

    const v2, 0x7f0800be

    const v3, 0x7f1200cf

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v2, 0x1

    const v3, 0x7f080073

    const v4, 0x7f1200cc

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v2, 0x2

    const v3, 0x7f0800a7

    const v4, 0x7f1200ce

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    invoke-virtual {p1}, Lcom/evie/common/SearchSettings;->getSearchEngine()I

    move-result p1

    const v0, 0x7f1200cd

    const v1, 0x7f0d0045

    .line 86
    invoke-static {v0, p1, p2, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;I)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    .line 87
    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_ENGINE_DIALOG:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 88
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;Landroid/view/View;)V
    .locals 4

    .line 94
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v1, 0x0

    const v2, 0x7f1200c7

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;

    const/4 v2, 0x1

    const v3, 0x7f1200c9

    invoke-direct {v0, v2, v1, v3, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchDoneButtonBehavior()I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const v0, 0x7f1200c8

    .line 100
    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->newInstance(IILjava/util/List;)Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;

    move-result-object p1

    .line 101
    iget v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_DONE_BUTTON_DIALOG:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 102
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$3(Lcom/evie/common/SearchSettings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 108
    invoke-virtual {p0, p2}, Lcom/evie/common/SearchSettings;->setOpenWebResultsInBrowser(Z)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$4(Lcom/evie/common/SearchSettings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 113
    invoke-virtual {p0, p2}, Lcom/evie/common/SearchSettings;->setRecentsIncludeWebResults(Z)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$5(Lcom/evie/common/SearchSettings;Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 120
    invoke-virtual {p0, p2}, Lcom/evie/common/SearchSettings;->setIncludeFrequentlyUsed(Z)V

    return-void
.end method

.method public static synthetic lambda$onViewCreated$6(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;Landroid/view/View;)V
    .locals 2

    .line 125
    new-instance p1, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;

    invoke-direct {p1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment$ClearRecentsDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private updateDoneButtonSubtext()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mDoneButtonSetting:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchDoneButtonBehavior()I

    move-result v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getResourceIdForSearchDoneType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateSearchBarButtonSubtext()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchBarStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getSearchBarStyle()I

    move-result v1

    invoke-static {v1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getTextResourceIdForSearchBarStyle(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private updateSearchEngineResult(I)V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchEngine:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getResourceIdForSearchEngine(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 132
    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_DONE_BUTTON_DIALOG:I

    const/4 v0, -0x1

    const-wide/16 v1, -0x1

    if-ne p1, p2, :cond_1

    const-string p1, "ID"

    .line 133
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    if-eq p1, v0, :cond_0

    .line 135
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->saveSearchDoneButtonBehavior(I)V

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateDoneButtonSubtext()V

    goto :goto_0

    .line 138
    :cond_1
    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_BAR_STYLE_DIALOG:I

    if-ne p1, p2, :cond_3

    const-string p1, "ID"

    .line 139
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    if-eq p1, v0, :cond_2

    .line 141
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->setSearchBarStyle(I)V

    .line 143
    :cond_2
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateSearchBarButtonSubtext()V

    goto :goto_0

    .line 144
    :cond_3
    iget p2, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->REQUEST_SEARCH_ENGINE_DIALOG:I

    if-ne p1, p2, :cond_5

    const-string p1, "ID"

    .line 145
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    long-to-int p1, p1

    if-eq p1, v0, :cond_4

    .line 147
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/evie/common/SearchSettings;->setSearchEngine(I)V

    .line 149
    :cond_4
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateSearchEngineResult(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00ae

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/evie/common/SearchSettings;->getInstance(Landroid/content/Context;)Lcom/evie/common/SearchSettings;

    move-result-object p2

    .line 55
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a023b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchBarStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 56
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a0244

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchEngine:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 57
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v1, 0x7f0a00d8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mDoneButtonSetting:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    .line 58
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0052

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    .line 59
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v1, 0x7f0a0217

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    .line 60
    new-instance v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    const v2, 0x7f0a0166

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;-><init>(Landroid/view/View;)V

    .line 61
    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    const v3, 0x7f0a009a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;-><init>(Landroid/view/View;)V

    .line 63
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchBarStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f1200bf

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 64
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateSearchBarButtonSubtext()V

    .line 65
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchBarStyle:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$FRGr9DXEUOBXRgG3adstZQuyHSQ;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$FRGr9DXEUOBXRgG3adstZQuyHSQ;-><init>(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchEngine:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f1200cb

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    invoke-virtual {p2}, Lcom/evie/common/SearchSettings;->getSearchEngine()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateSearchEngineResult(I)V

    .line 79
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mSearchEngine:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$EPVoRXM_QDKPbveES1qxy_h6VZk;

    invoke-direct {v3, p0, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$EPVoRXM_QDKPbveES1qxy_h6VZk;-><init>(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;Lcom/evie/common/SearchSettings;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mDoneButtonSetting:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f1200ca

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 92
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->updateDoneButtonSubtext()V

    .line 93
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mDoneButtonSetting:Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$CFAXJXmqrOwB63uzNenEaPKge84;

    invoke-direct {v3, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$CFAXJXmqrOwB63uzNenEaPKge84;-><init>(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f1200bd

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 106
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/evie/common/SearchSettings;->getOpenWebResultsInBrowser()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 107
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;->mAutocompleteBehavior:Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v3, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$63ppX2u-0DWg63tJ3o92fhLnK3Q;

    invoke-direct {v3, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$63ppX2u-0DWg63tJ3o92fhLnK3Q;-><init>(Lcom/evie/common/SearchSettings;)V

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 110
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v3, 0x7f1200d2

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 111
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/evie/common/SearchSettings;->getRecentsIncludeWebResults()Z

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 112
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$zKrp6FB3cpmJlnyAuO7adqp0ZGs;

    invoke-direct {v0, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$zKrp6FB3cpmJlnyAuO7adqp0ZGs;-><init>(Lcom/evie/common/SearchSettings;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mLabel:Landroid/widget/TextView;

    const v0, 0x7f1200d0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 116
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const v0, 0x7f1200d1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 117
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSubLabel:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p2}, Lcom/evie/common/SearchSettings;->getIncludeFrequentlyUsed()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 119
    iget-object p1, v1, Lcom/voxel/simplesearchlauncher/settings/SettingsSwitchViewHolder;->mSwitch:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$z19oLFN0YZGcIXn6jj_A4dRD0JE;

    invoke-direct {v0, p2}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$z19oLFN0YZGcIXn6jj_A4dRD0JE;-><init>(Lcom/evie/common/SearchSettings;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 122
    iget-object p1, v2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mLabel:Landroid/widget/TextView;

    const p2, 0x7f1200c5

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 123
    iget-object p1, v2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->mSubLabel:Landroid/widget/TextView;

    const p2, 0x7f1200c6

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 124
    iget-object p1, v2, Lcom/voxel/simplesearchlauncher/settings/SettingsTextViewHolder;->itemView:Landroid/view/View;

    new-instance p2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$xCkFth3rEBBJTh0w6YNFb2kNzIQ;

    invoke-direct {p2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SearchSettingsFragment$xCkFth3rEBBJTh0w6YNFb2kNzIQ;-><init>(Lcom/voxel/simplesearchlauncher/settings/SearchSettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
