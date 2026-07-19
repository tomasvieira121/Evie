.class public final enum Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
.super Ljava/lang/Enum;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/notification/NotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

.field public static final enum RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

.field public static final enum STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

.field public static final enum STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    const-string v1, "STOPPED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    const-string v1, "STARTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    new-instance v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    const-string v1, "RUNNING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STOPPED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->STARTED:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->RUNNING:Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->$VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    .locals 1

    .line 41
    const-class v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;
    .locals 1

    .line 41
    sget-object v0, Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->$VALUES:[Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/notification/NotificationController$State;

    return-object v0
.end method
