.class public Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;
.super Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;
.source "EasilyDoWidgetExtractor.java"


# instance fields
.field private mCountPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/notification/extractors/WidgetExtractor;-><init>(Landroid/content/Context;)V

    const-string p1, ".*\\((\\d+)\\).*"

    .line 14
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;->mCountPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public getConfigKey()Ljava/lang/String;
    .locals 4

    const-string v0, "extractor.%s"

    const/4 v1, 0x1

    .line 48
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getFieldName()Ljava/lang/String;
    .locals 1

    const-string v0, "email_widget_title"

    return-object v0
.end method

.method public getPackageId()Ljava/lang/String;
    .locals 1

    const-string v0, "com.easilydo.mail"

    return-object v0
.end method

.method public getWidgetComponent()Landroid/content/ComponentName;
    .locals 3

    .line 22
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.easilydo.mail.widget.EmailAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected parseCount(Ljava/lang/CharSequence;)I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/notification/extractors/EasilyDoWidgetExtractor;->mCountPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
