.class public Lcom/evie/common/iconpack/IconPackFilterHolder;
.super Ljava/lang/Object;
.source "IconPackFilterHolder.java"


# static fields
.field private static instance:Lcom/evie/common/iconpack/IconPackFilterHolder;


# instance fields
.field private mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/evie/common/iconpack/IconPackFilterHolder;
    .locals 2

    const-class v0, Lcom/evie/common/iconpack/IconPackFilterHolder;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/evie/common/iconpack/IconPackFilterHolder;->instance:Lcom/evie/common/iconpack/IconPackFilterHolder;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/evie/common/iconpack/IconPackFilterHolder;

    invoke-direct {v1}, Lcom/evie/common/iconpack/IconPackFilterHolder;-><init>()V

    sput-object v1, Lcom/evie/common/iconpack/IconPackFilterHolder;->instance:Lcom/evie/common/iconpack/IconPackFilterHolder;

    .line 12
    :cond_0
    sget-object v1, Lcom/evie/common/iconpack/IconPackFilterHolder;->instance:Lcom/evie/common/iconpack/IconPackFilterHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getIconPackFilter()Lcom/evie/common/iconpack/IconPackFilter;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/evie/common/iconpack/IconPackFilterHolder;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    return-object v0
.end method

.method public setIconPackFilter(Lcom/evie/common/iconpack/IconPackFilter;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/evie/common/iconpack/IconPackFilterHolder;->mIconPackFilter:Lcom/evie/common/iconpack/IconPackFilter;

    return-void
.end method
