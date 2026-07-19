.class public Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "PermissionsSlide.java"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;
    }
.end annotation


# instance fields
.field private failures:I

.field private mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

.field private mContactsItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

.field private mLocationItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

.field private final mNegativeButton:Landroid/widget/Button;

.field private final mNegativeButtonLayout:Landroid/view/View;

.field private mPermissionItemsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mPositiveButton:Landroid/widget/Button;

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

.field private mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;


# direct methods
.method public constructor <init>(Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;)V
    .locals 8

    .line 96
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v6, 0x0

    const v2, 0x7f0d007c

    invoke-virtual {v1, v2, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 51
    iput v6, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->failures:I

    .line 98
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    .line 99
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 101
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 103
    new-instance v1, Landroid/animation/LayoutTransition;

    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 104
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 106
    new-instance v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1201c7

    const v4, 0x7f1201c6

    const v5, 0x7f1201c5

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;III)V

    iput-object v7, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    .line 107
    new-instance v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1201c4

    const v4, 0x7f1201c3

    const v5, 0x7f1201c2

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;III)V

    iput-object v7, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mLocationItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    .line 108
    new-instance v7, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1201c1

    const v4, 0x7f1201c0

    const v5, 0x7f1201bf

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;III)V

    iput-object v7, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mContactsItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    .line 111
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mLocationItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_CONTACTS"

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mContactsItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {}, Lis/shortcut/compat/ModernCompat;->requiresLegacyStoragePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 117
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    iget-object v0, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 118
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mStorageItem:Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    .line 122
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButton:Landroid/widget/Button;

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    const v1, 0x7f0a01d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButtonLayout:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$OMu1yveBGdnjtGbWsqVq1y-lQVw;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$OMu1yveBGdnjtGbWsqVq1y-lQVw;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButton:Landroid/widget/Button;

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$qSr9qO_DhRroLMPEx9ZzG9hWuxc;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$PermissionsSlide$qSr9qO_DhRroLMPEx9ZzG9hWuxc;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->setOnRequestPermissionsResultCallback(Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;)V

    .line 141
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->updateItemForGrantStatus(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->updateButtons()V

    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->requestPermissions()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->nextSlide()V

    .line 134
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static needsPermissions(Landroid/content/Context;)Z
    .locals 2

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 275
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "android.permission.READ_CONTACTS"

    .line 276
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-static {}, Lis/shortcut/compat/ModernCompat;->requiresLegacyStoragePermission()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 279
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 283
    invoke-static {p0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private nextSlide()V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->indexOfSlide(Lcom/voxel/simplesearchlauncher/view/Slide;)I

    move-result v0

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/SlideLayout;->showNext()V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;->finish()V

    :goto_0
    return-void
.end method

.method private requestPermissions()V
    .locals 4

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    .line 186
    iget-object v3, v3, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-static {v3, v2}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v2, 0x1

    .line 192
    invoke-static {v1, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 196
    :cond_2
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->updateButtons()V

    :goto_1
    return-void
.end method

.method private updateButtons()V
    .locals 7

    .line 150
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    .line 151
    iget-object v6, v5, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v5, v5, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    if-nez v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 163
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 164
    iget v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->failures:I

    const/4 v5, 0x2

    if-lt v1, v5, :cond_5

    .line 165
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mNegativeButtonLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz v3, :cond_6

    .line 175
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f12019a

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 177
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPositiveButton:Landroid/widget/Button;

    const v1, 0x7f12019b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private updateItemForGrantStatus(Ljava/lang/String;I)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mPermissionItemsMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 207
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->itemView:Landroid/view/ViewGroup;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 209
    :cond_1
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-static {p2, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 211
    iget-object p1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->tipView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 212
    iput-boolean p1, v0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide$PermissionItem;->hasFailedGrant:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 254
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 256
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x2ee

    .line 257
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 259
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 265
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 267
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 221
    :goto_0
    array-length v1, p2

    const/4 v2, 0x1

    if-ge p1, v1, :cond_2

    .line 222
    array-length v1, p3

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 226
    :cond_0
    aget-object v1, p2, p1

    .line 227
    aget v3, p3, p1

    .line 229
    invoke-direct {p0, v1, v3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->updateItemForGrantStatus(Ljava/lang/String;I)V

    .line 231
    iget-object v3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->mActivity:Lcom/voxel/simplesearchlauncher/activity/OnboardingActivity;

    invoke-static {v3, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 237
    iget p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->failures:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->failures:I

    .line 238
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->updateButtons()V

    goto :goto_2

    .line 240
    :cond_3
    invoke-direct {p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/PermissionsSlide;->nextSlide()V

    :goto_2
    return-void
.end method
