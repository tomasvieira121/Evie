.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$NotificationGroupView$YhAr-bPktD9_TR3ogcWzdkMFEfA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/popup/NotificationFooterView$IconAnimationEndListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$NotificationGroupView$YhAr-bPktD9_TR3ogcWzdkMFEfA;->f$0:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    return-void
.end method


# virtual methods
.method public final onIconAnimationEnd(Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$NotificationGroupView$YhAr-bPktD9_TR3ogcWzdkMFEfA;->f$0:Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;

    invoke-static {v0, p1}, Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;->lambda$trimNotifications$0(Lcom/voxel/simplesearchlauncher/popup/NotificationGroupView;Lcom/voxel/simplesearchlauncher/notification/NotificationContent;)V

    return-void
.end method
