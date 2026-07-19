.class public Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;
.super Ljava/lang/Object;
.source "FocusHelper.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/FocusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PagedFolderKeyEventListener"
.end annotation


# instance fields
.field private final mFolder:Lcom/voxel/launcher3/Folder;


# direct methods
.method public constructor <init>(Lcom/voxel/launcher3/Folder;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/voxel/launcher3/Folder;

    return-void
.end method


# virtual methods
.method public handleNoopKey(ILandroid/view/View;)V
    .locals 1

    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;->mFolder:Lcom/voxel/launcher3/Folder;

    iget-object v0, v0, Lcom/voxel/launcher3/Folder;->mFolderName:Lcom/voxel/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/voxel/launcher3/ExtendedEditText;->requestFocus()Z

    .line 173
    invoke-static {p1, p2}, Lcom/voxel/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v10, p2

    .line 68
    invoke-static/range {p2 .. p2}, Lcom/voxel/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v11

    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    return v11

    .line 78
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    const/4 v13, 0x0

    if-nez v2, :cond_2

    .line 79
    invoke-static {}, Lcom/voxel/launcher3/LauncherAppState;->isDogfoodBuild()Z

    move-result v1

    if-nez v1, :cond_1

    return v13

    .line 80
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Parent of the focused item is not supported."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    .line 88
    invoke-virtual {v14}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/voxel/launcher3/CellLayout;

    .line 89
    invoke-virtual {v15}, Lcom/voxel/launcher3/CellLayout;->getCountX()I

    move-result v16

    .line 90
    invoke-virtual {v15}, Lcom/voxel/launcher3/CellLayout;->getCountY()I

    move-result v17

    .line 92
    invoke-virtual {v14, v1}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 93
    invoke-virtual {v15}, Lcom/voxel/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/voxel/launcher3/FolderPagedView;

    .line 95
    invoke-virtual {v9, v15}, Lcom/voxel/launcher3/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v18

    .line 96
    invoke-virtual {v9}, Lcom/voxel/launcher3/FolderPagedView;->getPageCount()I

    move-result v8

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/voxel/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v19

    .line 99
    invoke-static {v15}, Lcom/voxel/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/voxel/launcher3/CellLayout;)[[I

    move-result-object v5

    move/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v7, v18

    move-object v13, v9

    move/from16 v9, v19

    .line 101
    invoke-static/range {v2 .. v9}, Lcom/voxel/launcher3/util/FocusLogic;->handleKeyEvent(III[[IIIIZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 104
    invoke-virtual {v0, v10, v1}, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    return v11

    :cond_3
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 158
    invoke-virtual {v14, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_0
    add-int/lit8 v2, v18, -0x1

    .line 123
    invoke-static {v13, v2}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 125
    invoke-virtual {v13, v2}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v4, v2, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    add-int/lit8 v2, v18, -0x1

    .line 130
    invoke-static {v13, v2}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 132
    invoke-virtual {v13, v2}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    add-int/lit8 v2, v16, -0x1

    add-int/lit8 v3, v17, -0x1

    .line 133
    invoke-virtual {v4, v2, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :pswitch_2
    add-int/lit8 v4, v18, -0x1

    .line 113
    invoke-static {v13, v4}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;

    iget v3, v3, Lcom/voxel/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 116
    invoke-virtual {v13, v4}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    const/4 v4, -0x5

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 119
    :goto_0
    invoke-virtual {v5}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->invertLayoutHorizontally()Z

    move-result v4

    xor-int/2addr v2, v4

    if-eqz v2, :cond_5

    const/4 v13, 0x0

    goto :goto_1

    :cond_5
    add-int/lit8 v13, v16, -0x1

    .line 117
    :goto_1
    invoke-virtual {v5, v13, v3}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :pswitch_3
    const/4 v2, 0x0

    .line 152
    invoke-virtual {v15, v2, v2}, Lcom/voxel/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    .line 155
    :pswitch_4
    invoke-virtual {v13}, Lcom/voxel/launcher3/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :pswitch_5
    const/4 v2, 0x0

    add-int/lit8 v4, v18, 0x1

    .line 137
    invoke-static {v13, v4}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 139
    invoke-virtual {v13, v4}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    .line 140
    invoke-virtual {v5, v2, v2}, Lcom/voxel/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :pswitch_6
    add-int/lit8 v4, v18, 0x1

    .line 145
    invoke-static {v13, v4}, Lcom/voxel/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/voxel/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 147
    invoke-virtual {v13, v4}, Lcom/voxel/launcher3/FolderPagedView;->snapToPage(I)V

    .line 148
    invoke-static {v5, v1, v2}, Lcom/voxel/launcher3/util/FocusLogic;->getAdjacentChildInNextPage(Lcom/voxel/launcher3/ShortcutAndWidgetContainer;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 162
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 163
    invoke-static {v10, v1}, Lcom/voxel/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_3

    .line 165
    :cond_7
    invoke-virtual {v0, v10, v1}, Lcom/voxel/launcher3/FocusHelper$PagedFolderKeyEventListener;->handleNoopKey(ILandroid/view/View;)V

    :goto_3
    return v11

    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
