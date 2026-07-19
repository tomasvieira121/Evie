.class Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$1;
.super Ljava/lang/Object;
.source "IconPickerFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;->access$000(Lcom/voxel/simplesearchlauncher/appoptions/IconPickerFragment;)Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
