.class public abstract Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesTokenServiceInjector$TokenServiceSubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "SideScreenAndroidInjectorModule_ContributesTokenServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesTokenServiceInjector$TokenServiceSubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/evie/sidescreen/firebase/TokenService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    return-void
.end method
