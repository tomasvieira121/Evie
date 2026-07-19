.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/net/Uri;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$0:Landroid/net/Uri;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$2:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$0:Landroid/net/Uri;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$gItJclrrpS6M7RrkoaUFdPkqvJk;->f$2:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v2}, Lcom/voxel/launcher3/LauncherModel;->lambda$updateWorkspaceScreenOrder$14(Landroid/net/Uri;Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    return-void
.end method
