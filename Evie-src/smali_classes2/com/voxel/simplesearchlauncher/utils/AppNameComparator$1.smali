.class Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;
.super Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;
.source "AppNameComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator<",
        "Lcom/voxel/launcher3/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;


# direct methods
.method constructor <init>(Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;Landroid/content/Context;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;

    invoke-direct {p0, p2}, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;->this$0:Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;

    iget-object v1, p1, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/voxel/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 45
    instance-of v1, p1, Lcom/voxel/launcher3/AppInfo;

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/voxel/launcher3/AppInfo;

    if-eqz v1, :cond_0

    .line 46
    move-object v0, p1

    check-cast v0, Lcom/voxel/launcher3/AppInfo;

    .line 47
    move-object v1, p2

    check-cast v1, Lcom/voxel/launcher3/AppInfo;

    .line 49
    iget-object v0, v0, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v1, v1, Lcom/voxel/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/utils/AbstractUserComparator;->compare(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 39
    check-cast p1, Lcom/voxel/launcher3/ItemInfo;

    check-cast p2, Lcom/voxel/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/voxel/simplesearchlauncher/utils/AppNameComparator$1;->compare(Lcom/voxel/launcher3/ItemInfo;Lcom/voxel/launcher3/ItemInfo;)I

    move-result p1

    return p1
.end method
