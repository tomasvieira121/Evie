.class public final synthetic Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$wq73PpHRLkMqvdvfXaRUGU3i6pQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$wq73PpHRLkMqvdvfXaRUGU3i6pQ;->f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$wq73PpHRLkMqvdvfXaRUGU3i6pQ;->f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    check-cast p1, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    check-cast p2, Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;

    invoke-static {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->lambda$getNotificationKeys$1(Lcom/voxel/simplesearchlauncher/notification/Notifier;Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;Lcom/voxel/simplesearchlauncher/notification/NotificationKeyData;)I

    move-result p1

    return p1
.end method
