.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Folder$RjW4n87ADXXHAlDudFC9X0iaDv4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/OnAlarmListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Folder;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$RjW4n87ADXXHAlDudFC9X0iaDv4;->f$0:Lcom/voxel/launcher3/Folder;

    return-void
.end method


# virtual methods
.method public final onAlarm(Lcom/voxel/launcher3/Alarm;)V
    .locals 1

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Folder$RjW4n87ADXXHAlDudFC9X0iaDv4;->f$0:Lcom/voxel/launcher3/Folder;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/Folder;->lambda$new$3(Lcom/voxel/launcher3/Folder;Lcom/voxel/launcher3/Alarm;)V

    return-void
.end method
