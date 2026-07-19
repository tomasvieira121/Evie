.class Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$2;
.super Ljava/lang/Object;
.source "SideScreenDependenciesModule.java"

# interfaces
.implements Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;->providesImagePopupListener()Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule$2;->this$0:Lcom/evie/sidescreen/dagger/SideScreenDependenciesModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopup(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
