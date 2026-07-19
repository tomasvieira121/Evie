.class Lcom/voxel/launcher3/BubbleTextView$2;
.super Landroid/content/BroadcastReceiver;
.source "BubbleTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/launcher3/BubbleTextView;

.field final synthetic val$iconCache:Lcom/voxel/launcher3/IconCache;

.field final synthetic val$info:Lcom/voxel/launcher3/ShortcutInfo;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/BubbleTextView;Lcom/voxel/launcher3/ShortcutInfo;Lcom/voxel/launcher3/IconCache;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/voxel/launcher3/BubbleTextView$2;->this$0:Lcom/voxel/launcher3/BubbleTextView;

    iput-object p2, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$info:Lcom/voxel/launcher3/ShortcutInfo;

    iput-object p3, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$iconCache:Lcom/voxel/launcher3/IconCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 191
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$info:Lcom/voxel/launcher3/ShortcutInfo;

    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$iconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ShortcutInfo;->updateIcon(Lcom/voxel/launcher3/IconCache;)V

    .line 192
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$info:Lcom/voxel/launcher3/ShortcutInfo;

    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$iconCache:Lcom/voxel/launcher3/IconCache;

    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/ShortcutInfo;->getIcon(Lcom/voxel/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 193
    invoke-static {p1}, Lcom/voxel/launcher3/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/voxel/launcher3/FastBitmapDrawable;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView$2;->val$info:Lcom/voxel/launcher3/ShortcutInfo;

    iget p2, p2, Lcom/voxel/launcher3/ShortcutInfo;->isDisabled:I

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/voxel/launcher3/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 195
    iget-object p2, p0, Lcom/voxel/launcher3/BubbleTextView$2;->this$0:Lcom/voxel/launcher3/BubbleTextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1, v0, v0}, Lcom/voxel/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 196
    iget-object p1, p0, Lcom/voxel/launcher3/BubbleTextView$2;->this$0:Lcom/voxel/launcher3/BubbleTextView;

    invoke-static {p1}, Lcom/voxel/launcher3/BubbleTextView;->access$100(Lcom/voxel/launcher3/BubbleTextView;)V

    return-void
.end method
