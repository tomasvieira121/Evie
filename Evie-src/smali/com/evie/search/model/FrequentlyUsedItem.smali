.class public Lcom/evie/search/model/FrequentlyUsedItem;
.super Ljava/lang/Object;
.source "FrequentlyUsedItem.java"


# instance fields
.field private imageUrl:Ljava/lang/String;

.field private intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/evie/search/model/FrequentlyUsedItem;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/evie/search/model/FrequentlyUsedItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/evie/search/model/FrequentlyUsedItem;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/evie/search/model/FrequentlyUsedItem;->imageUrl:Ljava/lang/String;

    return-void
.end method
