.class public abstract Lcom/voxel/launcher3/compat/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# static fields
.field private static sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/voxel/launcher3/compat/UserManagerCompat;
    .locals 2

    .line 34
    sget-object v0, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    if-nez v1, :cond_5

    .line 36
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycMR1OrAbove()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/voxel/launcher3/compat/UserManagerCompatVNMr1;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/UserManagerCompatVNMr1;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lcom/voxel/launcher3/Utilities;->isNycOrAbove()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Lcom/voxel/launcher3/compat/UserManagerCompatVN;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/UserManagerCompatVN;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 40
    :cond_1
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v1, :cond_2

    .line 41
    new-instance v1, Lcom/voxel/launcher3/compat/UserManagerCompatVM;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/UserManagerCompatVM;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 42
    :cond_2
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_LOLLIPOP:Z

    if-eqz v1, :cond_3

    .line 43
    new-instance v1, Lcom/voxel/launcher3/compat/UserManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/UserManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 44
    :cond_3
    sget-boolean v1, Lcom/voxel/launcher3/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v1, :cond_4

    .line 45
    new-instance v1, Lcom/voxel/launcher3/compat/UserManagerCompatV17;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/voxel/launcher3/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    goto :goto_0

    .line 47
    :cond_4
    new-instance p0, Lcom/voxel/launcher3/compat/UserManagerCompatV16;

    invoke-direct {p0}, Lcom/voxel/launcher3/compat/UserManagerCompatV16;-><init>()V

    sput-object p0, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    .line 50
    :cond_5
    :goto_0
    sget-object p0, Lcom/voxel/launcher3/compat/UserManagerCompat;->sInstance:Lcom/voxel/launcher3/compat/UserManagerCompat;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public abstract getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/voxel/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/voxel/launcher3/compat/UserHandleCompat;)Ljava/lang/CharSequence;
.end method

.method public abstract getSerialNumberForUser(Lcom/voxel/launcher3/compat/UserHandleCompat;)J
.end method

.method public abstract getUserForSerialNumber(J)Lcom/voxel/launcher3/compat/UserHandleCompat;
.end method

.method public abstract getUserProfiles()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/voxel/launcher3/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isQuietModeEnabled(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
.end method

.method public abstract isUserUnlocked(Lcom/voxel/launcher3/compat/UserHandleCompat;)Z
.end method
