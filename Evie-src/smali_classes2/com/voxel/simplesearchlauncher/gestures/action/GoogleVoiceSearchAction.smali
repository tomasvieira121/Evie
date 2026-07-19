.class public Lcom/voxel/simplesearchlauncher/gestures/action/GoogleVoiceSearchAction;
.super Ljava/lang/Object;
.source "GoogleVoiceSearchAction.java"

# interfaces
.implements Lcom/voxel/simplesearchlauncher/gestures/action/CustomGestureActionImpl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAction(Lcom/voxel/launcher3/Launcher;)V
    .locals 2

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/voxel/launcher3/Launcher;->startActivitySafely(Landroid/content/Intent;)Z

    return-void
.end method
