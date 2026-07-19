.class final enum Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;
.super Ljava/lang/Enum;
.source "LocalAppsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

.field public static final enum NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

.field public static final enum STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

.field public static final enum STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 87
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    const-string v1, "NOT_STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 88
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    const-string v1, "STARTING_UP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    .line 89
    new-instance v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    const-string v1, "STARTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->NOT_STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTING_UP:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->STARTED:Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->$VALUES:[Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;
    .locals 1

    .line 86
    const-class v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;
    .locals 1

    .line 86
    sget-object v0, Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->$VALUES:[Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/model/managers/LocalAppsManager$State;

    return-object v0
.end method
