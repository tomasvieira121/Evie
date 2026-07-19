.class public Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;
.super Lcom/voxel/simplesearchlauncher/view/Slide;
.source "ImportSlide.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;,
        Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$ImportViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

.field private mImporterInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

.field private mNextButton:Landroid/widget/Button;

.field private mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/voxel/simplesearchlauncher/view/SlideLayout;Ljava/util/List;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/voxel/simplesearchlauncher/view/SlideLayout;",
            "Ljava/util/List<",
            "Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;",
            ">;",
            "Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;",
            ")V"
        }
    .end annotation

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0079

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/voxel/simplesearchlauncher/view/Slide;-><init>(Landroid/view/View;)V

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 83
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mActivity:Landroid/app/Activity;

    .line 84
    iput-object p4, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    .line 85
    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mImporterInfos:Ljava/util/List;

    .line 87
    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    .line 89
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    const p4, 0x7f0a01d1

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mNextButton:Landroid/widget/Button;

    .line 90
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    const p4, 0x7f0a01d0

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 92
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mNextButton:Landroid/widget/Button;

    new-instance p4, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportSlide$ukHI-TqgHo_t_r6wkZUMsaRpWHE;

    invoke-direct {p4, p0, p1, p3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/-$$Lambda$ImportSlide$ukHI-TqgHo_t_r6wkZUMsaRpWHE;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p2, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/voxel/launcher3/LauncherAppState;->setApplicationContext(Landroid/content/Context;)V

    .line 100
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance p4, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$1;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {p2, p4}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 116
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/widget/Button;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mNextButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mAdapter:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    return-object p0
.end method

.method static synthetic access$202(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;)Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mAdapter:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/app/Activity;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Ljava/util/List;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mImporterInfos:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->setupMockLauncher(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/view/View;Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile;Ljava/util/List;I)V
    .locals 0

    .line 65
    invoke-direct/range {p0 .. p5}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->addItemsToMockLauncher(Landroid/view/View;Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile;Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)Lcom/voxel/simplesearchlauncher/view/SlideLayout;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mSlideLayout:Lcom/voxel/simplesearchlauncher/view/SlideLayout;

    return-object p0
.end method

.method private addItemsToMockLauncher(Landroid/view/View;Landroid/content/Context;Lcom/voxel/launcher3/DeviceProfile;Ljava/util/List;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/content/Context;",
            "Lcom/voxel/launcher3/DeviceProfile;",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    const v0, 0x7f0a008e

    .line 162
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    .line 163
    new-instance v7, Lcom/voxel/launcher3/IconCache;

    invoke-direct {v7, p2}, Lcom/voxel/launcher3/IconCache;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 166
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/voxel/launcher3/ItemInfo;

    .line 167
    iget-wide v0, v9, Lcom/voxel/launcher3/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    goto :goto_0

    .line 170
    :cond_1
    iget-wide v0, v9, Lcom/voxel/launcher3/ItemInfo;->screenId:J

    int-to-long v4, p5

    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v1

    if-lt v0, v1, :cond_3

    goto :goto_0

    .line 176
    :cond_3
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const v0, 0x7f0d0052

    .line 202
    move-object v3, v9

    check-cast v3, Lcom/voxel/launcher3/FolderInfo;

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    move-object v4, v7

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/voxel/launcher3/FolderIcon;->fromXml(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/voxel/launcher3/FolderInfo;Lcom/voxel/launcher3/IconCache;Lcom/voxel/launcher3/DeviceProfile;Z)Lcom/voxel/launcher3/FolderIcon;

    move-result-object v1

    .line 205
    new-instance v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v3, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v5, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 206
    invoke-virtual {v1, v4}, Lcom/voxel/launcher3/FolderIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 207
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    goto :goto_0

    .line 179
    :pswitch_1
    move-object v0, v9

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    const v1, 0x7f0d0029

    .line 180
    invoke-virtual {v8, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/voxel/launcher3/BubbleTextView;

    .line 181
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 182
    invoke-virtual {v1, v0, v7, v4, v4}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    .line 184
    iget-wide v4, v9, Lcom/voxel/launcher3/ItemInfo;->container:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 185
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v2}, Lcom/voxel/launcher3/CellLayout;->isOccupied(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v1, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v1}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collision while binding workspace item: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Collides with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0

    .line 195
    :cond_4
    new-instance v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v3, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v5, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 196
    invoke-virtual {v1, v4}, Lcom/voxel/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 197
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    goto/16 :goto_0

    .line 212
    :cond_5
    move-object v0, v9

    check-cast v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;

    const v1, 0x7f0d0078

    .line 214
    invoke-virtual {v8, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0a02aa

    .line 215
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/voxel/launcher3/BubbleTextView;

    .line 217
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 218
    iget-object v4, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v7, v3, v4}, Lcom/voxel/launcher3/IconCache;->getIcon(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 219
    invoke-static {v4}, Lcom/voxel/launcher3/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;

    move-result-object v4

    const/4 v5, 0x0

    .line 221
    invoke-virtual {v2, v5, v4, v5, v5}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v4

    invoke-virtual {v4}, Lcom/voxel/launcher3/CellParams;->getIconDrawablePaddingPx()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 223
    iget-object v0, v0, Lcom/voxel/launcher3/LauncherAppWidgetInfo;->user:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-virtual {v7, v3, v0}, Lcom/voxel/launcher3/IconCache;->getTitle(Landroid/content/Intent;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellLayout;->getCellParams()Lcom/voxel/launcher3/CellParams;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/voxel/launcher3/BubbleTextView;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 226
    new-instance v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v0, v9, Lcom/voxel/launcher3/ItemInfo;->cellX:I

    iget v2, v9, Lcom/voxel/launcher3/ItemInfo;->cellY:I

    iget v3, v9, Lcom/voxel/launcher3/ItemInfo;->spanX:I

    iget v5, v9, Lcom/voxel/launcher3/ItemInfo;->spanY:I

    invoke-direct {v4, v0, v2, v3, v5}, Lcom/voxel/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    const/4 v0, 0x1

    .line 227
    iput-boolean v0, v4, Lcom/voxel/launcher3/CellLayout$LayoutParams;->controlsOwnPadding:Z

    .line 228
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    .line 229
    invoke-static {}, Lcom/voxel/launcher3/Launcher;->generateViewId()I

    move-result v3

    const/4 v5, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/voxel/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/voxel/launcher3/CellLayout$LayoutParams;Z)Z

    goto/16 :goto_0

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;Landroid/app/Activity;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;

    iget-object p2, p2, Lcom/voxel/simplesearchlauncher/importer/ImporterInfo;->importData:Lcom/voxel/simplesearchlauncher/importer/ImportData;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->doImport(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;)V

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 95
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mNextButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setupMockLauncher(Landroid/view/View;Lcom/voxel/launcher3/DeviceProfile;Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 122
    sget-object p3, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {p2, p3}, Lcom/voxel/launcher3/DeviceProfile;->getCellParamsForType(Lcom/voxel/launcher3/DeviceProfile$ParamType;)Lcom/voxel/launcher3/CellParams;

    move-result-object p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    const v0, 0x7f0a020e

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x31

    .line 130
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 131
    iget v2, p2, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceWidthPx:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    iget v2, p2, Lcom/voxel/launcher3/DeviceProfile;->searchBarSpaceHeightPx:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 133
    iget v2, p2, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v2, v2, 0x2

    .line 135
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getSearchBarTopOffset()I

    move-result v3

    iget v4, p2, Lcom/voxel/launcher3/DeviceProfile;->edgeMarginPx:I

    mul-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    .line 133
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0a02fd

    .line 139
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    .line 141
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 142
    invoke-virtual {p2}, Lcom/voxel/launcher3/DeviceProfile;->getWorkspacePadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 143
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    const v0, 0x7f0a008e

    .line 146
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/CellLayout;

    .line 147
    invoke-virtual {v0, p2}, Lcom/voxel/launcher3/CellLayout;->setDeviceProfile(Lcom/voxel/launcher3/DeviceProfile;)V

    .line 148
    invoke-virtual {v0, p3}, Lcom/voxel/launcher3/CellLayout;->setCellParams(Lcom/voxel/launcher3/CellParams;)V

    .line 149
    iget p2, p3, Lcom/voxel/launcher3/CellParams;->numColumns:F

    float-to-int p2, p2

    iget p3, p3, Lcom/voxel/launcher3/CellParams;->numRows:F

    float-to-int p3, p3

    invoke-virtual {v0, p2, p3}, Lcom/voxel/launcher3/CellLayout;->setGridSize(II)V

    const p2, 0x7f0a020f

    .line 151
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    .line 152
    invoke-virtual {p2, v5}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->setFocusable(Z)V

    .line 153
    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    const p2, 0x7f0a0197

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 156
    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public doImport(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mLayoutSettingsManager:Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;

    invoke-static {p1, p2, v0}, Lcom/voxel/simplesearchlauncher/importer/LauncherImportHelper;->importItems(Landroid/content/Context;Lcom/voxel/simplesearchlauncher/importer/ImportData;Lcom/voxel/simplesearchlauncher/settings/LayoutSettingsManager;)V

    .line 240
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 241
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "launcher.first_run_did_auto_import"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public getSlideEnteringAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 265
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 268
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x2ee

    .line 270
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 272
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getSlideExitingAnimation(Lcom/voxel/simplesearchlauncher/view/SlideLayout;)Landroid/animation/AnimatorSet;
    .locals 3

    .line 278
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 281
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mView:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x2ee

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 285
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public onEnteringSlide()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mAdapter:Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$MockLauncherAdapter;

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;

    invoke-direct {v1, p0}, Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide$2;-><init>(Lcom/voxel/simplesearchlauncher/activity/onboarding/ImportSlide;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
