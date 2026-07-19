.class public Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "ShortcutItemView.java"


# static fields
.field private static final sTempPoint:Landroid/graphics/Point;


# instance fields
.field mDividerView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mHandleView:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mIconLastTouchPos:Landroid/graphics/Point;

.field mIconView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

.field mSystemShortcut:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

.field mTextView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->sTempPoint:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public applyShortcutInfo(Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V
    .locals 5

    .line 59
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->setTag(Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    .line 61
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/voxel/launcher3/LauncherAppState;->getIconCache()Lcom/voxel/launcher3/IconCache;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1, v0}, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->getIcon(Lcom/voxel/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->mDetail:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-virtual {v0}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {v2}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 72
    :goto_0
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->mDetail:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-virtual {p1}, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mHandleView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public applySystemShortcut(Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;)V
    .locals 3

    .line 78
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mSystemShortcut:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mSystemShortcut:Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->getMainIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 82
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/voxel/simplesearchlauncher/popup/SystemShortcut;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mHandleView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public getFinalInfo()Lcom/voxel/launcher3/ShortcutInfo;
    .locals 3

    .line 119
    new-instance v0, Lcom/voxel/launcher3/ShortcutInfo;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    invoke-direct {v0, v1}, Lcom/voxel/launcher3/ShortcutInfo;-><init>(Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 122
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->getInstance()Lcom/voxel/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/voxel/launcher3/LauncherAppState;->getModel()Lcom/voxel/launcher3/LauncherModel;

    move-result-object v1

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mInfo:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    iget-object v2, v2, Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;->mDetail:Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-virtual {v1, v2, v0}, Lcom/voxel/launcher3/LauncherModel;->updateDeepShortcutInfo(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/ShortcutInfo;)V

    .line 124
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 125
    iput v1, v0, Lcom/voxel/launcher3/ShortcutInfo;->itemType:I

    :cond_0
    return-object v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 3

    .line 107
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 108
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->sTempPoint:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->getMeasuredWidth()I

    move-result v1

    sget-object v2, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->sTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 111
    :cond_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->sTempPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method public getIconView()Landroid/view/View;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 54
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onFinishInflate()V

    .line 55
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/view/View;)Lbutterknife/Unbinder;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 139
    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setIconVisible(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public showDivider()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/ShortcutItemView;->mDividerView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
