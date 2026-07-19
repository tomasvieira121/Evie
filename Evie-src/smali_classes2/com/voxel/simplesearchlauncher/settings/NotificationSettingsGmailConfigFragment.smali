.class public Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;
.super Landroidx/fragment/app/Fragment;
.source "NotificationSettingsGmailConfigFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

.field mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

.field mEnabledAccounts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

.field mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;Landroid/accounts/AccountManagerFuture;)V
    .locals 4

    .line 69
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    check-cast p1, [Landroid/accounts/Account;

    if-eqz p1, :cond_0

    .line 70
    array-length v0, p1

    if-lez v0, :cond_0

    .line 71
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 72
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;->addAccount(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :catch_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    .line 47
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mController:Lcom/voxel/simplesearchlauncher/notification/NotificationController;

    const-string v0, "extractor.gmail"

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/notification/NotificationController;->getExtractorByKey(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    move-result-object p1

    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    const-string p1, "service_mail"

    .line 50
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android.permission.GET_ACCOUNTS"

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    .line 59
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mExtractor:Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/GmailExtractor;->getEnabledAccounts()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 62
    iget-object v4, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mEnabledAccounts:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

    invoke-direct {v0, p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;)V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

    .line 65
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    new-instance v2, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsGmailConfigFragment$MHmOGAcbi2JGEzHekyr_G5ESUqg;

    invoke-direct {v2, p0}, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsGmailConfigFragment$MHmOGAcbi2JGEzHekyr_G5ESUqg;-><init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAndFeatures(Ljava/lang/String;[Ljava/lang/String;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d00ac

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0218

    .line 92
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 93
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment$AccountListAdapter;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 94
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsGmailConfigFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method
