.class Lcom/voxel/launcher3/Launcher$7;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;

.field final synthetic val$localeConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V
    .locals 0

    .line 1297
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$7;->this$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/Launcher$7;->val$localeConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1297
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/voxel/launcher3/Launcher$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    .line 1299
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$7;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$7;->val$localeConfiguration:Lcom/voxel/launcher3/Launcher$LocaleConfiguration;

    invoke-static {p1, v0}, Lcom/voxel/launcher3/Launcher;->access$2100(Landroid/content/Context;Lcom/voxel/launcher3/Launcher$LocaleConfiguration;)V

    const/4 p1, 0x0

    return-object p1
.end method
