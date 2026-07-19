.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:[Ljava/lang/StackTraceElement;

.field private final synthetic f$3:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$2:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$3:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$2:[Ljava/lang/StackTraceElement;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$ZITOsBKG0Ni1IkCYEOZLeSyAgHM;->f$3:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/LauncherModel;->lambda$updateItemsInDatabaseHelper$10(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V

    return-void
.end method
