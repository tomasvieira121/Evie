.class public Lcom/linkedin/urls/detection/UrlDetector;
.super Ljava/lang/Object;
.source "UrlDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;,
        Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    }
.end annotation


# static fields
.field private static final VALID_SCHEMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _buffer:Ljava/lang/StringBuilder;

.field private _characterMatch:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private _currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

.field private _dontMatchIpv6:Z

.field private _hasScheme:Z

.field private final _options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

.field private _quoteStart:Z

.field private final _reader:Lcom/linkedin/urls/detection/InputTextReader;

.field private _singleQuoteStart:Z

.field private _urlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/linkedin/urls/Url;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 33
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "http://"

    const-string v2, "https://"

    const-string v3, "ftp://"

    const-string v4, "ftps://"

    const-string v5, "http%3a//"

    const-string v6, "https%3a//"

    const-string v7, "ftp%3a//"

    const-string v8, "ftps%3a//"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/linkedin/urls/detection/UrlDetector;->VALID_SCHEMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    .line 77
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 82
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 87
    iput-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    .line 102
    new-instance v0, Lcom/linkedin/urls/UrlMarker;

    invoke-direct {v0}, Lcom/linkedin/urls/UrlMarker;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    .line 124
    new-instance v0, Lcom/linkedin/urls/detection/InputTextReader;

    invoke-direct {v0, p1}, Lcom/linkedin/urls/detection/InputTextReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 125
    iput-object p2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    return-void
.end method

.method static synthetic access$000(Lcom/linkedin/urls/detection/UrlDetector;C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object p0

    return-object p0
.end method

.method private checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;
    .locals 11

    const/16 v0, 0x22

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 341
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/16 v2, 0x27

    if-ne p1, v2, :cond_5

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->SINGLE_QUOTE_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 342
    invoke-virtual {v2, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    if-ne p1, v0, :cond_2

    .line 345
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 348
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    goto :goto_0

    .line 350
    :cond_2
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 353
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_singleQuoteStart:Z

    .line 357
    :goto_0
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 361
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    :goto_2
    return-object p1

    .line 362
    :cond_5
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v2, 0x28

    const/16 v3, 0x7b

    const/16 v4, 0x5b

    if-eqz v0, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    .line 364
    :cond_6
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1

    .line 366
    :cond_7
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v5}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v5, 0x3c

    if-eqz v0, :cond_8

    if-ne p1, v5, :cond_8

    .line 368
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    add-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1

    .line 370
    :cond_8
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v6, Lcom/linkedin/urls/detection/UrlDetectorOptions;->BRACKET_MATCH:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v6}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    const/16 v6, 0x7d

    const/16 v7, 0x29

    const/16 v8, 0x3e

    const/16 v9, 0x5d

    if-eqz v0, :cond_9

    if-eq p1, v9, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v7, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v10, Lcom/linkedin/urls/detection/UrlDetectorOptions;->XML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    .line 371
    invoke-virtual {v0, v10}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne p1, v8, :cond_10

    .line 374
    :cond_a
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v7, :cond_e

    if-eq p1, v8, :cond_d

    if-eq p1, v9, :cond_c

    if-eq p1, v6, :cond_b

    goto :goto_3

    :cond_b
    const/16 v1, 0x7b

    goto :goto_3

    :cond_c
    const/16 v1, 0x5b

    goto :goto_3

    :cond_d
    const/16 v1, 0x3c

    goto :goto_3

    :cond_e
    const/16 v1, 0x28

    .line 397
    :goto_3
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->getCharacterCount(C)I

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le p1, v0, :cond_f

    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    goto :goto_4

    :cond_f
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStart:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    :goto_4
    return-object p1

    .line 402
    :cond_10
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    return-object p1
.end method

.method private getCharacterCount(C)I
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_characterMatch:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    return p1
.end method

.method private processColon(I)I
    .locals 4

    .line 281
    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 283
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readUserPass(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 285
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 288
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 295
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 297
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {p1, v0}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    .line 298
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    goto :goto_1

    .line 304
    :cond_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readScheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 305
    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    .line 306
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    move v2, p1

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v3, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v3}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    .line 308
    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 309
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 310
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 311
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 312
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_3
    move v2, p1

    goto :goto_1

    .line 315
    :cond_4
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_5
    :goto_1
    return v2
.end method

.method private readDefault()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 145
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v2

    if-nez v2, :cond_d

    .line 147
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    .line 259
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v3

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v3, v4, :cond_c

    .line 260
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    const/4 v1, 0x0

    goto :goto_0

    .line 201
    :sswitch_0
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    if-eqz v4, :cond_1

    .line 204
    invoke-direct {p0, v2}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v4

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v4, v5, :cond_1

    .line 205
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    const/4 v1, 0x0

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v4

    .line 212
    iget-boolean v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    if-nez v5, :cond_2

    .line 213
    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 215
    :cond_2
    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 219
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    .line 220
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1, v4}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    .line 221
    iput-boolean v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 191
    :sswitch_1
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v4, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v3, v4, v1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 193
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 194
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 195
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 253
    :sswitch_2
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->processColon(I)I

    move-result v1

    goto/16 :goto_0

    .line 229
    :sswitch_3
    iget-boolean v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v4, v5}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v3, :cond_5

    goto :goto_1

    .line 245
    :cond_5
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    .line 246
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readHtml5Root()Z

    move-result v1

    iput-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    .line 248
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    goto/16 :goto_0

    .line 236
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v2}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 237
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 238
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 184
    :sswitch_4
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 185
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 186
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 162
    :sswitch_5
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4, v5}, Lcom/linkedin/urls/detection/InputTextReader;->peek(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "3a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 164
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->processColon(I)I

    move-result v1

    goto/16 :goto_0

    .line 168
    :cond_9
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4, v0}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v4

    invoke-static {v4}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4, v3}, Lcom/linkedin/urls/detection/InputTextReader;->peekChar(I)C

    move-result v3

    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isHex(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 173
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 174
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 151
    :sswitch_6
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v3, v4}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_b

    iget-boolean v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    if-eqz v3, :cond_b

    .line 152
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 153
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 154
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    .line 157
    :cond_b
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 158
    sget-object v1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    const/4 v1, 0x0

    goto/16 :goto_0

    .line 263
    :cond_c
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 268
    :cond_d
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetectorOptions;->ALLOW_SINGLE_LEVEL_DOMAIN:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v2}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    if-eqz v0, :cond_e

    .line 269
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 270
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    :cond_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_6
        0x25 -> :sswitch_5
        0x2e -> :sswitch_4
        0x2f -> :sswitch_3
        0x3a -> :sswitch_2
        0x40 -> :sswitch_1
        0x5b -> :sswitch_0
        0x3002 -> :sswitch_4
        0xff0e -> :sswitch_4
        0xff61 -> :sswitch_4
    .end sparse-switch
.end method

.method private readDomainName(Ljava/lang/String;)Z
    .locals 9

    if-nez p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 538
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v2, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v1, v2, v0}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 541
    new-instance v0, Lcom/linkedin/urls/detection/DomainNameReader;

    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    new-instance v8, Lcom/linkedin/urls/detection/UrlDetector$1;

    invoke-direct {v8, p0}, Lcom/linkedin/urls/detection/UrlDetector$1;-><init>(Lcom/linkedin/urls/detection/UrlDetector;)V

    move-object v3, v0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/linkedin/urls/detection/DomainNameReader;-><init>(Lcom/linkedin/urls/detection/InputTextReader;Ljava/lang/StringBuilder;Ljava/lang/String;Lcom/linkedin/urls/detection/UrlDetectorOptions;Lcom/linkedin/urls/detection/DomainNameReader$CharacterHandler;)V

    .line 550
    invoke-virtual {v0}, Lcom/linkedin/urls/detection/DomainNameReader;->readDomainName()Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;

    move-result-object p1

    .line 551
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$2;->$SwitchMap$com$linkedin$urls$detection$DomainNameReader$ReaderNextState:[I

    invoke-virtual {p1}, Lcom/linkedin/urls/detection/DomainNameReader$ReaderNextState;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 563
    :pswitch_0
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v0, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {p1, v0}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result p1

    .line 564
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/UrlMarker;->unsetIndex(Lcom/linkedin/urls/UrlPart;)V

    .line 565
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readUserPass(I)Z

    move-result p1

    return p1

    .line 561
    :pswitch_1
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result p1

    return p1

    .line 559
    :pswitch_2
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPort()Z

    move-result p1

    return p1

    .line 557
    :pswitch_3
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPath()Z

    move-result p1

    return p1

    .line 555
    :pswitch_4
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result p1

    return p1

    .line 553
    :pswitch_5
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z
    .locals 4

    .line 703
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 706
    iget-boolean v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_0

    .line 707
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/UrlMarker;->setOriginalUrl(Ljava/lang/String;)V

    .line 713
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    invoke-virtual {v1}, Lcom/linkedin/urls/UrlMarker;->createUrl()Lcom/linkedin/urls/Url;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 721
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_quoteStart:Z

    .line 722
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_hasScheme:Z

    .line 723
    iput-boolean v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_dontMatchIpv6:Z

    .line 724
    new-instance v0, Lcom/linkedin/urls/UrlMarker;

    invoke-direct {v0}, Lcom/linkedin/urls/UrlMarker;-><init>()V

    iput-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    .line 727
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    if-ne p1, v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method private readFragment()Z
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 578
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    if-nez v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 582
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 583
    :cond_1
    :goto_1
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 591
    :cond_2
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readHtml5Root()Z
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    .line 419
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 424
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    return v1
.end method

.method private readPath()Z
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    if-nez v0, :cond_4

    .line 672
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_3

    .line 674
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 680
    :cond_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    .line 685
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result v0

    return v0

    :cond_2
    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 688
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    .line 676
    :cond_3
    :goto_0
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 693
    :cond_4
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readPort()Z
    .locals 5

    .line 623
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    const/4 v0, 0x0

    .line 626
    :goto_0
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v1

    if-nez v1, :cond_6

    .line 628
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_0

    .line 633
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readPath()Z

    move-result v0

    return v0

    :cond_0
    const/16 v3, 0x3f

    if-ne v1, v3, :cond_1

    .line 637
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 638
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readQueryString()Z

    move-result v0

    return v0

    :cond_1
    const/16 v3, 0x23

    if-ne v1, v3, :cond_2

    .line 641
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 642
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    .line 643
    :cond_2
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v3

    sget-object v4, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterMatchStop:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v3, v4, :cond_4

    invoke-static {v1}, Lcom/linkedin/urls/detection/CharUtils;->isNumeric(C)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 656
    :cond_3
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 645
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v1}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    if-ne v0, v2, :cond_5

    .line 650
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 652
    :cond_5
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/UrlMarker;->unsetIndex(Lcom/linkedin/urls/UrlPart;)V

    .line 653
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 661
    :cond_6
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readQueryString()Z
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    .line 601
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v0

    if-nez v0, :cond_3

    .line 602
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_0

    .line 605
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readFragment()Z

    move-result v0

    return v0

    :cond_0
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    .line 607
    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v1

    sget-object v2, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v1, v2, :cond_1

    goto :goto_1

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 609
    :cond_2
    :goto_1
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 615
    :cond_3
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->ValidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0
.end method

.method private readScheme()Z
    .locals 6

    .line 435
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_options:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    sget-object v1, Lcom/linkedin/urls/detection/UrlDetectorOptions;->HTML:Lcom/linkedin/urls/detection/UrlDetectorOptions;

    invoke-virtual {v0, v1}, Lcom/linkedin/urls/detection/UrlDetectorOptions;->hasFlag(Lcom/linkedin/urls/detection/UrlDetectorOptions;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    const-string v0, "mailto:"

    .line 437
    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result v0

    return v0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 445
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v3

    if-nez v3, :cond_9

    .line 446
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v3}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v3

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_4

    .line 450
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 453
    sget-object v0, Lcom/linkedin/urls/detection/UrlDetector;->VALID_SCHEMES:Ljava/util/Set;

    iget-object v2, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v2, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v2, v1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    return v3

    :cond_2
    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/16 v4, 0x20

    if-eq v3, v4, :cond_8

    .line 460
    invoke-direct {p0, v3}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v4

    sget-object v5, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v4, v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_6

    .line 465
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    return v1

    :cond_6
    if-gtz v0, :cond_7

    if-gtz v2, :cond_7

    .line 467
    invoke-static {v3}, Lcom/linkedin/urls/detection/CharUtils;->isAlpha(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 470
    :cond_7
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->goBack()V

    .line 471
    invoke-direct {p0, v1}, Lcom/linkedin/urls/detection/UrlDetector;->readUserPass(I)Z

    move-result v0

    return v0

    .line 462
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_9
    return v1
.end method

.method private readUserPass(I)Z
    .locals 8

    .line 487
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-nez v2, :cond_5

    .line 494
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/InputTextReader;->eof()Z

    move-result v4

    if-nez v4, :cond_5

    .line 495
    iget-object v4, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v4}, Lcom/linkedin/urls/detection/InputTextReader;->read()C

    move-result v4

    const/16 v5, 0x40

    if-ne v4, v5, :cond_0

    .line 499
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_currentUrlMarker:Lcom/linkedin/urls/UrlMarker;

    sget-object v1, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-virtual {v0, v1, p1}, Lcom/linkedin/urls/UrlMarker;->setIndex(Lcom/linkedin/urls/UrlPart;I)V

    const-string p1, ""

    .line 501
    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readDomainName(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 502
    :cond_0
    invoke-static {v4}, Lcom/linkedin/urls/detection/CharUtils;->isDot(C)Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_1

    goto :goto_2

    :cond_1
    const/16 v5, 0x23

    if-eq v4, v5, :cond_3

    const/16 v5, 0x20

    if-eq v4, v5, :cond_3

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_3

    .line 507
    invoke-direct {p0, v4}, Lcom/linkedin/urls/detection/UrlDetector;->checkMatchingCharacter(C)Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    move-result-object v5

    sget-object v7, Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;->CharacterNotMatched:Lcom/linkedin/urls/detection/UrlDetector$CharacterMatch;

    if-eq v5, v7, :cond_2

    goto :goto_1

    .line 513
    :cond_2
    iget-object v5, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 504
    :cond_4
    :goto_2
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    .line 519
    iget-object p1, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v0

    .line 520
    iget-object v3, p0, Lcom/linkedin/urls/detection/UrlDetector;->_buffer:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 522
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0}, Lcom/linkedin/urls/detection/InputTextReader;->getPosition()I

    move-result v0

    sub-int/2addr v0, p1

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 523
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_reader:Lcom/linkedin/urls/detection/InputTextReader;

    invoke-virtual {v0, p1}, Lcom/linkedin/urls/detection/InputTextReader;->seek(I)V

    return v1

    .line 527
    :cond_6
    sget-object p1, Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;->InvalidUrl:Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;

    invoke-direct {p0, p1}, Lcom/linkedin/urls/detection/UrlDetector;->readEnd(Lcom/linkedin/urls/detection/UrlDetector$ReadEndState;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public detect()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/linkedin/urls/Url;",
            ">;"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lcom/linkedin/urls/detection/UrlDetector;->readDefault()V

    .line 134
    iget-object v0, p0, Lcom/linkedin/urls/detection/UrlDetector;->_urlList:Ljava/util/ArrayList;

    return-object v0
.end method
