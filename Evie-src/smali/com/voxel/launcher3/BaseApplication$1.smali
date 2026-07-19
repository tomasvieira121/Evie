.class Lcom/voxel/launcher3/BaseApplication$1;
.super Ljava/lang/Object;
.source "BaseApplication.java"

# interfaces
.implements Lcom/evie/common/utils/MemoryWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/BaseApplication;->setupGraph()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/BaseApplication;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/BaseApplication;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/voxel/launcher3/BaseApplication$1;->this$0:Lcom/voxel/launcher3/BaseApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public watch(Ljava/lang/Object;)V
    .locals 1

    .line 213
    invoke-static {}, Lcom/voxel/launcher3/BaseApplication;->access$000()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    return-void
.end method
