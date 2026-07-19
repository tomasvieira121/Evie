.class public final Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;
.super Ljava/lang/Object;
.source "ContactLayoutService.java"

# interfaces
.implements Lcom/evie/jigsaw/services/layout/LayoutService;


# instance fields
.field private final mContactManager:Lcom/evie/search/local/ContactManager;


# direct methods
.method public constructor <init>(Lcom/evie/search/local/ContactManager;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;->mContactManager:Lcom/evie/search/local/ContactManager;

    return-void
.end method

.method private buildContactComponent(Ljava/lang/String;)Lcom/evie/jigsaw/components/base/AbstractComponent;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;->mContactManager:Lcom/evie/search/local/ContactManager;

    invoke-virtual {v0, p1}, Lcom/evie/search/local/ContactManager;->getContactData(Ljava/lang/String;)Lcom/evie/search/model/ContactData;

    move-result-object v0

    .line 69
    new-instance v1, Lcom/evie/jigsaw/components/navigation/BackComponent;

    invoke-direct {v1}, Lcom/evie/jigsaw/components/navigation/BackComponent;-><init>()V

    .line 70
    new-instance v2, Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-direct {v2}, Lcom/evie/jigsaw/services/images/models/EvieImage;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getOverlayUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setBaseUrl(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v2

    sget-object v3, Lcom/evie/jigsaw/services/images/models/Rounding;->circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    .line 72
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setRounding(Lcom/evie/jigsaw/services/images/models/Rounding;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v2

    .line 73
    new-instance v3, Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-direct {v3}, Lcom/evie/jigsaw/services/images/models/EvieImage;-><init>()V

    .line 74
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getHeaderUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setBaseUrl(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    .line 75
    invoke-virtual {v3, v4}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setAspectRatio(F)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v3

    .line 77
    new-instance v4, Lcom/evie/jigsaw/components/content/MediaComponent;

    invoke-direct {v4}, Lcom/evie/jigsaw/components/content/MediaComponent;-><init>()V

    .line 78
    invoke-virtual {v4, v3}, Lcom/evie/jigsaw/components/content/MediaComponent;->setImage(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/content/MediaComponent;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v2}, Lcom/evie/jigsaw/components/content/MediaComponent;->setOverlay(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/content/MediaComponent;

    move-result-object v2

    .line 81
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v1, Lcom/evie/jigsaw/components/containers/StackComponent;

    invoke-direct {v1}, Lcom/evie/jigsaw/components/containers/StackComponent;-><init>()V

    .line 86
    invoke-virtual {v1, v3}, Lcom/evie/jigsaw/components/containers/StackComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;

    move-result-object v1

    check-cast v1, Lcom/evie/jigsaw/components/containers/StackComponent;

    .line 89
    new-instance v2, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    invoke-direct {v2}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;-><init>()V

    sget-object v3, Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;->center:Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;

    .line 90
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->setAlignment(Lcom/evie/jigsaw/components/content/DetailsComponent$Alignment;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    move-result-object v2

    const/4 v3, 0x1

    .line 91
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->setLines(Ljava/lang/Integer;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->setText(Ljava/lang/String;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    move-result-object v2

    sget-object v4, Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;->big_title:Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;

    .line 93
    invoke-virtual {v2, v4}, Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;->setStyle(Lcom/evie/jigsaw/components/content/DetailsComponent$DetailStyle;)Lcom/evie/jigsaw/components/content/DetailsComponent$Detail;

    move-result-object v2

    .line 95
    new-instance v4, Lcom/evie/jigsaw/components/content/DetailsComponent;

    invoke-direct {v4}, Lcom/evie/jigsaw/components/content/DetailsComponent;-><init>()V

    .line 96
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/evie/jigsaw/components/content/DetailsComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/content/DetailsComponent;

    move-result-object v2

    sget-object v4, Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;->wide:Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;

    .line 97
    invoke-virtual {v2, v4}, Lcom/evie/jigsaw/components/content/DetailsComponent;->setSpacing(Lcom/evie/jigsaw/components/content/DetailsComponent$Spacing;)Lcom/evie/jigsaw/components/content/DetailsComponent;

    move-result-object v2

    .line 98
    invoke-virtual {v2, v3}, Lcom/evie/jigsaw/components/content/DetailsComponent;->setInset(Z)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object v2

    check-cast v2, Lcom/evie/jigsaw/components/content/DetailsComponent;

    .line 101
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102
    new-instance v5, Lcom/evie/jigsaw/components/containers/EmptyComponent;

    invoke-direct {v5}, Lcom/evie/jigsaw/components/containers/EmptyComponent;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getActions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/evie/search/model/ActionData;

    .line 105
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 108
    new-instance v8, Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-direct {v8}, Lcom/evie/jigsaw/services/images/models/EvieImage;-><init>()V

    .line 109
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setBaseUrl(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v8

    .line 111
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getLinks()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/evie/search/model/AppLink;

    .line 112
    new-instance v11, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    invoke-direct {v11}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;-><init>()V

    .line 113
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setAppName(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 114
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getAppPackage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setAppId(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 115
    invoke-virtual {v11, v8}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 116
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getLink()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setLinks(Ljava/util/List;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 117
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getLink()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setPreferenceValue(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 118
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setShortcutTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 119
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getAppName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    move-result-object v11

    .line 121
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 122
    invoke-virtual {v10}, Lcom/evie/search/model/AppLink;->getSubtext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;->setDescription(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent$ActionItem;

    .line 125
    :cond_0
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 128
    :cond_1
    new-instance v9, Lcom/evie/common/services/analytics/models/AnalyticsData;

    invoke-direct {v9}, Lcom/evie/common/services/analytics/models/AnalyticsData;-><init>()V

    const-string v10, "contact"

    .line 129
    invoke-virtual {v9, v10}, Lcom/evie/common/services/analytics/models/AnalyticsData;->setEntityType(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v9

    .line 130
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/evie/common/services/analytics/models/AnalyticsData;->setEntityName(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v9

    const-string v10, "card"

    .line 131
    invoke-virtual {v9, v10}, Lcom/evie/common/services/analytics/models/AnalyticsData;->setLayout(Ljava/lang/String;)Lcom/evie/common/services/analytics/models/AnalyticsData;

    move-result-object v9

    .line 134
    new-instance v10, Lcom/evie/jigsaw/services/images/models/EvieImage;

    invoke-direct {v10}, Lcom/evie/jigsaw/services/images/models/EvieImage;-><init>()V

    .line 135
    invoke-virtual {v0}, Lcom/evie/search/model/ContactData;->getShortcutUri()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setBaseUrl(Ljava/lang/String;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v10

    sget-object v11, Lcom/evie/jigsaw/services/images/models/Rounding;->circle:Lcom/evie/jigsaw/services/images/models/Rounding;

    .line 136
    invoke-virtual {v10, v11}, Lcom/evie/jigsaw/services/images/models/EvieImage;->setRounding(Lcom/evie/jigsaw/services/images/models/Rounding;)Lcom/evie/jigsaw/services/images/models/EvieImage;

    move-result-object v10

    .line 139
    new-instance v11, Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    invoke-direct {v11}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;-><init>()V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getActionType()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->setAction(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v11

    .line 141
    invoke-virtual {v11, v8}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->setIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v8

    .line 142
    invoke-virtual {v8, v7}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v7

    .line 143
    invoke-virtual {v7, v10}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->setShortcutIcon(Lcom/evie/jigsaw/services/images/models/EvieImage;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v7

    .line 144
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->setTitle(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    move-result-object v7

    .line 145
    invoke-virtual {v7, v9}, Lcom/evie/jigsaw/components/actions/AbstractActionComponent;->setAnalytics(Lcom/evie/common/services/analytics/models/AnalyticsData;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object v7

    check-cast v7, Lcom/evie/jigsaw/components/actions/ActionRowComponent;

    .line 147
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getSubtext()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 148
    invoke-virtual {v6}, Lcom/evie/search/model/ActionData;->getSubtext()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/evie/jigsaw/components/actions/ActionRowComponent;->setDescription(Ljava/lang/String;)Lcom/evie/jigsaw/components/actions/AbstractActionComponent;

    .line 151
    :cond_2
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 154
    :cond_3
    new-instance p1, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    invoke-direct {p1}, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;-><init>()V

    .line 155
    invoke-virtual {p1, v3}, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;->setInset(Z)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;

    .line 157
    new-instance v0, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-direct {v0}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;-><init>()V

    sget-object v5, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->light:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    .line 158
    invoke-virtual {v0, v5}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->setBackground(Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    move-result-object v0

    .line 160
    new-instance v5, Lcom/evie/jigsaw/components/containers/VerticalListComponent;

    invoke-direct {v5}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;-><init>()V

    .line 161
    invoke-virtual {v5, p1}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->setDelimiter(Lcom/evie/jigsaw/components/delimiters/HorizontalDelimiterComponent;)Lcom/evie/jigsaw/components/containers/VerticalListComponent;

    move-result-object p1

    sget-object v5, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->none:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    .line 162
    invoke-virtual {p1, v5}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->setSpacing(Lcom/evie/jigsaw/adapters/spacing/SpacingType;)Lcom/evie/jigsaw/components/containers/AbstractListComponent;

    move-result-object p1

    .line 163
    invoke-virtual {p1, v4}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;

    move-result-object p1

    .line 164
    invoke-virtual {p1, v0}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->setStyle(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object p1

    check-cast p1, Lcom/evie/jigsaw/components/containers/VerticalListComponent;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance p1, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    invoke-direct {p1}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;-><init>()V

    sget-object v1, Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;->light:Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;

    .line 172
    invoke-virtual {p1, v1}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->setBackground(Lcom/evie/jigsaw/components/base/AbstractComponent$BackgroundColor;)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    move-result-object p1

    .line 173
    invoke-virtual {p1, v3}, Lcom/evie/jigsaw/components/base/AbstractComponent$Style;->setFullscreen(Z)Lcom/evie/jigsaw/components/base/AbstractComponent$Style;

    move-result-object p1

    .line 175
    new-instance v1, Lcom/evie/jigsaw/components/containers/VerticalListComponent;

    invoke-direct {v1}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;-><init>()V

    sget-object v2, Lcom/evie/jigsaw/adapters/spacing/SpacingType;->none:Lcom/evie/jigsaw/adapters/spacing/SpacingType;

    .line 176
    invoke-virtual {v1, v2}, Lcom/evie/jigsaw/components/containers/VerticalListComponent;->setSpacing(Lcom/evie/jigsaw/adapters/spacing/SpacingType;)Lcom/evie/jigsaw/components/containers/AbstractListComponent;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lcom/evie/jigsaw/components/containers/AbstractListComponent;->setItems(Ljava/util/List;)Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Lcom/evie/jigsaw/components/containers/AbstractContainerComponent;->setStyle(Lcom/evie/jigsaw/components/base/AbstractComponent$Style;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public resolve(Landroid/net/Uri;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lretrofit2/Call<",
            "Lcom/evie/jigsaw/components/base/AbstractComponent;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    new-instance v0, Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/voxel/simplesearchlauncher/jigsaw/layouts/ContactLayoutService;->buildContactComponent(Ljava/lang/String;)Lcom/evie/jigsaw/components/base/AbstractComponent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/services/layout/LayoutService$SuccessCall;-><init>(Lcom/evie/jigsaw/components/base/AbstractComponent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 56
    new-instance v0, Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;

    invoke-direct {v0, p1}, Lcom/evie/jigsaw/services/layout/LayoutService$FailureCall;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
