.class public Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.source "ChangeIconFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$SuggestedIconsAdapter;,
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;,
        Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$LoadIconPackResult;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

.field private mContainer:Landroid/view/View;

.field mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

.field private mItemInfo:Lcom/voxel/launcher3/ItemInfo;

.field private mLoadingIndicator:Landroid/view/View;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field private mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

.field private mSuggestedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$ChangeIconAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Lcom/voxel/recyclerview/widget/SpringRecyclerView;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mLoadingIndicator:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Landroid/view/View;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mSuggestedIcons:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$602(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mSuggestedIcons:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 0

    .line 58
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->saveIconToDB(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic lambda$onViewCreated$0(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public static newInstance(Lcom/voxel/launcher3/ItemInfo;)Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;
    .locals 1

    .line 73
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;-><init>()V

    .line 74
    iput-object p0, v0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object v0
.end method

.method private saveIconToDB(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 199
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 202
    new-instance v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    .line 204
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 207
    iput-object p1, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->icon:Landroid/graphics/Bitmap;

    .line 209
    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->update(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)Z

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 216
    invoke-virtual {v1, p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->setCustomIcon(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 p1, 0x1

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v1, :cond_3

    const/4 v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    if-eq v4, v5, :cond_6

    .line 220
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appinfo("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ") vs localappdata "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "mismatch! "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/crashlytics/android/Crashlytics;->logException(Ljava/lang/Throwable;)V

    .line 225
    :cond_6
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/IconCache;->flush()V

    const/4 p1, 0x0

    if-eqz v2, :cond_7

    .line 229
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget v1, v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {p1, v0, v1}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    .line 231
    invoke-static {v1}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)Landroid/net/Uri;

    move-result-object p1

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 234
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->evictFromCache(Landroid/net/Uri;)V

    .line 236
    :cond_9
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    .line 238
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mIconPackManager:Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/iconpack/IconPackManager;->notifyDataChanged()V

    const/4 p1, -0x1

    .line 240
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->setResultCode(I)V

    .line 241
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->runExitAnimation()V

    return-void
.end method


# virtual methods
.method public canSaveInstanceState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public focusFragment(Z)V
    .locals 1

    .line 494
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onAttach(Landroid/app/Activity;)V

    .line 82
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0d002f

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 0

    return-void
.end method

.method public onStackableFragmentResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "ICON"

    .line 246
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->saveIconToDB(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 104
    sget-object p2, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$A-fbPEHmlm3XJH2yDgJ-w10cb5U;->INSTANCE:Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$ChangeIconFragment$A-fbPEHmlm3XJH2yDgJ-w10cb5U;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0096

    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 109
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v2, v2, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f1200e9

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a018e

    .line 111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mLoadingIndicator:Landroid/view/View;

    const p2, 0x7f0a00ae

    .line 112
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mContainer:Landroid/view/View;

    const p2, 0x7f0a0218

    .line 114
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    .line 115
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    new-instance p2, Lcom/voxel/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/voxel/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;->setLayoutManager(Lcom/voxel/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f1200e6

    .line 119
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 120
    new-instance p2, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;

    invoke-direct {p2, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;Landroid/content/Context;)V

    new-array p1, v3, [Ljava/lang/Void;

    .line 195
    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public requiresFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public runExitAnimation()V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->notifyFragmentWillRequestClose()V

    .line 484
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->notifyFragmentRequestClose()V

    return-void
.end method

.method public unfocusFragment(Z)V
    .locals 1

    .line 501
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 502
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/ChangeIconFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method
