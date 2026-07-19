.class public Lorg/schema/MediaSelector;
.super Ljava/lang/Object;
.source "MediaSelector.java"


# direct methods
.method public static selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/MediaObject;",
            ">;IF)",
            "Lorg/schema/MediaObject;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, p1, p2, v0}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IFZ)Lorg/schema/MediaObject;

    move-result-object p0

    return-object p0
.end method

.method public static selectMedia(Ljava/util/List;IFZ)Lorg/schema/MediaObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/MediaObject;",
            ">;IFZ)",
            "Lorg/schema/MediaObject;"
        }
    .end annotation

    .line 33
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 37
    :cond_0
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 38
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 40
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/schema/MediaObject;

    .line 41
    invoke-virtual {v4}, Lorg/schema/MediaObject;->getWidth()Ljava/lang/Integer;

    move-result-object v5

    .line 42
    invoke-virtual {v4}, Lorg/schema/MediaObject;->getHeight()Ljava/lang/Integer;

    move-result-object v6

    if-eqz v5, :cond_1

    if-eqz v6, :cond_1

    .line 45
    invoke-virtual {v5}, Ljava/lang/Integer;->floatValue()F

    move-result v7

    invoke-virtual {v6}, Ljava/lang/Integer;->floatValue()F

    move-result v6

    div-float/2addr v7, v6

    .line 46
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    sub-float/2addr v7, p2

    .line 48
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3c23d70a    # 0.01f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 49
    invoke-virtual {v2, v5, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 59
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    .line 60
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, p1, :cond_3

    .line 61
    invoke-virtual {v2, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schema/MediaObject;

    return-object p0

    .line 66
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schema/MediaObject;

    return-object p0

    :cond_5
    if-nez p3, :cond_6

    return-object v1

    .line 71
    :cond_6
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result p3

    if-lez p3, :cond_8

    .line 80
    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpg-float p3, p3, p2

    if-gez p3, :cond_7

    .line 84
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object p0

    return-object p0

    .line 88
    :cond_7
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p0, p1, p2}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IF)Lorg/schema/MediaObject;

    move-result-object p0

    return-object p0

    .line 99
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/schema/MediaObject;

    return-object p0
.end method

.method public static selectMediaUrl(Ljava/util/List;IF)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/MediaObject;",
            ">;IF)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 17
    invoke-static {p0, p1, p2, v0}, Lorg/schema/MediaSelector;->selectMediaUrl(Ljava/util/List;IFZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static selectMediaUrl(Ljava/util/List;IFZ)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lorg/schema/MediaObject;",
            ">;IFZ)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2, p3}, Lorg/schema/MediaSelector;->selectMedia(Ljava/util/List;IFZ)Lorg/schema/MediaObject;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 23
    invoke-virtual {p0}, Lorg/schema/MediaObject;->getUrl()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
