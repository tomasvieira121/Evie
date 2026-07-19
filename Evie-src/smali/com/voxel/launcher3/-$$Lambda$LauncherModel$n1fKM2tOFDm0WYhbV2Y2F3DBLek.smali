.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;


# instance fields
.field private final synthetic f$0:Landroid/content/ComponentName;

.field private final synthetic f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;->f$0:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public final filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;->f$0:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$n1fKM2tOFDm0WYhbV2Y2F3DBLek;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/voxel/launcher3/LauncherModel;->lambda$getItemInfoForComponentName$20(Landroid/content/ComponentName;Lcom/voxel/launcher3/compat/UserHandleCompat;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
