.class final enum Lcom/voxel/launcher3/Workspace$State;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/launcher3/Workspace$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/launcher3/Workspace$State;

.field public static final enum NORMAL:Lcom/voxel/launcher3/Workspace$State;

.field public static final enum NORMAL_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

.field public static final enum OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

.field public static final enum OVERVIEW_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

.field public static final enum SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 219
    new-instance v0, Lcom/voxel/launcher3/Workspace$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    new-instance v0, Lcom/voxel/launcher3/Workspace$State;

    const-string v1, "NORMAL_HIDDEN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/launcher3/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    new-instance v0, Lcom/voxel/launcher3/Workspace$State;

    const-string v1, "SPRING_LOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/launcher3/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    new-instance v0, Lcom/voxel/launcher3/Workspace$State;

    const-string v1, "OVERVIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/launcher3/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    new-instance v0, Lcom/voxel/launcher3/Workspace$State;

    const-string v1, "OVERVIEW_HIDDEN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/voxel/launcher3/Workspace$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/voxel/launcher3/Workspace$State;

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL:Lcom/voxel/launcher3/Workspace$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->SPRING_LOADED:Lcom/voxel/launcher3/Workspace$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW:Lcom/voxel/launcher3/Workspace$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/voxel/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/voxel/launcher3/Workspace$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/voxel/launcher3/Workspace$State;->$VALUES:[Lcom/voxel/launcher3/Workspace$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/launcher3/Workspace$State;
    .locals 1

    .line 219
    const-class v0, Lcom/voxel/launcher3/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/Workspace$State;

    return-object p0
.end method

.method public static values()[Lcom/voxel/launcher3/Workspace$State;
    .locals 1

    .line 219
    sget-object v0, Lcom/voxel/launcher3/Workspace$State;->$VALUES:[Lcom/voxel/launcher3/Workspace$State;

    invoke-virtual {v0}, [Lcom/voxel/launcher3/Workspace$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/launcher3/Workspace$State;

    return-object v0
.end method
