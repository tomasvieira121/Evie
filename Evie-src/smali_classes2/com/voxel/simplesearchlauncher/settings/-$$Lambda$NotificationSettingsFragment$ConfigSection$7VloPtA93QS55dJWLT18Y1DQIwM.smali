.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;->f$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;->f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;->f$0:Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$NotificationSettingsFragment$ConfigSection$7VloPtA93QS55dJWLT18Y1DQIwM;->f$1:Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;->lambda$onBindHeaderViewHolder$0(Lcom/voxel/simplesearchlauncher/settings/NotificationSettingsFragment$ConfigSection;Lcom/voxel/simplesearchlauncher/notification/NotificationController$Style;Landroid/view/View;)V

    return-void
.end method
