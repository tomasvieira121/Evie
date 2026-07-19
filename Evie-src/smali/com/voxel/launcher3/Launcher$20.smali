.class Lcom/voxel/launcher3/Launcher$20;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lcom/voxel/simplesearchlauncher/widget/LauncherAppWidgetProviderInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$appWidgetId:I


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;I)V
    .locals 0

    .line 3385
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$20;->this$0:Lcom/voxel/launcher3/Launcher;

    iput p2, p0, Lcom/voxel/launcher3/Launcher$20;->val$appWidgetId:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3385
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$20;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 3387
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$20;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$4200(Lcom/voxel/launcher3/Launcher;)Lcom/voxel/launcher3/LauncherAppWidgetHost;

    move-result-object p1

    iget v0, p0, Lcom/voxel/launcher3/Launcher$20;->val$appWidgetId:I

    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x0

    return-object p1
.end method
