.class synthetic Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$1;
.super Ljava/lang/Object;
.source "UserProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$voxel$simplesearchlauncher$model$managers$UserProfileManager$UserDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 94
    invoke-static {}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->values()[Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$managers$UserProfileManager$UserDataType:[I

    :try_start_0
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$managers$UserProfileManager$UserDataType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->PROFILE_DATA:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$1;->$SwitchMap$com$voxel$simplesearchlauncher$model$managers$UserProfileManager$UserDataType:[I

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->HOMESCREEN_ITEMS_DATA:Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;

    invoke-virtual {v1}, Lcom/voxel/simplesearchlauncher/model/managers/UserProfileManager$UserDataType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
