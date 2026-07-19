.class Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;
.super Landroid/database/ContentObserver;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWidgetResetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 6461
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;->this$0:Lcom/voxel/launcher3/Launcher;

    .line 6462
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 6467
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$AppWidgetResetObserver;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$5100(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method
