.class public Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;
.super Lcom/voxel/recyclerview/widget/SpringRecyclerView;
.source "SpringFadingEdgeRecyclerView.java"


# instance fields
.field private fadeBottom:Z

.field private fadeTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/voxel/recyclerview/widget/SpringRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeTop:Z

    .line 20
    iput-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeBottom:Z

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initializeFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 39
    sget-object v0, Lis/shortcut/R$styleable;->SpringFadingEdgeRecyclerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 40
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeTop:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeTop:Z

    .line 41
    iget-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeBottom:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeBottom:Z

    .line 42
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected getBottomFadingEdgeStrength()F
    .locals 4

    .line 60
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeBottom:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 65
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getScrollBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getCurrentScrollPositionY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 4

    .line 48
    iget-boolean v0, p0, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->fadeTop:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 52
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getCurrentScrollPositionY()I

    move-result v2

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/view/SpringFadingEdgeRecyclerView;->getScrollTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 54
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method
