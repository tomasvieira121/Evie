.class public final synthetic Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/List;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationCount;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;->f$0:Ljava/util/List;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;->f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;->f$0:Ljava/util/List;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$x_0iGkzJrSFCE2sMjBjaWWgHevM;->f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationCount;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->lambda$dispatchListeners$2(Ljava/util/List;Lcom/voxel/simplesearchlauncher/notification/NotificationCount;)V

    return-void
.end method
