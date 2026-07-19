.class final enum Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;
.super Ljava/lang/Enum;
.source "TopicsListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/personalize/TopicsListPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

.field public static final enum TOPIC_CATEGORY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

.field public static final enum TOPIC_ENTITY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

.field public static final enum TOPIC_PUBLISHER:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;


# instance fields
.field mKlazz:Ljava/lang/Class;

.field mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 50
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    const-string v1, "TOPIC_CATEGORY"

    const-class v2, Lorg/schema/evie/topics/TopicMappedCategory;

    sget v3, Lcom/evie/sidescreen/R$string;->ss_topics_section_category:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_CATEGORY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    .line 51
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    const-string v1, "TOPIC_PUBLISHER"

    const-class v2, Lorg/schema/evie/topics/TopicPublisher;

    sget v3, Lcom/evie/sidescreen/R$string;->ss_topics_section_publisher:I

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_PUBLISHER:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    .line 52
    new-instance v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    const-string v1, "TOPIC_ENTITY"

    const-class v2, Lorg/schema/evie/topics/TopicEntity;

    sget v3, Lcom/evie/sidescreen/R$string;->ss_topics_section_entity:I

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;-><init>(Ljava/lang/String;ILjava/lang/Class;I)V

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_ENTITY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    const/4 v0, 0x3

    .line 48
    new-array v0, v0, [Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    sget-object v1, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_CATEGORY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_PUBLISHER:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->TOPIC_ENTITY:Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->$VALUES:[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "I)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 58
    iput-object p3, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->mKlazz:Ljava/lang/Class;

    .line 59
    iput p4, p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->mTitleResId:I

    return-void
.end method

.method static forClass(Ljava/lang/Class;)Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;
    .locals 5

    .line 64
    invoke-static {}, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->values()[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 65
    iget-object v4, v3, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->mKlazz:Ljava/lang/Class;

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;
    .locals 1

    .line 48
    const-class v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    return-object p0
.end method

.method public static values()[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;
    .locals 1

    .line 48
    sget-object v0, Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->$VALUES:[Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    invoke-virtual {v0}, [Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evie/sidescreen/personalize/TopicsListPresenter$SectionType;

    return-object v0
.end method
