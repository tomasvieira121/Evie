.class public Lcom/voxel/launcher3/ExtendedEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "ExtendedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 58
    iget-object p1, p0, Lcom/voxel/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz p1, :cond_0

    .line 59
    invoke-interface {p1}, Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 63
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnBackKeyListener(Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/voxel/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/voxel/launcher3/ExtendedEditText$OnBackKeyListener;

    return-void
.end method
