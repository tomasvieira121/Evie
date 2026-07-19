.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Lcom/voxel/launcher3/ItemInfo;

.field private final synthetic f$2:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

.field private final synthetic f$3:Lcom/voxel/launcher3/CellLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$1:Lcom/voxel/launcher3/ItemInfo;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$2:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$3:Lcom/voxel/launcher3/CellLayout;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$1:Lcom/voxel/launcher3/ItemInfo;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$2:Lcom/voxel/launcher3/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$Yzg-EHYHNKtY2aLNe087JrtxgAQ;->f$3:Lcom/voxel/launcher3/CellLayout;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Workspace;->lambda$onDrop$4(Lcom/voxel/launcher3/Workspace;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/LauncherAppWidgetHostView;Lcom/voxel/launcher3/CellLayout;)V

    return-void
.end method
