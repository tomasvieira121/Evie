.class public Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
.super Ljava/lang/Object;
.source "PopupViewProvider.java"


# instance fields
.field private mPopupView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->mPopupView:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public get()Landroid/view/ViewGroup;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->mPopupView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setPopupView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;->mPopupView:Landroid/view/ViewGroup;

    return-void
.end method
