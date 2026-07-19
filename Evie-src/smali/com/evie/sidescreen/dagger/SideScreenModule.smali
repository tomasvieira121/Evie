.class public Lcom/evie/sidescreen/dagger/SideScreenModule;
.super Ljava/lang/Object;
.source "SideScreenModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesPopupView(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
    .locals 1

    .line 20
    new-instance v0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;

    invoke-virtual {p1}, Lcom/evie/sidescreen/SideScreenView;->getPopupView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;-><init>(Landroid/view/ViewGroup;)V

    return-object v0
.end method
