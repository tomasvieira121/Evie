.class public Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;
.super Landroid/widget/LinearLayout;
.source "BadgeableAppIcon.java"


# instance fields
.field private mActivityName:Ljava/lang/String;

.field private mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

.field mDataSource:Lcom/facebook/datasource/DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/datasource/DataSource<",
            "Lcom/facebook/common/references/CloseableReference<",
            "Lcom/facebook/imagepipeline/image/CloseableImage;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

.field private mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mLabel:Landroid/widget/TextView;

.field private mPackageName:Ljava/lang/String;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;

    invoke-direct {p1, p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon$1;-><init>(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

    const/4 p1, 0x1

    .line 65
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setGravity(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->setOrientation(I)V

    .line 68
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 70
    new-instance p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p0, p2}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->addView(Landroid/view/View;)V

    .line 75
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    invoke-direct {p2, p3, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 76
    iput p1, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 77
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f060128

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mTextColor:I

    .line 78
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 81
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    iget p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mTextColor:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    const/high16 p2, 0x40800000    # 4.0f

    const/4 p3, 0x0

    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, -0x23000000

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 83
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->addView(Landroid/view/View;)V

    .line 85
    new-instance p1, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;-><init>(Landroid/content/Context;Lcom/voxel/launcher3/graphics/IconPalette;)V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    .line 86
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p1, p0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;)Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    return-object p0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 193
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public loadBadgeCount()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getInstance(Landroid/content/Context;)Lcom/voxel/simplesearchlauncher/notification/Notifier;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->getCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v1, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    return-void
.end method

.method public loadImage(Landroid/net/Uri;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    .line 132
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadgeEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setIconPalette(Lcom/voxel/launcher3/graphics/IconPalette;)V

    .line 134
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 137
    invoke-static {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->newBuilderWithSource(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->build()Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 142
    :cond_0
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 142
    invoke-virtual {v0, p1, v1}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    .line 145
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSource:Lcom/facebook/datasource/DataSource;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mDataSubscriber:Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;

    invoke-static {}, Lcom/facebook/common/executors/CallerThreadExecutor;->getInstance()Lcom/facebook/common/executors/CallerThreadExecutor;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 146
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setImageRequest(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 148
    invoke-virtual {p1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 173
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 174
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez p1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 179
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getLeft()I

    move-result p2

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 180
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getRight()I

    move-result p2

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 181
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getTop()I

    move-result p2

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getPaddingTop()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 182
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->getBottom()I

    move-result p2

    iget-object p3, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3}, Lcom/facebook/drawee/view/SimpleDraweeView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 183
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBaseBounds(Landroid/graphics/Rect;)V

    .line 185
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 186
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getWidth()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 187
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->getHeight()I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 188
    iget-object p2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    invoke-virtual {p2, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setMaxBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setAppInfo(Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;)V
    .locals 3

    .line 109
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mPackageName:Ljava/lang/String;

    .line 110
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mActivityName:Ljava/lang/String;

    .line 112
    iget-object v0, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->activityName:Ljava/lang/String;

    iget v2, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appVersion:I

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->loadImage(Landroid/net/Uri;)V

    .line 113
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/voxel/simplesearchlauncher/model/AppsInfoDataHelper$AppInfo;->appLabel:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->invalidate()V

    .line 116
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->requestLayout()V

    return-void
.end method

.method public setBadgeCount(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mBadgeDrawable:Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {v0, p1}, Lcom/voxel/simplesearchlauncher/view/BadgeDrawable;->setBadge(I)V

    .line 168
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->postInvalidate()V

    return-void
.end method

.method public setCellParams(Lcom/voxel/launcher3/CellParams;)V
    .locals 3

    .line 90
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v1

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellParams;->getIconSizePx()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x1

    .line 91
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 92
    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mIcon:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v2, v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 95
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    invoke-virtual {p1}, Lcom/voxel/launcher3/CellParams;->getIconDrawablePaddingPx()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 97
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/voxel/launcher3/CellParams;->getIconTextSizePx()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    iget-boolean p1, p1, Lcom/voxel/launcher3/CellParams;->showLabels:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->invalidate()V

    .line 101
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->requestLayout()V

    return-void
.end method

.method public setLabelVisibility(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setLocalAppData(Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;)V
    .locals 3

    .line 120
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mPackageName:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getActivityName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mActivityName:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getAppVersionCode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/fresco/HybridNetworkFetcher;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->loadImage(Landroid/net/Uri;)V

    .line 124
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->mLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/model/itemdata/LocalAppData;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->invalidate()V

    .line 127
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/BadgeableAppIcon;->requestLayout()V

    return-void
.end method
