.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/voxel/launcher3/Workspace$ItemOperator;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Workspace;

.field private final synthetic f$1:Ljava/util/HashMap;

.field private final synthetic f$2:Lcom/voxel/launcher3/compat/UserHandleCompat;

.field private final synthetic f$3:Ljava/util/HashSet;

.field private final synthetic f$4:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Workspace;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$0:Lcom/voxel/launcher3/Workspace;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$2:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$3:Ljava/util/HashSet;

    iput-object p5, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$4:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final evaluate(Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$0:Lcom/voxel/launcher3/Workspace;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$1:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$2:Lcom/voxel/launcher3/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$3:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/voxel/launcher3/-$$Lambda$Workspace$lyZePwJSkPJHSAd0DYgJB288yNE;->f$4:Ljava/util/HashSet;

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/voxel/launcher3/Workspace;->lambda$updateShortcutsAndWidgetsPerUser$21(Lcom/voxel/launcher3/Workspace;Ljava/util/HashMap;Lcom/voxel/launcher3/compat/UserHandleCompat;Ljava/util/HashSet;Ljava/util/HashSet;Lcom/voxel/launcher3/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
