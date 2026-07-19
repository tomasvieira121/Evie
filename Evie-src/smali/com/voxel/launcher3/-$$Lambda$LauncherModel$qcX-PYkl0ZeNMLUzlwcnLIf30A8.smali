.class public final synthetic Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/util/ArrayList;

.field private final synthetic f$1:Landroid/content/ContentResolver;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;->f$1:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/voxel/launcher3/-$$Lambda$LauncherModel$qcX-PYkl0ZeNMLUzlwcnLIf30A8;->f$1:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Lcom/voxel/launcher3/LauncherModel;->lambda$deleteItemsFromDatabase$13(Ljava/util/ArrayList;Landroid/content/ContentResolver;)V

    return-void
.end method
