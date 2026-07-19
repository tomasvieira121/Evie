.class Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;
.super Landroid/content/pm/PackageInstaller$SessionCallback;
.source "PackageInstallerCompatVL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-direct {p0}, Landroid/content/pm/PackageInstaller$SessionCallback;-><init>()V

    return-void
.end method

.method private pushSessionBadgeToLauncher(I)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$100(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {}, Lcom/voxel/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/voxel/launcher3/compat/UserHandleCompat;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$400(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Landroid/content/pm/PackageInstaller$SessionInfo;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    .line 199
    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$200(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$000(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$300(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onActiveChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onBadgingChanged(I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionBadgeToLauncher(I)V

    return-void
.end method

.method public onCreated(I)V
    .locals 0

    .line 160
    invoke-direct {p0, p1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->pushSessionBadgeToLauncher(I)V

    return-void
.end method

.method public onFinished(IZ)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$000(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 166
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$100(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 167
    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$200(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    new-instance v1, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;

    invoke-virtual {p1}, Landroid/content/pm/PackageInstaller$SessionInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    invoke-direct {v1, p1, p2, v2}, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;-><init>(Ljava/lang/String;II)V

    invoke-static {v0, v1}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$300(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    :cond_1
    return-void
.end method

.method public onProgressChanged(IF)V
    .locals 1

    .line 179
    iget-object p2, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {p2}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$100(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/content/pm/PackageInstaller;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 181
    iget-object v0, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    invoke-static {v0}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$000(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    iget-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL$1;->this$0:Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;->access$300(Lcom/voxel/launcher3/compat/PackageInstallerCompatVL;Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;)V

    :cond_0
    return-void
.end method
