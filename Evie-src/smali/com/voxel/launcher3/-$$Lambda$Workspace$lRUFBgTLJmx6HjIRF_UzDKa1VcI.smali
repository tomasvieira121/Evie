.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/LauncherModel$ItemInfoFilter;


# instance fields
.field private final synthetic f$0:Ljava/util/HashSet;

.field private final synthetic f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final synthetic f$2:Ljava/util/HashMap;

.field private final synthetic f$3:Ljava/util/ArrayList;

.field private final synthetic f$4:Ljava/util/HashMap;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$0:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$2:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$3:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$4:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final filterItem(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 8

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$0:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$1:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$2:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$3:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lRUFBgTLJmx6HjIRF_UzDKa1VcI;->f$4:Ljava/util/HashMap;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/voxel/launcher3/Workspace;->lambda$removeItemsByComponentName$19(Ljava/util/HashSet;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result p1

    return p1
.end method
