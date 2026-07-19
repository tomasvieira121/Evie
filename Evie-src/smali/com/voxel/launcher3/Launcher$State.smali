.class final enum Lcom/voxel/launcher3/Launcher$State;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/launcher3/Launcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/launcher3/Launcher$State;

.field public static final enum APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

.field public static final enum APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

.field public static final enum NONE:Lcom/voxel/launcher3/Launcher$State;

.field public static final enum WORKSPACE:Lcom/voxel/launcher3/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 399
    new-instance v0, Lcom/voxel/launcher3/Launcher$State;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$State;->NONE:Lcom/voxel/launcher3/Launcher$State;

    new-instance v0, Lcom/voxel/launcher3/Launcher$State;

    const-string v1, "WORKSPACE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    new-instance v0, Lcom/voxel/launcher3/Launcher$State;

    const-string v1, "APPS_CUSTOMIZE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    new-instance v0, Lcom/voxel/launcher3/Launcher$State;

    const-string v1, "APPS_CUSTOMIZE_SPRING_LOADED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

    const/4 v0, 0x4

    .line 398
    new-array v0, v0, [Lcom/voxel/launcher3/Launcher$State;

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->NONE:Lcom/voxel/launcher3/Launcher$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->WORKSPACE:Lcom/voxel/launcher3/Launcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE:Lcom/voxel/launcher3/Launcher$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/launcher3/Launcher$State;->APPS_CUSTOMIZE_SPRING_LOADED:Lcom/voxel/launcher3/Launcher$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/launcher3/Launcher$State;->$VALUES:[Lcom/voxel/launcher3/Launcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/launcher3/Launcher$State;
    .locals 1

    .line 398
    const-class v0, Lcom/voxel/launcher3/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/Launcher$State;

    return-object p0
.end method

.method public static values()[Lcom/voxel/launcher3/Launcher$State;
    .locals 1

    .line 398
    sget-object v0, Lcom/voxel/launcher3/Launcher$State;->$VALUES:[Lcom/voxel/launcher3/Launcher$State;

    invoke-virtual {v0}, [Lcom/voxel/launcher3/Launcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/launcher3/Launcher$State;

    return-object v0
.end method
