.class public abstract Lcom/voxel/launcher3/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getFirstInstallTime()J
.end method

.method public abstract getIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getUser()Lcom/voxel/launcher3/compat/UserHandleCompat;
.end method
