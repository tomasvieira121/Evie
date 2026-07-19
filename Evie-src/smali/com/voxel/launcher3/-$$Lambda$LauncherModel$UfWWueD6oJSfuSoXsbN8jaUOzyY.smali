.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:Lcom/voxel/launcher3/ItemInfo;

.field private final synthetic f$2:[Ljava/lang/StackTraceElement;


# direct methods
.method public synthetic constructor <init>(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$0:J

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$1:Lcom/voxel/launcher3/ItemInfo;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$2:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-wide v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$0:J

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$1:Lcom/voxel/launcher3/ItemInfo;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$UfWWueD6oJSfuSoXsbN8jaUOzyY;->f$2:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel;->lambda$checkItemInfo$8(JLcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method
