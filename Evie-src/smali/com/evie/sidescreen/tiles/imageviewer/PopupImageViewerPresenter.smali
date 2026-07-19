.class public Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;
.super Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;
.source "PopupImageViewerPresenter.java"

# interfaces
.implements Lcom/evie/sidescreen/StackLayer;


# annotations
.annotation build Lcom/google/auto/factory/AutoFactory;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter<",
        "Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;",
        ">;",
        "Lcom/evie/sidescreen/StackLayer;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Landroid/widget/ImageView;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V
    .locals 11
    .param p5    # Lcom/evie/sidescreen/LayerStack;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p6    # Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p7    # Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p8    # Lcom/evie/sidescreen/ActivityStarter;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param
    .param p9    # Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;
        .annotation build Lcom/google/auto/factory/Provided;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 33
    invoke-direct/range {v0 .. v10}, Lcom/evie/sidescreen/tiles/imageviewer/PopupPresenter;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/schema/NewsArticle;Lorg/schema/MediaObject;Landroid/view/View;Lcom/evie/sidescreen/LayerStack;Lcom/evie/sidescreen/tiles/videos/PopupViewProvider;Lcom/evie/sidescreen/tiles/TopLevelTilePresenterFactory;Lcom/evie/sidescreen/ActivityStarter;Lcom/evie/sidescreen/SideScreenDependencies$PopupListener;)V

    return-void
.end method


# virtual methods
.method createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;
    .locals 1

    .line 48
    new-instance v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    invoke-direct {v0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;-><init>(Landroid/view/View;Landroid/view/ViewGroup;)V

    return-object v0
.end method

.method bridge synthetic createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerPresenter;->createNewViewHolderInstance(Landroid/view/View;Landroid/view/ViewGroup;)Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public getPopupType()I
    .locals 1

    .line 53
    sget v0, Lcom/evie/sidescreen/tiles/imageviewer/PopupImageViewerViewHolder;->ID:I

    return v0
.end method
