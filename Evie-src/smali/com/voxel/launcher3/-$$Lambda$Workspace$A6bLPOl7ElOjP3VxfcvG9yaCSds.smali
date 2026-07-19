.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;


# instance fields
.field private final synthetic f$0:Ljava/util/HashSet;

.field private final synthetic f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final synthetic f$2:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$0:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$2:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 6

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$0:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$A6bLPOl7ElOjP3VxfcvG9yaCSds;->f$2:Ljava/util/HashSet;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/voxel/launcher3/Workspace;->lambda$removeItemsByPackageName$18(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
