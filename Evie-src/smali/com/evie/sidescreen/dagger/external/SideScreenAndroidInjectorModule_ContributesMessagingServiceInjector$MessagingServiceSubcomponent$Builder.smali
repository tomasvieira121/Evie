.class public abstract Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesMessagingServiceInjector$MessagingServiceSubcomponent$Builder;
.super Ldagger/android/AndroidInjector$Builder;
.source "SideScreenAndroidInjectorModule_ContributesMessagingServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/dagger/external/SideScreenAndroidInjectorModule_ContributesMessagingServiceInjector$MessagingServiceSubcomponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldagger/android/AndroidInjector$Builder<",
        "Lcom/evie/sidescreen/firebase/MessagingService;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ldagger/android/AndroidInjector$Builder;-><init>()V

    return-void
.end method
