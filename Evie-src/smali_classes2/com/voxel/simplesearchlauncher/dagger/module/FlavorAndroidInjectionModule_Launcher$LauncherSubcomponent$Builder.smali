.class public abstract Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "FlavorAndroidInjectionModule_Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/simplesearchlauncher/dagger/module/FlavorAndroidInjectionModule_Launcher$LauncherSubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/voxel/launcher3/Launcher;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    return-void
.end method
