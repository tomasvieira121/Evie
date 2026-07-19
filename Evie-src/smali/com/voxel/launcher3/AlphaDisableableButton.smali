.class public Lcom/voxel/launcher3/AlphaDisableableButton;
.super Landroid/widget/Button;
.source "AlphaDisableableButton.java"


# static fields
.field public static DISABLED_ALPHA_VALUE:F = 0.4f


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, v0}, Lcom/voxel/launcher3/AlphaDisableableButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/voxel/launcher3/AlphaDisableableButton;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 45
    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/AlphaDisableableButton;->setAlpha(F)V

    goto :goto_0

    .line 47
    :cond_0
    sget p1, Lcom/voxel/launcher3/AlphaDisableableButton;->DISABLED_ALPHA_VALUE:F

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/AlphaDisableableButton;->setAlpha(F)V

    :goto_0
    return-void
.end method
