.class Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$2;
.super Ljava/lang/Object;
.source "SelectAppFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment$2;->this$0:Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;->access$000(Lcom/voxel/simplesearchlauncher/settings/gestures/SelectAppFragment;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
