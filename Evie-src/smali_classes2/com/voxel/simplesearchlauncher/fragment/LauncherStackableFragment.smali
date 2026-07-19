.class public abstract Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;
.super Landroidx/fragment/app/Fragment;
.source "LauncherStackableFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;
    }
.end annotation


# static fields
.field public static final BACKSTACK_INDEX_KEY:Ljava/lang/String;

.field public static final PREFIX:Ljava/lang/String;

.field public static final REQUEST_CODE_KEY:Ljava/lang/String;

.field public static final REQUEST_INTENT_KEY:Ljava/lang/String;

.field public static final RESULT_CODE_KEY:Ljava/lang/String;

.field public static final RESULT_INTENT_KEY:Ljava/lang/String;


# instance fields
.field private fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "backstack_index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->BACKSTACK_INDEX_KEY:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->REQUEST_CODE_KEY:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "request_intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->REQUEST_INTENT_KEY:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_CODE_KEY:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result_intent"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_INTENT_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public canSaveInstanceState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract focusFragment(Z)V
.end method

.method public final getBackStackIndex()I
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 79
    :cond_0
    sget-object v2, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->BACKSTACK_INDEX_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getRequestCode()I
    .locals 3

    .line 94
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    sget-object v2, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->REQUEST_CODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getResultCode()I
    .locals 3

    .line 142
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 148
    :cond_0
    sget-object v2, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_CODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final getResultIntent()Landroid/content/Intent;
    .locals 2

    .line 169
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 175
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_INTENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method protected final notifyFragmentRequestClose()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->onStackableFragmentRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 255
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onFragmentDidClose()V

    :cond_0
    return-void
.end method

.method protected final notifyFragmentWillRequestClose()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0, p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->onStackableFragmentWillRequestClose(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    .line 199
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->onFragmentWillClose()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 189
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    iput-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 191
    :catch_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    .line 192
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDestroy()V
    .locals 1

    .line 273
    invoke-static {}, Lcom/voxel/launcher3/LauncherApplication;->getRefWatcher()Lcom/squareup/leakcanary/RefWatcher;

    move-result-object v0

    .line 274
    invoke-virtual {v0, p0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;)V

    .line 276
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method protected onFragmentDidClose()V
    .locals 0

    return-void
.end method

.method protected onFragmentWillClose()V
    .locals 0

    return-void
.end method

.method public abstract onPopLauncherStackedAppearance(Landroidx/fragment/app/FragmentActivity;Z)V
.end method

.method public abstract onPushLauncherStackedAppearance(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;)V
.end method

.method public onStackableFragmentResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method protected final popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0, p1, p2}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->popStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;Z)V

    :cond_0
    return-void
.end method

.method protected final pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->fragmentInteractionListener:Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0, p1}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment$OnFragmentInteractionListener;->pushStackFragment(Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;)V

    :cond_0
    return-void
.end method

.method public requiresFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract runExitAnimation()V
.end method

.method public final setBackStackIndex(I)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 66
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->BACKSTACK_INDEX_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setResultCode(I)V
    .locals 2

    .line 132
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_CODE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final setResultIntent(Landroid/content/Intent;)V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 162
    invoke-virtual {p0, v0}, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->setArguments(Landroid/os/Bundle;)V

    .line 165
    :cond_0
    sget-object v1, Lcom/voxel/simplesearchlauncher/fragment/LauncherStackableFragment;->RESULT_INTENT_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public abstract unfocusFragment(Z)V
.end method
