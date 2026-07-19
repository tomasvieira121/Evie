.class final Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;
.super Landroid/os/AsyncTask;
.source "AppWidgetsRestoredReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/AppWidgetsRestoredReceiver;->restoreAppWidgetIds(Landroid/content/Context;[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

.field final synthetic val$idsToRemove:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/appwidget/AppWidgetHost;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    iput-object p2, p0, Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4

    .line 85
    iget-object p1, p0, Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;->val$idsToRemove:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 86
    iget-object v1, p0, Lcom/voxel/launcher3/AppWidgetsRestoredReceiver$1;->val$appWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    const-string v1, "AppWidgetsRestoredReceiver"

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Widget no longer present, appWidgetId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
