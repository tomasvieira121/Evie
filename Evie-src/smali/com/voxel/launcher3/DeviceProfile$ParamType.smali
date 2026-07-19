.class public final enum Lcom/voxel/launcher3/DeviceProfile$ParamType;
.super Ljava/lang/Enum;
.source "DeviceProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/DeviceProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParamType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/launcher3/DeviceProfile$ParamType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/launcher3/DeviceProfile$ParamType;

.field public static final enum ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

.field public static final enum FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

.field public static final enum HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

.field public static final enum WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 120
    new-instance v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/launcher3/DeviceProfile$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 121
    new-instance v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    const-string v1, "HOTSEAT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/launcher3/DeviceProfile$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 122
    new-instance v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    const-string v1, "FOLDER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/launcher3/DeviceProfile$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    .line 123
    new-instance v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    const-string v1, "ALLAPPS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/voxel/launcher3/DeviceProfile$ParamType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    const/4 v0, 0x4

    .line 119
    new-array v0, v0, [Lcom/voxel/launcher3/DeviceProfile$ParamType;

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->WORKSPACE:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->HOTSEAT:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->FOLDER:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/voxel/launcher3/DeviceProfile$ParamType;->ALLAPPS:Lcom/voxel/launcher3/DeviceProfile$ParamType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->$VALUES:[Lcom/voxel/launcher3/DeviceProfile$ParamType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/launcher3/DeviceProfile$ParamType;
    .locals 1

    .line 119
    const-class v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/launcher3/DeviceProfile$ParamType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/launcher3/DeviceProfile$ParamType;
    .locals 1

    .line 119
    sget-object v0, Lcom/voxel/launcher3/DeviceProfile$ParamType;->$VALUES:[Lcom/voxel/launcher3/DeviceProfile$ParamType;

    invoke-virtual {v0}, [Lcom/voxel/launcher3/DeviceProfile$ParamType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/launcher3/DeviceProfile$ParamType;

    return-object v0
.end method
