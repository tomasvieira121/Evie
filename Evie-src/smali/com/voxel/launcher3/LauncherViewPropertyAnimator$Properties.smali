.class final enum Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;
.super Ljava/lang/Enum;
.source "LauncherViewPropertyAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Properties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum ALPHA:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum DURATION:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum INTERPOLATOR:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum ROTATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum SCALE_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum START_DELAY:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum TRANSLATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

.field public static final enum WITH_LAYER:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 32
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_X"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 33
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "TRANSLATION_Y"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 34
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_X"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 35
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "SCALE_Y"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 36
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ROTATION_Y"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 37
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "ALPHA"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 38
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "START_DELAY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 39
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "DURATION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 40
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "INTERPOLATOR"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    .line 41
    new-instance v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const-string v1, "WITH_LAYER"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    const/16 v0, 0xa

    .line 31
    new-array v0, v0, [Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->TRANSLATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_X:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->SCALE_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ROTATION_Y:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v6

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->ALPHA:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v7

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->START_DELAY:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v8

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->DURATION:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v9

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->INTERPOLATOR:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v10

    sget-object v1, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->WITH_LAYER:Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    aput-object v1, v0, v11

    sput-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;
    .locals 1

    .line 31
    const-class v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    return-object p0
.end method

.method public static values()[Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;
    .locals 1

    .line 31
    sget-object v0, Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->$VALUES:[Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    invoke-virtual {v0}, [Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/launcher3/LauncherViewPropertyAnimator$Properties;

    return-object v0
.end method
