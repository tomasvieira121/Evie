.class public Lcom/evie/search/AppAvailabilityProvider$DefaultProvider;
.super Ljava/lang/Object;
.source "AppAvailabilityProvider.java"

# interfaces
.implements Lcom/evie/search/AppAvailabilityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/AppAvailabilityProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isHiddenFromBrowse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHiddenFromSearch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
