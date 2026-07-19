.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/ContentResolver;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:Landroid/content/ContentValues;

.field private final synthetic f$3:Lcom/voxel/launcher3/ItemInfo;

.field private final synthetic f$4:J

.field private final synthetic f$5:[Ljava/lang/StackTraceElement;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$0:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$2:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$3:Lcom/voxel/launcher3/ItemInfo;

    iput-wide p5, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$4:J

    iput-object p7, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$5:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$0:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$1:Landroid/net/Uri;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$2:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$3:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$4:J

    iget-object v6, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$1YZC2kdR0C-PQ7gWAx34CMOI44g;->f$5:[Ljava/lang/StackTraceElement;

    invoke-static/range {v0 .. v6}, Lcom/voxel/launcher3/LauncherModel;->lambda$updateItemInDatabaseHelper$9(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Lcom/voxel/launcher3/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    return-void
.end method
