.class synthetic Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;
.super Ljava/lang/Object;
.source "BlackRoundedFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->values()[Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->TOP_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_LEFT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/voxel/simplesearchlauncher/view/BlackRoundedFrameLayout$1;->$SwitchMap$com$voxel$simplesearchlauncher$drawable$RoundedCornerDrawable$CornerType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->BOTTOM_RIGHT:Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/drawable/RoundedCornerDrawable$CornerType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
