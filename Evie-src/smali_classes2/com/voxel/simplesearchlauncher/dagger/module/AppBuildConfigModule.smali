.class public abstract Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule;
.super Ljava/lang/Object;
.source "AppBuildConfigModule.java"


# direct methods
.method private static appVersionCode()I
    .locals 1

    const v0, 0x146a900

    return v0
.end method

.method public static providesAppVersionCodeForSideScreen()Ljava/lang/Integer;
    .locals 1

    .line 21
    invoke-static {}, Lcom/voxel/simplesearchlauncher/dagger/module/AppBuildConfigModule;->appVersionCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
