.class Lcom/voxel/launcher3/Launcher$12;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/Launcher;->setupViews()V
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

    .line 2656
    iput-object p1, p0, Lcom/voxel/launcher3/Launcher$12;->this$0:Lcom/voxel/launcher3/Launcher;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 2659
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$12;->this$0:Lcom/voxel/launcher3/Launcher;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 2660
    iget-object p2, p0, Lcom/voxel/launcher3/Launcher$12;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p2, p2, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p2}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2661
    iget-object p1, p0, Lcom/voxel/launcher3/Launcher$12;->this$0:Lcom/voxel/launcher3/Launcher;

    iget-object p1, p1, Lcom/voxel/launcher3/Launcher;->mQsbSearchView:Lcom/voxel/simplesearchlauncher/view/SpringySearchView;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/view/SpringySearchView;->clearFocus()V

    return p3
.end method
