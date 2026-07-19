.class public final Lcom/evie/search/dagger/DaggerSearchComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerSearchComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/search/dagger/DaggerSearchComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private searchModule:Lcom/evie/search/dagger/SearchModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/search/dagger/DaggerSearchComponent$1;)V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/search/dagger/SearchComponent;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;->searchModule:Lcom/evie/search/dagger/SearchModule;

    const-class v1, Lcom/evie/search/dagger/SearchModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 175
    new-instance v0, Lcom/evie/search/dagger/DaggerSearchComponent;

    iget-object v1, p0, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;->searchModule:Lcom/evie/search/dagger/SearchModule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/search/dagger/DaggerSearchComponent;-><init>(Lcom/evie/search/dagger/SearchModule;Lcom/evie/search/dagger/DaggerSearchComponent$1;)V

    return-object v0
.end method

.method public searchModule(Lcom/evie/search/dagger/SearchModule;)Lcom/evie/search/dagger/DaggerSearchComponent$Builder;
    .locals 0

    .line 169
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/search/dagger/SearchModule;

    iput-object p1, p0, Lcom/evie/search/dagger/DaggerSearchComponent$Builder;->searchModule:Lcom/evie/search/dagger/SearchModule;

    return-object p0
.end method
