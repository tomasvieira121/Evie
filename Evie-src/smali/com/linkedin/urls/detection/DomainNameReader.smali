.class public Lcom/linkedin/urls/detection/DomainNameReader;
.super Ljava/lang/Object;
.source "DomainNameReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;,
        Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    }
.end annotation


# instance fields
.field private _buffer:Ljava/lang/StringBuilder;

.field private final _characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

.field private _current:Ljava/lang/String;

.field private _currentLabelLength:I

.field private _dots:I

.field private _numeric:Z

.field private _options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field private final _reader:Lcom/linkedin/urls/detection/InputTextReader;

.field private _seenBracket:Z

.field private _seenCompleteBracketSet:Z

.field private _startDomainName:I

.field private _topLevelLength:I

.field private _zoneIndex:Z


# direct methods
.method public constructor <init>(Lcom/linkedin/urls/detection/InputTextReader;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;)V
    .locals 1

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 143
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 148
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    .line 154
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 159
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 164
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 169
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    .line 174
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    .line 196
    iput-object p2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    .line 197
    iput-object p3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    .line 198
    iput-object p1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 199
    iput-object p4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 200
    iput-object p5, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

    return-void
.end method

.method private checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 7

    .line 456
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%2e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    const/4 v4, 0x0

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    .line 460
    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-lez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    add-int/2addr v1, v3

    const/16 v3, 0xff

    if-ge v0, v3, :cond_b

    const/16 v0, 0x7f

    if-le v1, v0, :cond_3

    goto/16 :goto_3

    .line 463
    :cond_3
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    if-eqz v0, :cond_4

    .line 464
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 465
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/DomainNameReader;->isValidIpv4(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 466
    :cond_4
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-eqz v0, :cond_5

    .line 467
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/DomainNameReader;->isValidIpv6(Ljava/lang/String;)Z

    move-result v4

    goto :goto_3

    .line 469
    :cond_5
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    const/4 v1, 0x2

    if-lez v0, :cond_6

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-ge v0, v2, :cond_8

    :cond_6
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-lt v0, v1, :cond_7

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 470
    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    if-nez v0, :cond_b

    .line 472
    :cond_8
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    sub-int/2addr v0, v3

    .line 473
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-nez v3, :cond_9

    add-int/lit8 v0, v0, -0x1

    .line 476
    :cond_9
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 479
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v0, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "xn--"

    .line 483
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    if-lt v0, v1, :cond_b

    const/16 v1, 0x16

    if-gt v0, v1, :cond_b

    :cond_a
    const/4 v4, 0x1

    :cond_b
    :goto_3
    if-eqz v4, :cond_d

    if-eqz p2, :cond_c

    .line 489
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_c
    return-object p1

    .line 496
    :cond_d
    iget-object p1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 499
    sget-object p1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object p1
.end method

.method private isValidIpv4(Ljava/lang/String;)Z
    .locals 12

    .line 509
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_a

    .line 511
    iget v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    const/16 v2, 0x10

    const/16 v3, 0x78

    const/16 v4, 0x8

    const/16 v5, 0x30

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez v0, :cond_2

    .line 514
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    .line 515
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v5, :cond_1

    .line 517
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    goto :goto_0

    .line 519
    :cond_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    const-wide v4, 0xffffffffL

    cmp-long p1, v2, v4

    if-gtz p1, :cond_a

    const-wide/32 v4, 0x1010100

    cmp-long p1, v2, v4

    if-ltz p1, :cond_a

    const/4 v1, 0x1

    goto/16 :goto_5

    :cond_2
    const/4 v8, 0x3

    if-ne v0, v8, :cond_a

    .line 527
    invoke-static {p1}, Lcom/linkedin/urls/detection/CharUtils;->splitByDot(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 531
    :goto_1
    array-length v9, p1

    if-ge v0, v9, :cond_9

    if-eqz v8, :cond_9

    .line 532
    aget-object v9, p1, v0

    .line 533
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 536
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v6, :cond_3

    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_3

    invoke-virtual {v9, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v3, :cond_3

    .line 537
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    goto :goto_2

    .line 539
    :cond_3
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v5, :cond_4

    .line 540
    invoke-virtual {v9, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    goto :goto_2

    :cond_4
    const/16 v10, 0xa

    .line 548
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_5

    .line 549
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_3

    .line 552
    :cond_5
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 557
    :goto_3
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_6

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0xff

    if-le v9, v10, :cond_8

    :cond_6
    const/4 v8, 0x0

    goto :goto_4

    :catch_0
    return v1

    :cond_7
    const/4 v8, 0x0

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_9
    move v1, v8

    :catch_1
    :cond_a
    :goto_5
    return v1
.end method

.method private isValidIpv6(Ljava/lang/String;)Z
    .locals 16

    .line 575
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 580
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_13

    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-char v1, v0, v1

    const/16 v4, 0x5d

    if-ne v1, v4, :cond_13

    aget-char v1, v0, v2

    const/16 v5, 0x5b

    if-ne v1, v5, :cond_13

    aget-char v1, v0, v3

    const/4 v6, 0x2

    const/16 v7, 0x3a

    if-ne v1, v7, :cond_0

    aget-char v1, v0, v6

    if-eq v1, v7, :cond_0

    goto/16 :goto_4

    .line 590
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v13, v8

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    .line 600
    :goto_0
    array-length v15, v0

    if-ge v8, v15, :cond_10

    .line 601
    aget-char v15, v0, v8

    const/16 v6, 0x25

    if-eq v15, v6, :cond_8

    if-eq v15, v7, :cond_4

    if-eq v15, v5, :cond_3

    if-eq v15, v4, :cond_8

    if-eqz v10, :cond_1

    .line 644
    aget-char v6, v0, v8

    invoke-static {v6}, Lcom/linkedin/urls/detection/CharUtils;->isUnreserved(C)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 648
    :cond_1
    aget-char v6, v0, v8

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-char v6, v0, v8

    invoke-static {v6}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v14, v14, 0x1

    const/4 v15, 0x2

    move-object/from16 v5, p0

    goto/16 :goto_2

    .line 652
    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v15, 0x2

    move-object/from16 v5, p0

    move-object v13, v6

    goto/16 :goto_2

    :cond_3
    const/4 v15, 0x2

    move-object/from16 v5, p0

    goto/16 :goto_2

    :cond_4
    if-ne v11, v7, :cond_6

    if-eqz v12, :cond_5

    return v2

    :cond_5
    const/4 v12, 0x1

    .line 633
    :cond_6
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    return v2

    .line 637
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    add-int/lit8 v9, v9, 0x1

    .line 640
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    invoke-virtual {v1, v2, v11}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-object v13, v6

    const/4 v14, 0x0

    const/4 v15, 0x2

    move-object/from16 v5, p0

    goto :goto_2

    .line 606
    :cond_8
    aget-char v11, v0, v8

    if-ne v11, v6, :cond_a

    .line 608
    array-length v11, v0

    sub-int/2addr v11, v8

    const/4 v15, 0x2

    if-lt v11, v15, :cond_9

    add-int/lit8 v11, v8, 0x1

    aget-char v11, v0, v11

    const/16 v4, 0x32

    if-ne v11, v4, :cond_9

    add-int/lit8 v4, v8, 0x2

    aget-char v11, v0, v4

    const/16 v5, 0x65

    if-ne v11, v5, :cond_9

    const-string v5, "%2e"

    .line 609
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move v8, v4

    move-object v13, v5

    move-object/from16 v5, p0

    goto :goto_2

    :cond_9
    const/4 v10, 0x1

    goto :goto_1

    :cond_a
    const/4 v15, 0x2

    .line 616
    :goto_1
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v10, :cond_b

    aget-char v4, v0, v8

    if-ne v4, v6, :cond_d

    .line 617
    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-direct {v5, v4}, Lcom/linkedin/urls/detection/DomainNameReader;->isValidIpv4(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_c
    return v2

    :cond_d
    move-object/from16 v5, p0

    :goto_2
    const/4 v4, 0x4

    if-gt v14, v4, :cond_f

    const/16 v4, 0x8

    if-le v9, v4, :cond_e

    goto :goto_3

    .line 660
    :cond_e
    aget-char v11, v0, v8

    add-int/2addr v8, v3

    const/16 v4, 0x5d

    const/16 v5, 0x5b

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_f
    :goto_3
    return v2

    :cond_10
    const/16 v4, 0x8

    move-object/from16 v5, p0

    if-eq v9, v3, :cond_12

    if-ge v9, v4, :cond_11

    if-eqz v12, :cond_12

    :cond_11
    const/4 v2, 0x1

    :cond_12
    return v2

    :cond_13
    :goto_4
    move-object/from16 v5, p0

    return v2
.end method

.method private readCurrent()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 12

    .line 210
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 212
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    const-string v3, "%2e"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 222
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 227
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 228
    array-length v3, v0

    const/4 v4, 0x2

    if-le v3, v4, :cond_3

    .line 231
    aget-char v5, v0, v2

    const/16 v6, 0x30

    if-ne v5, v6, :cond_3

    aget-char v5, v0, v1

    const/16 v6, 0x78

    if-eq v5, v6, :cond_2

    aget-char v5, v0, v1

    const/16 v6, 0x58

    if-ne v5, v6, :cond_3

    :cond_2
    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    move v7, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v3, :cond_e

    if-nez v5, :cond_e

    .line 238
    aget-char v8, v0, v4

    .line 239
    iget v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v9, v1

    iput v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 240
    iget v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v9, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    const/16 v10, 0x40

    if-le v9, v10, :cond_5

    .line 244
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 245
    :cond_5
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 247
    iget v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 248
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto/16 :goto_5

    :cond_6
    const/16 v9, 0x5b

    if-ne v8, v9, :cond_7

    .line 250
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 251
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    goto/16 :goto_5

    :cond_7
    const/16 v9, 0x25

    if-ne v8, v9, :cond_9

    add-int/lit8 v9, v4, 0x2

    if-ge v9, v3, :cond_9

    add-int/lit8 v10, v4, 0x1

    .line 252
    aget-char v11, v0, v10

    invoke-static {v11}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v11

    if-eqz v11, :cond_9

    aget-char v11, v0, v9

    .line 253
    invoke-static {v11}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 255
    aget-char v4, v0, v10

    const/16 v8, 0x32

    if-ne v4, v8, :cond_8

    aget-char v4, v0, v9

    const/16 v8, 0x65

    if-ne v4, v8, :cond_8

    .line 256
    iget v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 257
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_3

    .line 259
    :cond_8
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    :goto_3
    move v4, v9

    goto :goto_5

    :cond_9
    if-eqz v7, :cond_a

    .line 264
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v8

    if-nez v8, :cond_d

    .line 265
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    add-int/lit8 v4, v4, -0x1

    const/4 v7, 0x0

    goto :goto_5

    .line 269
    :cond_a
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v9

    if-nez v9, :cond_c

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_c

    const/16 v9, 0xc0

    if-lt v8, v9, :cond_b

    goto :goto_4

    .line 271
    :cond_b
    invoke-static {v8}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v9, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v8, v9}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v8

    if-nez v8, :cond_d

    add-int/lit8 v5, v4, 0x1

    .line 274
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 275
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    .line 276
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 277
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    move v6, v5

    const/4 v5, 0x1

    goto :goto_5

    .line 270
    :cond_c
    :goto_4
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    :cond_d
    :goto_5
    add-int/2addr v4, v1

    goto/16 :goto_2

    :cond_e
    if-lez v6, :cond_12

    .line 289
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_f

    .line 290
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_current:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v6, v0, :cond_10

    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 298
    :cond_10
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 302
    :cond_11
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_startDomainName:I

    .line 306
    :cond_12
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0
.end method


# virtual methods
.method public readDomainName()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;
    .locals 10

    .line 317
    invoke-direct {p0}, Lcom/linkedin/urls/detection/DomainNameReader;->readCurrent()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    sget-object v1, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    if-ne v0, v1, :cond_0

    .line 318
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_1a

    .line 323
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 324
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2

    .line 328
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPath:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v3, 0x3a

    if-ne v2, v3, :cond_4

    .line 329
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v4, :cond_4

    .line 332
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadPort:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v4, 0x3f

    if-ne v2, v4, :cond_5

    .line 335
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadQueryString:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_5
    const/16 v4, 0x23

    if-ne v2, v4, :cond_6

    .line 338
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadFragment:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0

    :cond_6
    const/16 v4, 0x40

    if-ne v2, v4, :cond_7

    .line 341
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 342
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ReadUserPass:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 343
    :cond_7
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_16

    const/4 v5, 0x2

    const/16 v7, 0x25

    if-ne v2, v7, :cond_8

    iget-object v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 344
    invoke-virtual {v8, v5}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v8, v5}, Lcom/linkedin/urls/detection/InputTextReader;->peek(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "2e"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto/16 :goto_3

    .line 372
    :cond_8
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    const/16 v8, 0x5b

    if-eqz v4, :cond_e

    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v4

    const/16 v9, 0x5d

    if-nez v4, :cond_9

    if-eq v2, v3, :cond_9

    if-eq v2, v8, :cond_9

    if-eq v2, v9, :cond_9

    if-ne v2, v7, :cond_e

    :cond_9
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-nez v4, :cond_e

    if-eq v2, v7, :cond_d

    if-eq v2, v3, :cond_c

    if-eq v2, v8, :cond_b

    if-eq v2, v9, :cond_a

    .line 390
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v3, v6

    iput v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_1

    .line 383
    :cond_a
    iput-boolean v6, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    .line 384
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    goto :goto_1

    .line 380
    :cond_b
    iget-object v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 381
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 376
    :cond_c
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    goto :goto_1

    .line 387
    :cond_d
    iput-boolean v6, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    .line 393
    :goto_1
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 394
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 395
    :cond_e
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isAlphaNumeric(C)Z

    move-result v3

    if-nez v3, :cond_13

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_13

    const/16 v3, 0xc0

    if-lt v2, v3, :cond_f

    goto :goto_2

    :cond_f
    if-ne v2, v8, :cond_10

    .line 412
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    if-nez v3, :cond_10

    .line 413
    iput-boolean v6, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenBracket:Z

    .line 414
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 415
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_10
    if-ne v2, v8, :cond_11

    .line 416
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v3, :cond_11

    .line 417
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_11
    if-ne v2, v7, :cond_12

    .line 419
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v5}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3, v0}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 420
    invoke-virtual {v3, v6}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 422
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 423
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 424
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 426
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    goto/16 :goto_0

    .line 429
    :cond_12
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_characterHandler:Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;

    invoke-interface {v1, v2}, Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;->addCharacter(C)V

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 397
    :cond_13
    :goto_2
    iget-boolean v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_seenCompleteBracketSet:Z

    if-eqz v3, :cond_14

    .line 399
    iget-object v1, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x78

    if-eq v2, v3, :cond_15

    const/16 v3, 0x58

    if-eq v2, v3, :cond_15

    .line 403
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v3

    if-nez v3, :cond_15

    .line 404
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_numeric:Z

    .line 408
    :cond_15
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 410
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_topLevelLength:I

    goto/16 :goto_0

    .line 348
    :cond_16
    :goto_3
    iget v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-ge v3, v6, :cond_17

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 352
    :cond_17
    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    invoke-static {v2}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v2

    if-nez v2, :cond_18

    .line 357
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    iget-object v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    :cond_18
    iget-boolean v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_zoneIndex:Z

    if-nez v2, :cond_19

    .line 363
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    add-int/2addr v2, v6

    iput v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_dots:I

    .line 364
    iput v0, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    .line 368
    :cond_19
    iget v2, p0, Lcom/linkedin/urls/detection/DomainNameReader;->_currentLabelLength:I

    if-lt v2, v4, :cond_1

    .line 369
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->InvalidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    return-object v0

    .line 437
    :cond_1a
    sget-object v0, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ValidDomainName:Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/linkedin/urls/detection/DomainNameReader;->checkDomainNameValid(Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;Ljava/lang/Character;)Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object v0

    return-object v0
.end method
