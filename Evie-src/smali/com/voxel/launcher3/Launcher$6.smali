.class Lcom/voxel/launcher3/Launcher$6;
.super Landroid/os/AsyncTask;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->checkForLocaleChange()V
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
        "Lcom/voxel/launcher3/Launcher$LocaleConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$6;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/voxel/launcher3/Launcher$LocaleConfiguration;
    .locals 1

    .line 1262
    new-instance p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;-><init>(Lcom/voxel/launcher3/Launcher$1;)V

    .line 1263
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$6;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/voxel/launcher3/Launcher;->access$1800(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1259
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$6;->doInBackground([Ljava/lang/Void;)Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 1269
    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$1902(Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    .line 1270
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$6;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {p1}, Lcom/voxel/launcher3/Launcher;->access$2000(Lcom/voxel/launcher3/Launcher;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1259
    check-cast p1, Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$6;->onPostExecute(Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    return-void
.end method
