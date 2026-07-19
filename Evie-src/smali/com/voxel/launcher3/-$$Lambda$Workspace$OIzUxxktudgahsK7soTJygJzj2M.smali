.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Lcom/voxel/launcher3/PendingAddItemInfo;

.field private final synthetic f$2:Lcom/voxel/launcher3/ItemInfo;

.field private final synthetic f$3:J

.field private final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/PendingAddItemInfo;Lcom/voxel/launcher3/ItemInfo;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$1:Lcom/voxel/launcher3/PendingAddItemInfo;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$2:Lcom/voxel/launcher3/ItemInfo;

    iput-wide p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$3:J

    iput-wide p6, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$1:Lcom/voxel/launcher3/PendingAddItemInfo;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$2:Lcom/voxel/launcher3/ItemInfo;

    iget-wide v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$3:J

    iget-wide v5, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$OIzUxxktudgahsK7soTJygJzj2M;->f$4:J

    invoke-static/range {v0 .. v6}, Lcom/voxel/launcher3/Workspace;->lambda$onDropExternal$8(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/PendingAddItemInfo;Lcom/voxel/launcher3/ItemInfo;JJ)V

    return-void
.end method
