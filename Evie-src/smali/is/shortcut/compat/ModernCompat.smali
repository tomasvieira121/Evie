.class public final Lis/shortcut/compat/ModernCompat;
.super Ljava/lang/Object;
.source "ModernCompat.java"

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requiresLegacyStoragePermission()Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :not_required

    const/16 v1, 0x21

    if-ge v0, v1, :not_required

    const/4 v0, 0x1

    return v0

    :not_required
    const/4 v0, 0x0

    return v0
.end method
