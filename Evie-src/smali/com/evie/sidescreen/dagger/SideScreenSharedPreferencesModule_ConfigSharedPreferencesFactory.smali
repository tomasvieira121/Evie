.class public final Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;
.super Ljava/lang/Object;
.source "SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;

    invoke-direct {v0, p0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static proxyConfigSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule;->configSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 34
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/content/SharedPreferences;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;->proxyConfigSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/evie/sidescreen/dagger/SideScreenSharedPreferencesModule_ConfigSharedPreferencesFactory;->get()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
