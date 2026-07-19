.class public Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;
.super Ljava/lang/Object;
.source "MultipleChoiceDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListItem"
.end annotation


# instance fields
.field final iconResId:I

.field final id:I

.field final labelResId:I

.field final subLabelResId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->id:I

    iput p2, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->iconResId:I

    iput p3, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->labelResId:I

    iput p4, p0, Lcom/voxel/simplesearchlauncher/settings/MultipleChoiceDialogFragment$ListItem;->subLabelResId:I

    return-void
.end method
