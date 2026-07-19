.class Lcom/voxel/launcher3/Launcher$23;
.super Landroid/os/Handler;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 3573
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$23;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 3576
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 3578
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$23;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$4800(Lcom/voxel/launcher3/Launcher;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3579
    iget-object v2, p0, Lcom/voxel/launcher3/Launcher$23;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v2}, Lcom/voxel/launcher3/Launcher;->access$4800(Lcom/voxel/launcher3/Launcher;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    mul-int/lit16 v2, p1, 0xfa

    .line 3581
    instance-of v3, v1, Landroid/widget/Advanceable;

    if-eqz v3, :cond_0

    .line 3582
    check-cast v1, Landroid/widget/Advanceable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/voxel/launcher3/-$$Lambda$McLEzzcuDpNLGPEbi7yalJwL7eo;

    invoke-direct {v3, v1}, Lcom/voxel/launcher3/-$$Lambda$McLEzzcuDpNLGPEbi7yalJwL7eo;-><init>(Landroid/widget/Advanceable;)V

    int-to-long v1, v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/voxel/launcher3/Launcher$23;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 3586
    :cond_1
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$23;->this$0:Lcom/voxel/launcher3/Launcher;

    const-wide/16 v0, 0x4e20

    invoke-static {p1, v0, v1}, Lcom/voxel/launcher3/Launcher;->access$4900(Lcom/voxel/launcher3/Launcher;J)V

    :cond_2
    return-void
.end method
