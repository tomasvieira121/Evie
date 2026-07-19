.class public Lcom/evie/common/dragndrop/ItemInfoCommon;
.super Ljava/lang/Object;
.source "ItemInfoCommon.java"


# instance fields
.field public iconBitmap:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field public itemInfoType:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/common/dragndrop/ItemInfoCommon;->title:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/evie/common/dragndrop/ItemInfoCommon;->intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/evie/common/dragndrop/ItemInfoCommon;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/evie/common/dragndrop/ItemInfoCommon;->itemInfoType:Ljava/lang/String;

    return-void
.end method
