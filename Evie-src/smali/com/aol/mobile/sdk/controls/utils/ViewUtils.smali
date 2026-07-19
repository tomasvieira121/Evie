.class public final Lcom/aol/mobile/sdk/controls/utils/ViewUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findView(Landroid/view/View;I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    return-object v0
.end method

.method public static isVisible(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static renderAvailability(ZLandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusable(Z)V

    :cond_1
    return-void
.end method

.method public static renderSeekerBufferProgress(ILandroid/widget/SeekBar;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    mul-int p0, p0, v0

    div-int/lit8 p0, p0, 0x64

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getSecondaryProgress()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public static renderSeekerMaxValue(ILandroid/widget/SeekBar;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public static renderSeekerProgress(DLandroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    if-eq p1, p0, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public static renderSelectivity(ZLandroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eq p0, v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public static renderText(Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez p0, :cond_0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public static renderVisibility(ZLandroid/view/View;)V
    .locals 1

    invoke-static {p1}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eq p0, v0, :cond_0

    invoke-static {p1, p0}, Lcom/aol/mobile/sdk/controls/utils/ViewUtils;->set(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public static set(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
