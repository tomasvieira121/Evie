.class public Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;
.super Ljava/lang/Object;
.source "DetailsComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/jigsaw/components/content/DetailsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Detail"
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private alignment:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

.field private attribution:Ljava/lang/String;

.field private lines:Ljava/lang/Integer;

.field private options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private style:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->content:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->style:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    const/4 v0, 0x1

    .line 101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->lines:Ljava/lang/Integer;

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->options:Ljava/util/Map;

    .line 117
    sget-object v0, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->left:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    iput-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->alignment:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-void
.end method

.method static synthetic access$500(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->style:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->alignment:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-object p0
.end method

.method static synthetic access$800(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->attribution:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;)Ljava/lang/Integer;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->lines:Ljava/lang/Integer;

    return-object p0
.end method


# virtual methods
.method public resolveText(Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;)Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {p1, v0}, Lcom/evie/jigsaw/services/actions/ActionPreferenceStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 130
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->text:Ljava/lang/String;

    return-object p1
.end method

.method public setAlignment(Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->alignment:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    return-object p0
.end method

.method public setLines(Ljava/lang/Integer;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->lines:Ljava/lang/Integer;

    return-object p0
.end method

.method public setStyle(Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->style:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->text:Ljava/lang/String;

    return-object p0
.end method
