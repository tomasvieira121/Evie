.class public Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;
.super Ljava/lang/Object;
.source "BadgeAppsInfo.java"


# instance fields
.field private mExtractorApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHandlerApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTrustedHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUnreliableHandlers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 25

    move-object/from16 v0, p0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mExtractorApps:Ljava/util/Set;

    .line 23
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.facebook.katana"

    const-string v3, "com.facebook.orca"

    const-string v4, "com.twitter.android"

    const-string v5, "com.whatsapp"

    const-string v6, "org.telegram.messenger"

    const-string v7, "org.telegram.plus"

    const-string v8, "com.snapchat.android"

    const-string v9, "com.google.android.apps.messaging"

    const-string v10, "com.truecaller"

    const-string v11, "com.viber.voip"

    const-string v12, "net.one97.paytm"

    const-string v13, "com.dropbox.android"

    const-string v14, "com.sec.android.app.shealth"

    const-string v15, "jp.naver.line.android"

    const-string v16, "com.kakao.talk"

    const-string v17, "com.asus.message"

    const-string v18, "com.tencent.mm"

    const-string v19, "com.path"

    const-string v20, "com.verizon.messaging.vzmsgs"

    const-string v21, "com.facebook.pages.app"

    const-string v22, "com.android.dialer"

    const-string v23, "com.cloudmagic.mail"

    const-string v24, "com.linecorp.linelite"

    filled-new-array/range {v2 .. v24}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mHandlerApps:Ljava/util/Set;

    .line 51
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.facebook.orca"

    const-string v3, "me.bluemail.mail"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mTrustedHandlers:Ljava/util/Set;

    .line 57
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "com.whatsapp"

    const-string v3, "com.easilydo.mail"

    const-string v4, "com.google.android.youtube"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mUnreliableHandlers:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addExtractors(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;",
            ">;)V"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;

    .line 66
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mExtractorApps:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/voxel/simplesearchlauncher/notification/extractors/Extractor;->getPackageId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addHandlerPackage(Ljava/lang/String;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mHandlerApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getHandlerPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mHandlerApps:Ljava/util/Set;

    return-object v0
.end method

.method public isHandlerPackage(Ljava/lang/String;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mHandlerApps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isHighAccuracyApp(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mHandlerApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mExtractorApps:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public isTrustedHandler(Ljava/lang/String;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mTrustedHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isUnreliableHandler(Ljava/lang/String;)Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mUnreliableHandlers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public resetExtractors()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/BadgeAppsInfo;->mExtractorApps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method
