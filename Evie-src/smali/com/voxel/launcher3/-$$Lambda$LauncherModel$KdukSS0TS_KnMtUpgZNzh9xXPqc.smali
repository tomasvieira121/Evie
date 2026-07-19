.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/content/ContentValues;

.field private final synthetic f$3:Lcom/voxel/launcher3/ItemInfo;

.field private final synthetic f$4:[Ljava/lang/StackTraceElement;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$0:Landroid/content/ContentResolver;

    iput-boolean p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$1:Z

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$2:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$3:Lcom/voxel/launcher3/ItemInfo;

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$4:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$0:Landroid/content/ContentResolver;

    iget-boolean v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$1:Z

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$2:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$3:Lcom/voxel/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$KdukSS0TS_KnMtUpgZNzh9xXPqc;->f$4:[Ljava/lang/StackTraceElement;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/voxel/launcher3/LauncherModel;->lambda$addItemToDatabase$11(Landroid/content/ContentResolver;ZLandroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    return-void
.end method
