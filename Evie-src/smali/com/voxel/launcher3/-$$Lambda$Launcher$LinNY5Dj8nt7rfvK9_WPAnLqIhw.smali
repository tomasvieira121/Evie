.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/launcher3/Launcher;

.field private final synthetic f$1:Ljava/util/ArrayList;

.field private final synthetic f$2:Ljava/util/ArrayList;

.field private final synthetic f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$0:Lcom/voxel/launcher3/Launcher;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$2:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$0:Lcom/voxel/launcher3/Launcher;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$2:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/voxel/launcher3/-$$Lambda$Launcher$LinNY5Dj8nt7rfvK9_WPAnLqIhw;->f$3:Lcom/voxel/launcher3/compat/UserHandleCompat;

    invoke-static {v0, v1, v2, v3}, Lcom/voxel/launcher3/Launcher;->lambda$bindShortcutsChanged$42(Lcom/voxel/launcher3/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/voxel/launcher3/compat/UserHandleCompat;)V

    return-void
.end method
