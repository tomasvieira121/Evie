.class Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;
.super Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.source "LockOverlayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-direct {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 148
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->runExitAnimation()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 165
    invoke-super {p0}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 154
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-virtual {p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->scheduleClose()V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
    .locals 0

    .line 160
    iget-object p1, p0, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment$1;->this$0:Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;

    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;->access$000(Lcom/voxel/simplesearchlauncher/lock/LockOverlayFragment;)V

    return-void
.end method
