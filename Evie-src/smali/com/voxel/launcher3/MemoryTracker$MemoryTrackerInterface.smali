.class public Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;
.super Landroid/os/Binder;
.source "MemoryTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/MemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MemoryTrackerInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/MemoryTracker;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/MemoryTracker;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/voxel/launcher3/MemoryTracker;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/voxel/launcher3/MemoryTracker$MemoryTrackerInterface;->this$0:Lcom/voxel/launcher3/MemoryTracker;

    return-object v0
.end method
