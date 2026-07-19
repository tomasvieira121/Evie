.class public Lcom/evie/search/local/ContactManager;
.super Ljava/lang/Object;
.source "ContactManager.java"


# static fields
.field private static instance:Lcom/evie/search/local/ContactManager;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/evie/search/local/LocalAppsManager;->getInstance(Landroid/content/Context;)Lcom/evie/search/local/LocalAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/ContactManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private buildInitialsUri(Ljava/lang/String;Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;I)Ljava/lang/String;
    .locals 3

    .line 280
    invoke-static {p1}, Lcom/evie/search/local/ContactManager;->getInitials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/evie/search/R$array;->contact_colors:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int/2addr p1, v2

    const/high16 v2, -0x1000000

    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 285
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 286
    invoke-interface {p2, v0, p1}, Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;->buildRound(Ljava/lang/String;I)Lcom/evie/search/drawable/TextDrawable;

    move-result-object p1

    .line 289
    invoke-static {p1, p3}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 292
    invoke-static {p1}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getUrlFromBitmap(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getClearPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 701
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 702
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 703
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v3, 0x0

    .line 705
    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 706
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ne v2, p2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 712
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getFirstLetter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 311
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 312
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 313
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getHeaderImageUrl(I)Ljava/lang/String;
    .locals 9

    .line 794
    iget-object v0, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/evie/search/R$array;->contact_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    move-wide v5, v2

    const/4 v2, 0x0

    .line 796
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/high16 v3, -0x1000000

    .line 797
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 798
    invoke-static {p1, v3}, Lcom/voxel/simplesearchlauncher/utils/ColorUtil;->getColorDifference(II)D

    move-result-wide v7

    if-ltz v4, :cond_0

    cmpg-double v3, v7, v5

    if-gez v3, :cond_1

    :cond_0
    move v4, v2

    move-wide v5, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 806
    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 809
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v0, 0xf0

    if-gt p1, v0, :cond_3

    const-string p1, "hdpi"

    goto :goto_1

    :cond_3
    const-string p1, "xhdpi"

    .line 815
    :goto_1
    iget-object v0, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/evie/search/R$array;->contact_headers:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-ltz v4, :cond_5

    .line 816
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-lt v4, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    .line 817
    :cond_5
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 818
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1
.end method

.method private getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 778
    :try_start_0
    invoke-virtual {p1}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-virtual {p1}, Lcom/evie/search/model/AppData;->getAppActivity()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 780
    invoke-virtual {p1}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 777
    invoke-static {v1, v2, p1}, Lcom/evie/common/HybridNetworkFetcherCommon;->getMagicResourceUri(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p1

    .line 781
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "Error getting app version code."

    .line 783
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private static getInitials(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "\\s+"

    .line 296
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    .line 301
    invoke-static {v3}, Lcom/evie/search/local/ContactManager;->getFirstLetter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 302
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/evie/search/local/ContactManager;
    .locals 1

    .line 54
    sget-object v0, Lcom/evie/search/local/ContactManager;->instance:Lcom/evie/search/local/ContactManager;

    if-nez v0, :cond_0

    .line 55
    new-instance v0, Lcom/evie/search/local/ContactManager;

    invoke-direct {v0, p0}, Lcom/evie/search/local/ContactManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/evie/search/local/ContactManager;->instance:Lcom/evie/search/local/ContactManager;

    .line 58
    :cond_0
    sget-object p0, Lcom/evie/search/local/ContactManager;->instance:Lcom/evie/search/local/ContactManager;

    return-object p0
.end method

.method private getPhoneActionLabel(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 716
    invoke-direct {p0, p2, v0, p3}, Lcom/evie/search/local/ContactManager;->getPhoneNumberTypeString(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 717
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const v1, 0x2e7a5e

    const/4 v2, 0x1

    if-eq p3, v1, :cond_1

    const v1, 0x36452d

    if-eq p3, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "text"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const-string p3, "call"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    .line 729
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Method getPhoneActionLabel should be invoked only for CALL or TEXT actions."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    if-nez p2, :cond_3

    .line 724
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/evie/search/R$string;->contact_action_text:I

    .line 725
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->contact_action_text_type:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 726
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_1
    if-nez p2, :cond_4

    .line 719
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p2, Lcom/evie/search/R$string;->contact_action_call:I

    .line 720
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->contact_action_call_type:I

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 721
    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_3
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getPhoneNumberTypeString(IZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x11

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    goto :goto_0

    .line 750
    :pswitch_0
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_fax_home:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 747
    :pswitch_1
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_fax_work:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 744
    :pswitch_2
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_work:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 741
    :pswitch_3
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_mobile:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 738
    :pswitch_4
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_home:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 756
    :pswitch_5
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 753
    :cond_0
    iget-object p1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget p3, Lcom/evie/search/R$string;->phone_number_work_mobile:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz v0, :cond_3

    .line 764
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 767
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_1

    .line 769
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 772
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_2
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateContactAppLinks(Lcom/evie/search/model/ContactData;)V
    .locals 21

    move-object/from16 v1, p0

    const/4 v0, 0x7

    .line 404
    :try_start_0
    new-array v0, v0, [Lcom/evie/search/model/ActionData;

    .line 405
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "content://com.android.contacts/data/"

    .line 408
    iget-object v5, v1, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 409
    invoke-virtual/range {p1 .. p1}, Lcom/evie/search/model/ContactData;->getLink()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "_id"

    const-string v8, "lookup"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "in_visible_group=?"

    const-string v9, "1"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 408
    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_25

    .line 419
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_25

    const-string v6, "lookup"

    .line 420
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 421
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 426
    iget-object v7, v1, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const-string v10, "lookup=?"

    const/4 v13, 0x1

    new-array v11, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v11, v14

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :cond_0
    :goto_0
    if-eqz v5, :cond_20

    .line 433
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_20

    const-string v6, "_id"

    .line 434
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mimetype"

    .line 435
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    .line 436
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "data4"

    .line 437
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 439
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    const-string v10, "/phone_v2"

    .line 443
    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 445
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v6, "data2"

    .line 449
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "data3"

    .line 450
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 453
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-lt v9, v10, :cond_3

    const-string v9, "US"

    .line 454
    invoke-static {v8, v9}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 457
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-direct {v1, v8, v10}, Lcom/evie/search/local/ContactManager;->getClearPhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 458
    invoke-interface {v3, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    goto/16 :goto_0

    .line 461
    :cond_4
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v6, :cond_5

    .line 466
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    .line 469
    :goto_1
    invoke-direct {v1, v6, v13, v7}, Lcom/evie/search/local/ContactManager;->getPhoneNumberTypeString(IZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 470
    iget-object v10, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v10}, Lcom/evie/search/local/LocalAppsManager;->getDefaultPhoneApp()Lcom/evie/search/model/AppData;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 472
    new-instance v11, Lcom/evie/search/model/AppLink;

    .line 473
    invoke-virtual {v10}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 474
    invoke-virtual {v10}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "tel:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v9, :cond_6

    move-object/from16 v19, v9

    goto :goto_2

    .line 476
    :cond_6
    invoke-virtual {v10}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v19, v12

    :goto_2
    move-object v15, v11

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    aget-object v12, v0, v14

    if-nez v12, :cond_7

    .line 481
    new-instance v12, Lcom/evie/search/model/ActionData;

    const-string v15, "call"

    .line 482
    invoke-direct {v1, v15, v6, v7}, Lcom/evie/search/local/ContactManager;->getPhoneActionLabel(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 483
    invoke-virtual {v11}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v2

    .line 484
    invoke-direct {v1, v10}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v10

    const-string v13, "CALL"

    invoke-direct {v12, v15, v2, v10, v13}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v12, v11}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    aput-object v12, v0, v14

    goto :goto_3

    .line 489
    :cond_7
    invoke-virtual {v12, v11}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 490
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/evie/search/R$string;->contact_action_call:I

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/evie/search/model/ActionData;->setLabel(Ljava/lang/String;)V

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " numbers"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    .line 494
    :cond_8
    :goto_3
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v2}, Lcom/evie/search/local/LocalAppsManager;->getDefaultTextApp()Lcom/evie/search/model/AppData;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 496
    new-instance v10, Lcom/evie/search/model/AppLink;

    .line 497
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 498
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sms:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    if-eqz v9, :cond_9

    move-object/from16 v19, v9

    goto :goto_4

    .line 500
    :cond_9
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v9

    :goto_4
    move-object v15, v10

    move-object/from16 v20, v8

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    .line 503
    aget-object v9, v0, v8

    if-nez v9, :cond_a

    .line 505
    new-instance v8, Lcom/evie/search/model/ActionData;

    const-string v9, "text"

    .line 506
    invoke-direct {v1, v9, v6, v7}, Lcom/evie/search/local/ContactManager;->getPhoneActionLabel(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 507
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v7

    .line 508
    invoke-direct {v1, v2}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "TEXT"

    invoke-direct {v8, v6, v7, v2, v9}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v8, v10}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    const/4 v2, 0x1

    aput-object v8, v0, v2

    goto :goto_5

    .line 513
    :cond_a
    invoke-virtual {v9, v10}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 514
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/evie/search/R$string;->contact_action_text:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/evie/search/model/ActionData;->setLabel(Ljava/lang/String;)V

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " numbers"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    :cond_b
    :goto_5
    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_c
    const-string v2, "/email_v2"

    .line 518
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 519
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "@"

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 523
    :cond_d
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 524
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "email:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 525
    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x1

    .line 528
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    iget-object v6, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v6}, Lcom/evie/search/local/LocalAppsManager;->getDefaultEmailApp()Lcom/evie/search/model/AppData;

    move-result-object v6

    if-eqz v6, :cond_10

    .line 533
    new-instance v7, Lcom/evie/search/model/AppLink;

    .line 534
    invoke-virtual {v6}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 535
    invoke-virtual {v6}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mailto:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 537
    invoke-virtual {v6}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v15, v7

    move-object/from16 v20, v2

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 540
    aget-object v8, v0, v2

    if-nez v8, :cond_f

    .line 542
    new-instance v8, Lcom/evie/search/model/ActionData;

    iget-object v9, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v10, Lcom/evie/search/R$string;->contact_action_email:I

    .line 543
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 544
    invoke-virtual {v7}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v10

    .line 545
    invoke-direct {v1, v6}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v6

    const-string v11, "EMAIL"

    invoke-direct {v8, v9, v10, v6, v11}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    aput-object v8, v0, v2

    goto :goto_6

    .line 550
    :cond_f
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " emails"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    :cond_10
    :goto_6
    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_12
    const-string v2, "/vnd.googleplus.profile.comm"

    .line 554
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    if-eqz v9, :cond_16

    const-string v2, "10"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hangout:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 556
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x1

    .line 559
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v2}, Lcom/evie/search/local/LocalAppsManager;->getGoogleHangoutApp()Lcom/evie/search/model/AppData;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 564
    iget-object v7, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/evie/search/R$string;->contact_entity_chat:I

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/evie/search/model/ContactData;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v14

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 565
    new-instance v7, Lcom/evie/search/model/AppLink;

    .line 566
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 567
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 569
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 572
    aget-object v8, v0, v6

    if-nez v8, :cond_14

    .line 574
    new-instance v8, Lcom/evie/search/model/ActionData;

    .line 575
    invoke-virtual {v7}, Lcom/evie/search/model/AppLink;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 577
    invoke-direct {v1, v2}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "HANGOUT"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v2, v10}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    aput-object v8, v0, v6

    goto :goto_7

    .line 582
    :cond_14
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " accounts"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    :cond_15
    :goto_7
    const/4 v10, 0x1

    goto/16 :goto_9

    :cond_16
    const-string v2, "/vnd.com.whatsapp.profile"

    .line 586
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 587
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 591
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "whatsapp:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_18
    const/4 v7, 0x1

    .line 595
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v3, v2, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v2}, Lcom/evie/search/local/LocalAppsManager;->getWhatsAppApp()Lcom/evie/search/model/AppData;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 600
    iget-object v7, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/evie/search/R$string;->contact_entity_message:I

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/evie/search/model/ContactData;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v10, v14

    invoke-virtual {v7, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 601
    new-instance v7, Lcom/evie/search/model/AppLink;

    .line 602
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 603
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 605
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x4

    .line 608
    aget-object v8, v0, v6

    if-nez v8, :cond_19

    .line 610
    new-instance v8, Lcom/evie/search/model/ActionData;

    .line 611
    invoke-virtual {v7}, Lcom/evie/search/model/AppLink;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 613
    invoke-direct {v1, v2}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v2

    const-string v10, "WHATSAPP"

    const/4 v11, 0x0

    invoke-direct {v8, v9, v11, v2, v10}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    aput-object v8, v0, v6

    goto/16 :goto_8

    .line 618
    :cond_19
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " accounts"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1a
    const-string v2, "com.skype.android.chat.action"

    .line 622
    invoke-virtual {v7, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 623
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 627
    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skype:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 628
    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v13, 0x1

    goto/16 :goto_0

    :cond_1c
    const/4 v7, 0x1

    .line 631
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v3, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v2}, Lcom/evie/search/local/LocalAppsManager;->getSkypeApp()Lcom/evie/search/model/AppData;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 636
    iget-object v7, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/evie/search/R$string;->contact_entity_skype:I

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v8, v11, v14

    invoke-virtual {v7, v9, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 637
    new-instance v7, Lcom/evie/search/model/AppLink;

    .line 638
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v16

    .line 639
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v17

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 641
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v19

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x5

    .line 644
    aget-object v8, v0, v6

    if-nez v8, :cond_1d

    .line 646
    new-instance v8, Lcom/evie/search/model/ActionData;

    .line 647
    invoke-virtual {v7}, Lcom/evie/search/model/AppLink;->getLabel()Ljava/lang/String;

    move-result-object v9

    .line 649
    invoke-direct {v1, v2}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v2

    const-string v11, "SKYPE"

    const/4 v12, 0x0

    invoke-direct {v8, v9, v12, v2, v11}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    aput-object v8, v0, v6

    goto :goto_9

    .line 654
    :cond_1d
    invoke-virtual {v8, v7}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " accounts"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/evie/search/model/ActionData;->setSubtext(Ljava/lang/String;)V

    goto :goto_9

    :cond_1e
    const/4 v10, 0x1

    goto :goto_9

    :cond_1f
    :goto_8
    const/4 v10, 0x1

    :goto_9
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 661
    :cond_20
    iget-object v2, v1, Lcom/evie/search/local/ContactManager;->mLocalAppsManager:Lcom/evie/search/local/LocalAppsManager;

    invoke-virtual {v2}, Lcom/evie/search/local/LocalAppsManager;->getDefaultContactsApp()Lcom/evie/search/model/AppData;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 663
    iget-object v3, v1, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$string;->contact_entity_open_in_contacts:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 664
    new-instance v4, Lcom/evie/search/model/AppLink;

    .line 665
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getName()Ljava/lang/String;

    move-result-object v7

    .line 666
    invoke-virtual {v2}, Lcom/evie/search/model/AppData;->getAppPackage()Ljava/lang/String;

    move-result-object v8

    .line 667
    invoke-virtual/range {p1 .. p1}, Lcom/evie/search/model/ContactData;->getLink()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x0

    move-object v6, v4

    move-object v10, v3

    invoke-direct/range {v6 .. v11}, Lcom/evie/search/model/AppLink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    new-instance v6, Lcom/evie/search/model/ActionData;

    .line 673
    invoke-direct {v1, v2}, Lcom/evie/search/local/ContactManager;->getIconUrl(Lcom/evie/search/model/AppData;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "OPEN_CONTACT"

    const/4 v11, 0x0

    invoke-direct {v6, v3, v11, v2, v7}, Lcom/evie/search/model/ActionData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-virtual {v6, v4}, Lcom/evie/search/model/ActionData;->addLink(Lcom/evie/search/model/AppLink;)V

    const/4 v2, 0x6

    aput-object v6, v0, v2

    .line 679
    :cond_21
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    array-length v3, v0

    :goto_a
    if-ge v14, v3, :cond_23

    aget-object v4, v0, v14

    if-eqz v4, :cond_22

    .line 682
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_23
    move-object/from16 v0, p1

    .line 685
    invoke-virtual {v0, v2}, Lcom/evie/search/model/ContactData;->setActions(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_24

    .line 691
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_24
    return-void

    :catchall_0
    move-exception v0

    goto :goto_b

    :cond_25
    if-eqz v5, :cond_26

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_26
    return-void

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    move-object v5, v11

    :goto_b
    if-eqz v5, :cond_27

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 693
    :cond_27
    throw v0

    return-void
.end method

.method private updateContactNameAndImage(Lcom/evie/search/model/ContactData;)V
    .locals 7

    const/4 v0, 0x0

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 334
    invoke-virtual {p1}, Lcom/evie/search/model/ContactData;->getLink()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "display_name"

    const-string v4, "photo_thumb_uri"

    const-string v5, "photo_uri"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "in_visible_group=?"

    const-string v5, "1"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 333
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_3

    .line 344
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "display_name"

    .line 345
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "photo_thumb_uri"

    .line 346
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "photo_uri"

    .line 347
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 349
    invoke-virtual {p1, v2}, Lcom/evie/search/model/ContactData;->setName(Ljava/lang/String;)V

    .line 352
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 354
    invoke-virtual {p1, v3}, Lcom/evie/search/model/ContactData;->setOverlayUri(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1, v3}, Lcom/evie/search/model/ContactData;->setShortcutUri(Ljava/lang/String;)V

    move-object v0, v3

    .line 358
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    invoke-virtual {p1, v4}, Lcom/evie/search/model/ContactData;->setOverlayUri(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 362
    invoke-virtual {p1, v4}, Lcom/evie/search/model/ContactData;->setShortcutUri(Ljava/lang/String;)V

    move-object v0, v4

    :cond_1
    if-nez v0, :cond_2

    .line 369
    invoke-static {}, Lcom/evie/search/drawable/TextDrawable;->builder()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 370
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$dimen;->contact_circle_border_width:I

    .line 371
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->withBorder(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$dimen;->contact_overlay_initials_size:I

    .line 372
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 373
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->bold()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 374
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$dimen;->media_overlay_dimension:I

    .line 375
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 367
    invoke-direct {p0, v2, v0, v3}, Lcom/evie/search/local/ContactManager;->buildInitialsUri(Ljava/lang/String;Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/search/model/ContactData;->setOverlayUri(Ljava/lang/String;)V

    .line 378
    invoke-static {}, Lcom/evie/search/drawable/TextDrawable;->builder()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$dimen;->contact_shortcut_initials_size:I

    .line 380
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->bold()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 382
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/evie/search/R$dimen;->shortcut_icon_dimension:I

    .line 383
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 376
    invoke-direct {p0, v2, v0, v3}, Lcom/evie/search/local/ContactManager;->buildInitialsUri(Ljava/lang/String;Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;I)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p1, v0}, Lcom/evie/search/model/ContactData;->setShortcutUri(Ljava/lang/String;)V

    .line 387
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getBitmap(Landroid/net/Uri;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/voxel/simplesearchlauncher/utils/BitmapUtil;->getTint(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 388
    invoke-direct {p0, v0}, Lcom/evie/search/local/ContactManager;->getHeaderImageUrl(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/evie/search/model/ContactData;->setHeaderUri(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 392
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_5
    throw p1
.end method


# virtual methods
.method buildContactFromCursor(Landroid/database/Cursor;)Lcom/evie/search/model/LocalSearchItem;
    .locals 10

    const-string v0, "_id"

    .line 126
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "lookup"

    .line 127
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "display_name"

    .line 128
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 130
    new-instance p1, Landroid/net/Uri$Builder;

    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "contact"

    .line 131
    invoke-virtual {p1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 135
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "name"

    .line 136
    invoke-static {v8, v6, p1}, Lcom/evie/search/local/LocalSearchUtil;->addKeywords(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0, v2}, Lcom/evie/search/local/ContactManager;->getNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string p1, "nickname"

    .line 140
    invoke-static {v8, v7, p1}, Lcom/evie/search/local/LocalSearchUtil;->addKeywords(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_0
    new-instance p1, Lcom/evie/search/model/LocalSearchItem;

    const-string v9, "CONTACT"

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/evie/search/model/LocalSearchItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object p1
.end method

.method public contactRecentlyUsed(Lcom/evie/search/model/LocalSearchItem;)Z
    .locals 9

    .line 203
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 206
    :try_start_0
    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 207
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string p1, "last_time_contacted"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "in_visible_group=?"

    const-string p1, "1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 206
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "last_time_contacted"

    .line 214
    invoke-interface {v2, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_0

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v7, 0x757b12c00L

    sub-long/2addr v5, v7

    cmp-long p1, v5, v3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 221
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string v3, "Error retrieving contact data: %s"

    .line 218
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v3, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 221
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :goto_2
    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 223
    :cond_4
    throw p1
.end method

.method getAllContactsCursor()Landroid/database/Cursor;
    .locals 6

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id"

    const-string v3, "lookup"

    const-string v4, "display_name"

    const-string v5, "last_time_contacted"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "in_visible_group=?"

    const-string v4, "1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Ltimber/log/Timber;->e(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getContactData(Ljava/lang/String;)Lcom/evie/search/model/ContactData;
    .locals 1

    .line 320
    new-instance v0, Lcom/evie/search/model/ContactData;

    invoke-direct {v0, p1}, Lcom/evie/search/model/ContactData;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-direct {p0, v0}, Lcom/evie/search/local/ContactManager;->updateContactNameAndImage(Lcom/evie/search/model/ContactData;)V

    .line 322
    invoke-direct {p0, v0}, Lcom/evie/search/local/ContactManager;->updateContactAppLinks(Lcom/evie/search/model/ContactData;)V

    return-object v0
.end method

.method getContactLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 103
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_id"

    const-string v3, "lookup"

    filled-new-array {p1, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 102
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 110
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0, p1}, Lcom/evie/search/local/ContactManager;->getLinkFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 118
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-object p1, v0

    :catch_1
    :try_start_2
    const-string v1, "Error looking up contact by lookupKey."

    const/4 v2, 0x0

    .line 115
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 118
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 120
    :cond_3
    throw p1
.end method

.method public getImageUrl(Lcom/evie/search/model/LocalSearchItem;)Ljava/lang/String;
    .locals 9

    .line 230
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONTACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch; expected contact, found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    .line 235
    :cond_0
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 239
    :try_start_0
    iget-object v3, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 240
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v0, "photo_thumb_uri"

    const-string v5, "photo_uri"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "in_visible_group=?"

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 239
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 249
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "photo_thumb_uri"

    .line 252
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-eqz v2, :cond_1

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :try_start_1
    const-string v0, "photo_uri"

    .line 257
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :cond_4
    if-eqz v2, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "Error retrieving contact imageUrl: %s"

    const/4 v4, 0x1

    .line 263
    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_5

    .line 266
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_5
    invoke-static {}, Lcom/evie/search/drawable/TextDrawable;->builder()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 271
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;->beginConfig()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/evie/search/R$dimen;->contact_shortcut_initials_size:I

    .line 272
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->fontSize(I)Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 273
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->bold()Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Lcom/evie/search/drawable/TextDrawable$IConfigBuilder;->endConfig()Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Lcom/evie/search/model/LocalSearchItem;->getLabel()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/evie/search/R$dimen;->search_item_image_dimension:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/evie/search/local/ContactManager;->buildInitialsUri(Ljava/lang/String;Lcom/evie/search/drawable/TextDrawable$IShapeBuilder;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :goto_1
    if-eqz v2, :cond_6

    .line 266
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_6
    throw p1
.end method

.method getLinkFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5

    const-string v0, "_id"

    .line 90
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "lookup"

    .line 91
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 92
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "contact"

    .line 93
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 151
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "display_name"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "in_visible_group=?"

    const-string p1, "1"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 150
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 157
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "display_name"

    .line 158
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 161
    :goto_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error retrieving name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 164
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 166
    :cond_3
    throw v0
.end method

.method getNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 181
    :try_start_0
    iget-object v2, p0, Lcom/evie/search/local/ContactManager;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "data1"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "lookup=? AND mimetype=?"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v0

    const/4 p1, 0x1

    const-string v7, "vnd.android.cursor.item/nickname"

    aput-object v7, v6, p1

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 188
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "data1"

    .line 189
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 195
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v1

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p1, v1

    .line 192
    :goto_0
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error retrieving nickname: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 195
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catchall_1
    move-exception v0

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_3
    throw v0
.end method
