.class Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Lcom/voxel/launcher3/LauncherProvider$WorkspaceLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SimpleWorkspaceLoader"
.end annotation


# instance fields
.field private final mHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

.field private final mRes:Landroid/content/res/Resources;

.field private final mWorkspaceId:I


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/content/res/Resources;I)V
    .locals 0

    .line 2434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2435
    iput-object p1, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    .line 2436
    iput-object p2, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mRes:Landroid/content/res/Resources;

    .line 2437
    iput p3, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mWorkspaceId:I

    return-void
.end method


# virtual methods
.method public loadLayout(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .line 2442
    iget-object v0, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mHelper:Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mRes:Landroid/content/res/Resources;

    iget v2, p0, Lcom/voxel/launcher3/LauncherProvider$SimpleWorkspaceLoader;->mWorkspaceId:I

    invoke-static {v0, p1, v1, v2, p2}, Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;->access$1200(Lcom/voxel/launcher3/LauncherProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/res/Resources;ILjava/util/ArrayList;)I

    move-result p1

    return p1
.end method
