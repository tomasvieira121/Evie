.class public final Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/compat/PackageInstallerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageInstallInfo"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public progress:I

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->packageName:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->state:I

    .line 72
    iput p3, p0, Lcom/voxel/launcher3/compat/PackageInstallerCompat$PackageInstallInfo;->progress:I

    return-void
.end method
