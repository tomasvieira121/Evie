.class Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;
.super Landroid/database/DataSetObserver;
.source "WidgetsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->getIconPackObserver(Landroid/content/Context;)Landroid/database/DataSetObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;->access$000(Lcom/voxel/simplesearchlauncher/widget/WidgetsFragment;Landroid/content/Context;)V

    return-void
.end method
