.class public Lcom/voxel/launcher3/BubbleTextView;
.super Landroid/widget/TextView;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;


# static fields
.field private static final BADGE_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/voxel/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sPreloaderThemes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

.field private mCellParams:Lcom/voxel/launcher3/CellParams;

.field private mCustomShadowLargeColor:I

.field private mCustomShadowSmallColor:I

.field private final mCustomShadowsEnabled:Z

.field private mDayChangeReceiverRegistered:Z

.field private mDayChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mIgnoreKeyPressedStateChange:Z

.field private mIgnorePressedStateChange:Z

.field private mIsTextVisible:Z

.field private mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

.field private mOutlineHelper:Lcom/voxel/launcher3/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private mSlop:F

.field private mStayPressed:Z

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/voxel/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    .line 95
    new-instance v0, Lcom/voxel/launcher3/BubbleTextView$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "badgeScale"

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/BubbleTextView$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/voxel/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x23000000

    .line 76
    iput v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowLargeColor:I

    const/high16 v0, -0x34000000    # -3.3554432E7f

    .line 77
    iput v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowSmallColor:I

    .line 120
    sget-object v0, Lis/shortcut/R$styleable;->BubbleTextView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 122
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 123
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    iget-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 130
    :cond_0
    iput-object p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/launcher3/BubbleTextView;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/voxel/launcher3/BubbleTextView;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->applyCellParams()V

    return-void
.end method

.method private applyCellParams()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconTextSizePx:I

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/voxel/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 167
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget-boolean v0, v0, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 171
    iget-object v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v2, v2, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    iget-object v3, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v3, v3, Lcom/voxel/launcher3/CellParams;->iconSizePx:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    iget v0, v0, Lcom/voxel/launcher3/CellParams;->iconDrawablePaddingPx:I

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method private getPreloaderTheme()Landroid/content/res/Resources$Theme;
    .locals 5

    .line 596
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    instance-of v1, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    iget-wide v0, v0, Lcom/voxel/launcher3/ShortcutInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const v0, 0x7f130101

    goto :goto_0

    :cond_0
    const v0, 0x7f130100

    .line 600
    :goto_0
    sget-object v1, Lcom/voxel/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources$Theme;

    if-nez v1, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    .line 603
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 604
    sget-object v2, Lcom/voxel/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    return-object v1
.end method

.method private init()V
    .locals 4

    .line 144
    new-instance v0, Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/voxel/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    .line 146
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/voxel/launcher3/HolographicOutlineHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mOutlineHelper:Lcom/voxel/launcher3/HolographicOutlineHelper;

    .line 147
    iget-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40800000    # 4.0f

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, -0x23000000

    .line 148
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/voxel/launcher3/BubbleTextView;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method private registerDayChangedReceiver()V
    .locals 3

    .line 635
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangeReceiverRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.evie.day_changed"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    .line 640
    iget-object v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v0, 0x1

    .line 641
    iput-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangeReceiverRegistered:Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private updateIconState()V
    .locals 3

    .line 342
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 343
    instance-of v2, v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    if-eqz v2, :cond_2

    .line 344
    check-cast v0, Lcom/voxel/launcher3/FastBitmapDrawable;

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->isPressed()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/FastBitmapDrawable;->setPressed(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 178
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V

    return-void
.end method

.method public applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V
    .locals 4

    .line 185
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/IconCache;->isCalendarApp(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/voxel/launcher3/BubbleTextView$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/voxel/launcher3/BubbleTextView$2;-><init>(Lcom/voxel/launcher3/BubbleTextView;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;)V

    iput-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->registerDayChangedReceiver()V

    .line 204
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 207
    :cond_1
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ShortcutInfo;->getIcon(Lcom/voxel/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 209
    invoke-static {p2}, Lcom/voxel/launcher3/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;

    move-result-object p2

    .line 210
    iget v0, p1, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/voxel/launcher3/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 213
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 214
    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->unregisterListenerForAll(Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    .line 215
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->supportsNotifications(Lcom/voxel/launcher3/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 219
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->registerListener(Ljava/lang/String;Lcom/voxel/simplesearchlauncher/notification/Notifier$OnNotificationChangeListener;)V

    .line 221
    new-instance v0, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Lcom/voxel/launcher3/FastBitmapDrawable;->getIconPalette()Lcom/voxel/launcher3/graphics/IconPalette;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/graphics/IconPalette;)V

    iput-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    .line 222
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, v2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    .line 223
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_3
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0, p2, v0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 228
    iget-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_4

    .line 229
    iget-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 231
    :cond_4
    iget-object p2, p1, Lcom/voxel/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0, p1, p3}, Lcom/voxel/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;Z)V

    .line 234
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->applyCellParams()V

    if-nez p4, :cond_5

    .line 235
    invoke-virtual {p1}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 236
    :cond_5
    invoke-virtual {p0, p4}, Lcom/voxel/launcher3/BubbleTextView;->applyState(Z)V

    :cond_6
    return-void
.end method

.method public applyState(Z)V
    .locals 6

    .line 569
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/voxel/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3

    .line 570
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/launcher3/ShortcutInfo;

    .line 571
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    .line 573
    invoke-virtual {v0, v1}, Lcom/voxel/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/voxel/launcher3/ShortcutInfo;->getInstallProgress()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    .line 576
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v3, 0x1

    .line 577
    aget-object v3, v1, v3

    if-eqz v3, :cond_3

    .line 580
    instance-of v4, v3, Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v4, :cond_2

    .line 581
    check-cast v3, Lcom/voxel/launcher3/PreloadIconDrawable;

    goto :goto_1

    .line 583
    :cond_2
    new-instance v4, Lcom/voxel/launcher3/PreloadIconDrawable;

    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lcom/voxel/launcher3/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 584
    aget-object v2, v1, v2

    const/4 v3, 0x2

    aget-object v3, v1, v3

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {p0, v2, v4, v3, v1}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v3, v4

    .line 587
    :goto_1
    invoke-virtual {v3, v0}, Lcom/voxel/launcher3/PreloadIconDrawable;->setLevel(I)Z

    if-eqz p1, :cond_3

    .line 589
    invoke-virtual {v3}, Lcom/voxel/launcher3/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    :cond_3
    return-void
.end method

.method public cancelLongPress()V
    .locals 1

    .line 563
    invoke-super {p0}, Landroid/widget/TextView;->cancelLongPress()V

    .line 565
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method clearPressedBackground()V
    .locals 1

    const/4 v0, 0x0

    .line 404
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setPressed(Z)V

    .line 405
    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 436
    iget-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-nez v0, :cond_0

    .line 437
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    return-void

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 444
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollX()I

    move-result v1

    .line 445
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollY()I

    move-result v2

    .line 447
    iget-boolean v3, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_1

    .line 448
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 449
    iput-boolean v5, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    :cond_1
    or-int v3, v1, v2

    if-nez v3, :cond_2

    .line 453
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    int-to-float v3, v1

    int-to-float v4, v2

    .line 455
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 456
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 462
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 463
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 464
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 465
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    return-void

    .line 470
    :cond_4
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowLargeColor:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 471
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 472
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 473
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v7, v0

    .line 474
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v8, v0

    .line 475
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v9, v0

    sget-object v10, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v5, p1

    .line 473
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 476
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v1, 0x3fe00000    # 1.75f

    iget v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowSmallColor:I

    invoke-virtual {v0, v1, v4, v4, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 477
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 478
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 480
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/BubbleTextView;->drawBadge(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawBadge(Landroid/graphics/Canvas;)V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 495
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 496
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    .line 497
    invoke-virtual {v2}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getBaseBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 496
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 498
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 499
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getCellParams()Lcom/voxel/launcher3/CellParams;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    return-object v0
.end method

.method public getCustomShadowLargeColor()I
    .locals 1

    .line 259
    iget v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowLargeColor:I

    return v0
.end method

.method public getCustomShadowSmallColor()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowSmallColor:I

    return v0
.end method

.method public isCustomShadowsEnabled()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 504
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 506
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 509
    instance-of v1, v0, Lcom/voxel/launcher3/PreloadIconDrawable;

    if-eqz v1, :cond_1

    .line 510
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 512
    :cond_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mSlop:F

    .line 514
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 515
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->registerDayChangedReceiver()V

    .line 516
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 522
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 523
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 526
    iput-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mDayChangeReceiverRegistered:Z

    :cond_1
    return-void
.end method

.method public onFinishInflate()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 139
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getDynamicGrid()Lcom/voxel/launcher3/DynamicGrid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/DynamicGrid;->getDeviceProfile()Lcom/voxel/launcher3/DeviceProfile;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 410
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    .line 413
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mOutlineHelper:Lcom/voxel/launcher3/HolographicOutlineHelper;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/HolographicOutlineHelper;->createMediumDropShadow(Lcom/voxel/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    .line 425
    iput-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mIgnoreKeyPressedStateChange:Z

    .line 426
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    const/4 p2, 0x0

    .line 428
    iput-object p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 429
    iput-boolean p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mIgnoreKeyPressedStateChange:Z

    .line 430
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->updateIconState()V

    return p1
.end method

.method public onNotificationChanged(Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 629
    :cond_0
    iget p1, p1, Lcom/voxel/simplesearchlauncher/notification/NotificationCount;->count:I

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    .line 631
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->postInvalidate()V

    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 352
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 376
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/voxel/launcher3/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, p1, v2}, Lcom/voxel/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_2

    .line 377
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 369
    :pswitch_1
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->isPressed()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 370
    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 359
    :pswitch_2
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 360
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mOutlineHelper:Lcom/voxel/launcher3/HolographicOutlineHelper;

    invoke-virtual {p1, p0}, Lcom/voxel/launcher3/HolographicOutlineHelper;->createMediumDropShadow(Lcom/voxel/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 363
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mLongPressHelper:Lcom/voxel/launcher3/CheckLongPressHelper;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBadgeEnabled(Z)V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->isBadgeEnabled()Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 616
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadgeEnabled(Z)V

    if-nez p1, :cond_2

    .line 618
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->invalidate()V

    goto :goto_0

    .line 619
    :cond_2
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->hasBadge()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 620
    sget-object p1, Lcom/voxel/launcher3/BubbleTextView;->BADGE_SCALE_PROPERTY:Landroid/util/Property;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_3
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 161
    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mCellParams:Lcom/voxel/launcher3/CellParams;

    .line 162
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->applyCellParams()V

    return-void

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cell params must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 276
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 277
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz p1, :cond_0

    .line 278
    invoke-virtual {p0, p2}, Lcom/voxel/launcher3/BubbleTextView;->updateBadgeBounds(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCustomShadowLargeColor(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowLargeColor:I

    return-void
.end method

.method public setCustomShadowSmallColor(I)V
    .locals 0

    .line 271
    iput p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mCustomShadowSmallColor:I

    return-void
.end method

.method public setDrawableAlpha(F)V
    .locals 4

    .line 328
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 329
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/AlphaUtil;->floatToIntAlpha(F)I

    move-result p1

    .line 331
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 333
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz v0, :cond_2

    .line 337
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setAlpha(I)V

    :cond_2
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    .line 284
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 285
    iput-boolean v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 287
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setFrame(IIII)Z

    move-result p1

    .line 288
    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz p2, :cond_2

    .line 289
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getRight()I

    move-result p2

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getCompoundPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    .line 290
    iget-object p3, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p3}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->getBaseBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 291
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 292
    iget v0, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int v1, p2, v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p4, Landroid/graphics/Rect;->left:I

    .line 293
    iget v0, p4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, p2

    iput v0, p4, Landroid/graphics/Rect;->right:I

    .line 294
    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p4, Landroid/graphics/Rect;->top:I

    .line 295
    iget p2, p4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    .line 296
    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p2, p4}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2
    return p1
.end method

.method public setIgnorePressedStateChange(Z)V
    .locals 0

    .line 385
    iput-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 0

    .line 320
    invoke-super {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    .line 322
    iget-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mIgnoreKeyPressedStateChange:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez p1, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->updateIconState()V

    :cond_0
    return-void
.end method

.method setStayPressed(Z)V
    .locals 2

    .line 389
    iput-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mStayPressed:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 391
    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_1

    .line 396
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/voxel/launcher3/CellLayout;

    .line 397
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/voxel/launcher3/BubbleTextView;->mOutlineHelper:Lcom/voxel/launcher3/HolographicOutlineHelper;

    iget v1, v1, Lcom/voxel/launcher3/HolographicOutlineHelper;->shadowBitmapPadding:I

    invoke-virtual {p1, p0, v0, v1}, Lcom/voxel/launcher3/CellLayout;->setPressedIcon(Lcom/voxel/launcher3/BubbleTextView;Landroid/graphics/Bitmap;I)V

    .line 400
    :cond_1
    invoke-direct {p0}, Lcom/voxel/launcher3/BubbleTextView;->updateIconState()V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/voxel/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;Z)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;Z)V
    .locals 0

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 313
    move-object p2, p1

    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {p2}, Lcom/voxel/launcher3/LauncherModel;->checkItemInfo(Lcom/voxel/launcher3/ItemInfo;)V

    .line 315
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 532
    iput p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mTextColor:I

    .line 533
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 538
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mTextColor:I

    .line 539
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2

    .line 543
    invoke-virtual {p0}, Lcom/voxel/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 545
    iget v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mTextColor:I

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    const v1, 0x106000d

    .line 547
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 549
    :goto_0
    iput-boolean p1, p0, Lcom/voxel/launcher3/BubbleTextView;->mIsTextVisible:Z

    return-void
.end method

.method protected updateBadgeBounds(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 485
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBaseBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/voxel/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
