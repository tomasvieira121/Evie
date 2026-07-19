.class public final Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerJigsawComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private jigsawModule:Lcom/evie/jigsaw/dagger/JigsawModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$1;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/evie/jigsaw/dagger/JigsawComponent;
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;->jigsawModule:Lcom/evie/jigsaw/dagger/JigsawModule;

    const-class v1, Lcom/evie/jigsaw/dagger/JigsawModule;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 237
    new-instance v0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;

    iget-object v1, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;->jigsawModule:Lcom/evie/jigsaw/dagger/JigsawModule;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent;-><init>(Lcom/evie/jigsaw/dagger/JigsawModule;Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$1;)V

    return-object v0
.end method

.method public jigsawModule(Lcom/evie/jigsaw/dagger/JigsawModule;)Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;
    .locals 0

    .line 231
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/dagger/JigsawModule;

    iput-object p1, p0, Lcom/evie/jigsaw/dagger/DaggerJigsawComponent$Builder;->jigsawModule:Lcom/evie/jigsaw/dagger/JigsawModule;

    return-object p0
.end method
