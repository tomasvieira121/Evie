.class public final enum Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;
.super Ljava/lang/Enum;
.source "AnalyticsDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

.field public static final enum APP_LAUNCH:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

.field public static final enum EVENT:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

.field public static final enum PEOPLE_ATTR:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->EVENT:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    .line 47
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    const-string v1, "PEOPLE_ATTR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->PEOPLE_ATTR:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    .line 48
    new-instance v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    const-string v1, "APP_LAUNCH"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->APP_LAUNCH:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    const/4 v0, 0x3

    .line 45
    new-array v0, v0, [Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->EVENT:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->PEOPLE_ATTR:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->APP_LAUNCH:Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->$VALUES:[Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;
    .locals 1

    .line 45
    const-class v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    return-object p0
.end method

.method public static values()[Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;
    .locals 1

    .line 45
    sget-object v0, Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->$VALUES:[Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    invoke-virtual {v0}, [Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/voxel/simplesearchlauncher/analytics/AnalyticsDatabaseHelper$LogType;

    return-object v0
.end method
