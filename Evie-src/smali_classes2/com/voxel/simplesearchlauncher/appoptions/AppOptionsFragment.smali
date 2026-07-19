.class public Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;
.super Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;
.source "AppOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;,
        Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;,
        Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AppOptionsFragment"


# instance fields
.field hasPopped:Z

.field private mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;

.field private mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

.field mIconImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mIconTextGroup:Landroid/view/View;

.field private mItemInfo:Lcom/voxel/launcher3/ItemInfo;

.field mLocalAppsManager:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;

.field mRevertButton:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;-><init>()V

    const/4 v0, 0x0

    .line 319
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->hasPopped:Z

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/launcher3/ItemInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mLayoutManager:Lcom/voxel/recyclerview/widget/OverscrollLinearLayoutManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/recyclerview/widget/SpringRecyclerView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mRecyclerView:Lcom/voxel/recyclerview/widget/SpringRecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 63
    sget-object v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doneEditingName(Z)V
    .locals 5

    .line 222
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->clearFocus()V

    .line 227
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 228
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mRevertButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    const v1, 0x7f1202b0

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setHint(I)V

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of v2, v1, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v2, :cond_3

    .line 240
    iput-object v0, v1, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 241
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-static {v1, v2}, Lcom/voxel/launcher3/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/voxel/launcher3/ItemInfo;)V

    .line 243
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    check-cast v2, Lcom/voxel/launcher3/ShortcutInfo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/Launcher;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v2, v1, v3, v4}, Lcom/voxel/launcher3/Launcher;->bindShortcutsChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v1, v1, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 248
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {v1}, Lcom/voxel/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;-><init>(Landroid/content/Context;)V

    .line 250
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->getApp(Ljava/lang/String;Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 252
    iput-object v0, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->labelOverride:Ljava/lang/String;

    .line 253
    invoke-virtual {v2, v1}, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper;->update(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)Z

    if-eqz p1, :cond_4

    .line 255
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    iget-object v0, v1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 258
    :cond_4
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/voxel/launcher3/LauncherModel;->forceReload()V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$onViewCreated$0(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;Landroid/view/View;Z)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_1

    .line 151
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->getInstance()Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;

    move-result-object p3

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/model/managers/SettingsStorage;->isDesktopLockedCurrently()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 152
    invoke-virtual {p2}, Landroid/view/View;->clearFocus()V

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 154
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/Launcher;

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/Launcher;

    new-instance p2, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {p2}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;-><init>()V

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/Launcher;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->startEditingName()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$onViewCreated$1(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)Z
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->doneEditingName(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$onViewCreated$2(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x6

    if-ne p2, p3, :cond_0

    .line 192
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->doneEditingName(Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return p1
.end method

.method public static newInstance(Lcom/voxel/launcher3/ItemInfo;)Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;
    .locals 1

    .line 78
    new-instance v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;

    invoke-direct {v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    return-object v0
.end method

.method private startEditingName()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget v0, v0, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mRevertButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
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

    .line 295
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

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

.method protected getAdapter()Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment$Adapter;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;

    return-object v0
.end method

.method protected getBackgroundWashAlphaFactor()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getMaxBackgroundWashAlpha()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 112
    invoke-static {p0}, Ldagger/android/support/AndroidSupportInjection;->inject(Landroidx/fragment/app/Fragment;)V

    .line 114
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onAttach(Landroid/app/Activity;)V

    .line 119
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mFragmentInteractionListener:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 121
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    .line 122
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCloseClick()V
    .locals 1
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    const/4 v0, 0x1

    .line 210
    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->doneEditingName(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    new-instance p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mAdapter:Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$AppOptionsAdapter;

    return-void
.end method

.method protected onFragmentWillClose()V
    .locals 3

    .line 286
    invoke-super {p0}, Lcom/voxel/simplesearchlauncher/fragment/RecyclerViewCardFragment;->onFragmentWillClose()V

    .line 287
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
    .locals 0

    .line 323
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->hasPopped:Z

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    if-eqz p2, :cond_0

    .line 324
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;->hideBlurImage()V

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->hasPopped:Z

    :cond_0
    return-void
.end method

.method public onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
    .locals 1

    .line 314
    instance-of v0, p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;

    invoke-interface {p1}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$OnFragmentInteractionListener;->showBlurImage()V

    :cond_0
    return-void
.end method

.method public onStackableFragmentResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->notifyFragmentWillRequestClose()V

    .line 275
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->notifyFragmentRequestClose()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 135
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setVisibility(I)V

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0d0027

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    .line 138
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    invoke-static {p0, p2}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 140
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    instance-of v1, p2, Lcom/voxel/launcher3/AppInfo;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconImageView:Landroid/widget/ImageView;

    check-cast p2, Lcom/voxel/launcher3/AppInfo;

    iget-object p2, p2, Lcom/voxel/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 142
    :cond_0
    instance-of v1, p2, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_1

    .line 143
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconImageView:Landroid/widget/ImageView;

    check-cast p2, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object p2, p2, Lcom/voxel/launcher3/ShortcutInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 146
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mItemInfo:Lcom/voxel/launcher3/ItemInfo;

    iget-object v1, v1, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$0w2cghh3PdQoMsFTybABnUpbLWM;

    invoke-direct {v1, p0, p1}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$0w2cghh3PdQoMsFTybABnUpbLWM;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 163
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$xsfo_tOHzSMPUlDU5Tie5uZ9ueo;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$xsfo_tOHzSMPUlDU5Tie5uZ9ueo;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 169
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$1;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment$1;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 190
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    new-instance v1, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$y7lRW0EIAHHQNwh7QaozzXKwrbg;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/appoptions/-$$Lambda$AppOptionsFragment$y7lRW0EIAHHQNwh7QaozzXKwrbg;-><init>(Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;)V

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 197
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setSelectAllOnFocus(Z)V

    .line 198
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconLabel:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {p2}, Lcom/voxel/launcher3/ExtendedEditText;->getInputType()I

    move-result v1

    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x2000

    invoke-virtual {p2, v1}, Lcom/voxel/launcher3/ExtendedEditText;->setInputType(I)V

    .line 201
    check-cast p1, Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 202
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 203
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mIconTextGroup:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 205
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->mBackground:Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/view/RoundedFrameLayout;->setVisibility(I)V

    return-void
.end method

.method public requiresFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public unfocusFragment(Z)V
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/appoptions/AppOptionsFragment;->getView()Landroid/view/View;

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

.method protected usesBackgroundCard()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
