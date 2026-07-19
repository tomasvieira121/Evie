.class public Lcom/voxel/launcher3/CheckableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CheckableFrameLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field mChecked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/voxel/launcher3/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/voxel/launcher3/CheckableFrameLayout;->mChecked:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 58
    invoke-virtual {p0}, Lcom/voxel/launcher3/CheckableFrameLayout;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/voxel/launcher3/CheckableFrameLayout;->CHECKED_STATE_SET:[I

    invoke-static {p1, v0}, Lcom/voxel/launcher3/CheckableFrameLayout;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/voxel/launcher3/CheckableFrameLayout;->mChecked:Z

    if-eq p1, v0, :cond_0

    .line 46
    iput-boolean p1, p0, Lcom/voxel/launcher3/CheckableFrameLayout;->mChecked:Z

    .line 47
    invoke-virtual {p0}, Lcom/voxel/launcher3/CheckableFrameLayout;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/voxel/launcher3/CheckableFrameLayout;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/voxel/launcher3/CheckableFrameLayout;->setChecked(Z)V

    return-void
.end method
