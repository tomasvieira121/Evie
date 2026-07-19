.class Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;
.super Ljava/lang/Object;
.source "DeepShortcutConversionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Matcher"
.end annotation


# instance fields
.field mConvertToIntent:Landroid/content/Intent;

.field mMatchExtraKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMatchIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;


# direct methods
.method constructor <init>(Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;Landroid/content/Intent;Ljava/util/List;Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->this$0:Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mMatchIntent:Landroid/content/Intent;

    .line 88
    iput-object p3, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mMatchExtraKeys:Ljava/util/List;

    .line 89
    iput-object p4, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mConvertToIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method matches(Landroid/content/Intent;)Z
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mMatchIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mMatchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 104
    iget-object v2, p0, Lcom/voxel/launcher3/shortcuts/DeepShortcutConversionList$Matcher;->mMatchExtraKeys:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 106
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 108
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
