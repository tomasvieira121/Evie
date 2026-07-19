.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;

    invoke-direct {v0}, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;->INSTANCE:Lcom/voxel/launcher3/-$$Lambda$LauncherModel$LoaderTask$vOuXeeiTPZ1OS1hTdT7xObBkpI8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    invoke-static {p1, p2}, Lcom/voxel/launcher3/LauncherModel$LoaderTask;->lambda$filterCurrentWorkspaceItems$1(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I

    move-result p1

    return p1
.end method
