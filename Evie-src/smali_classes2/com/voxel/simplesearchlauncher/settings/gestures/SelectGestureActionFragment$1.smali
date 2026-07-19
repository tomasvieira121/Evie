.class synthetic Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$1;
.super Ljava/lang/Object;
.source "SelectGestureActionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$voxel$simplesearchlauncher$gestures$action$CustomGestureAction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 143
    invoke-static {}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->values()[Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$1;->$SwitchMap$com$voxel$simplesearchlauncher$gestures$action$CustomGestureAction:[I

    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$1;->$SwitchMap$com$voxel$simplesearchlauncher$gestures$action$CustomGestureAction:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->SCREEN_LOCK_DEVICE_ADMIN:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectGestureActionFragment$1;->$SwitchMap$com$voxel$simplesearchlauncher$gestures$action$CustomGestureAction:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->LAUNCH:Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
