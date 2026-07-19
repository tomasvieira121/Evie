.class public final synthetic Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

.field private final synthetic f$1:I

.field private final synthetic f$2:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iput p2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$1:I

    iput-object p3, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$2:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$0:Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;

    iget v1, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$1:I

    iget-object v2, p0, Lcom/voxel/simplesearchlauncher/popup/-$$Lambda$PopupContainerWithArrow$5iGFVxGZJecrocbG8TgOCqasCcU;->f$2:Lcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;

    invoke-static {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;->lambda$updateShortcuts$3(Lcom/voxel/simplesearchlauncher/popup/PopupContainerWithArrow;ILcom/voxel/simplesearchlauncher/popup/PopupFragment$UnbadgedShortcutInfo;)V

    return-void
.end method
