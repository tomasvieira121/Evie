.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/FolderPagedView;

.field private final synthetic f$1:Landroid/view/View;

.field private final synthetic f$2:F

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/FolderPagedView;Landroid/view/View;FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$0:Lcom/voxel/launcher3/FolderPagedView;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$1:Landroid/view/View;

    iput p3, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$2:F

    iput p4, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$0:Lcom/voxel/launcher3/FolderPagedView;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$1:Landroid/view/View;

    iget v2, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$2:F

    iget v3, p0, Lcom/voxel/launcher3/-$$Lambda$FolderPagedView$Uv1Yq0vhokZ-xcWrgQ7icXeaeDc;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/FolderPagedView;->lambda$realTimeReorder$0(Lcom/voxel/launcher3/FolderPagedView;Landroid/view/View;FI)V

    return-void
.end method
