.class public final synthetic Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/utils/UpgradeUtil$UpgradableComponent;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/notification/Notifier;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;->f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onUpgrade(II)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;->f$0:Lcom/voxel/simplesearchlauncher/notification/Notifier;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/-$$Lambda$Notifier$JDm1OXrSbRxkOenEBxHKf4U7Zjk;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1, p2}, Lcom/voxel/simplesearchlauncher/notification/Notifier;->lambda$new$0(Lcom/voxel/simplesearchlauncher/notification/Notifier;Landroid/content/Context;II)V

    return-void
.end method
