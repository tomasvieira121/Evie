.class Lcom/voxel/launcher3/Launcher$18;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/Launcher;)V
    .locals 0

    .line 3094
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$18;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 3097
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$18;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object v0, v0, Lcom/voxel/launcher3/Launcher;->mGoogleNowAnimBackground:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3098
    iget-object v0, p0, Lcom/voxel/launcher3/Launcher$18;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-static {v0}, Lcom/voxel/launcher3/Launcher;->access$4000(Lcom/voxel/launcher3/Launcher;)V

    :cond_0
    return-void
.end method
