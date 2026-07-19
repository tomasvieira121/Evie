.class public Lcom/linkedin/urls/Url;
.super Ljava/lang/Object;
.source "Url.java"


# static fields
.field private static final SCHEME_PORT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _fragment:Ljava/lang/String;

.field private _host:Ljava/lang/String;

.field private _originalUrl:Ljava/lang/String;

.field private _password:Ljava/lang/String;

.field private _path:Ljava/lang/String;

.field private _port:I

.field private _query:Ljava/lang/String;

.field private _scheme:Ljava/lang/String;

.field private _urlMarker:Lcom/linkedin/urls/UrlMarker;

.field private _username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    const-string v1, "http"

    const/16 v2, 0x50

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    const-string v1, "https"

    const/16 v2, 0x1bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    const-string v1, "ftp"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/linkedin/urls/UrlMarker;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/linkedin/urls/Url;->_port:I

    .line 56
    iput-object p1, p0, Lcom/linkedin/urls/Url;->_urlMarker:Lcom/linkedin/urls/UrlMarker;

    .line 57
    invoke-virtual {p1}, Lcom/linkedin/urls/UrlMarker;->getOriginalUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/urls/Url;->_originalUrl:Ljava/lang/String;

    return-void
.end method

.method private exists(Lcom/linkedin/urls/UrlPart;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 238
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_urlMarker:Lcom/linkedin/urls/UrlMarker;

    invoke-virtual {v0, p1}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;
    .locals 3

    .line 261
    invoke-direct {p0, p1}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/linkedin/urls/Url;->nextExistingPart(Lcom/linkedin/urls/UrlPart;)Lcom/linkedin/urls/UrlPart;

    move-result-object v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_originalUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/linkedin/urls/Url;->_urlMarker:Lcom/linkedin/urls/UrlMarker;

    invoke-virtual {v1, p1}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/linkedin/urls/Url;->_originalUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/linkedin/urls/Url;->_urlMarker:Lcom/linkedin/urls/UrlMarker;

    invoke-virtual {v2, p1}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result p1

    iget-object v2, p0, Lcom/linkedin/urls/Url;->_urlMarker:Lcom/linkedin/urls/UrlMarker;

    invoke-virtual {v2, v0}, Lcom/linkedin/urls/UrlMarker;->indexOf(Lcom/linkedin/urls/UrlPart;)I

    move-result v0

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private nextExistingPart(Lcom/linkedin/urls/UrlPart;)Lcom/linkedin/urls/UrlPart;
    .locals 1

    .line 247
    invoke-virtual {p1}, Lcom/linkedin/urls/UrlPart;->getNextPart()Lcom/linkedin/urls/UrlPart;

    move-result-object p1

    .line 248
    invoke-direct {p0, p1}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_1
    invoke-direct {p0, p1}, Lcom/linkedin/urls/Url;->nextExistingPart(Lcom/linkedin/urls/UrlPart;)Lcom/linkedin/urls/UrlPart;

    move-result-object p1

    return-object p1
.end method

.method private populateUsernamePassword()V
    .locals 5

    .line 221
    sget-object v0, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v0, Lcom/linkedin/urls/UrlPart;->USERNAME_PASSWORD:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 224
    array-length v1, v0

    if-ne v1, v2, :cond_0

    .line 225
    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_username:Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_0
    array-length v1, v0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 227
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/linkedin/urls/Url;->_username:Ljava/lang/String;

    .line 228
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_password:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 204
    sget-object v0, Lcom/linkedin/urls/UrlPart;->FRAGMENT:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_fragment:Ljava/lang/String;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_fragment:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullUrl()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getFullUrlWithoutFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullUrlWithoutFragment()Ljava/lang/String;
    .locals 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "//"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ":"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "@"

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPort()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPort()I

    move-result v1

    sget-object v2, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v1, v2, :cond_3

    const-string v1, ":"

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    :cond_3
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 159
    sget-object v0, Lcom/linkedin/urls/UrlPart;->HOST:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_host:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_host:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_host:Ljava/lang/String;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_host:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_password:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/linkedin/urls/Url;->populateUsernamePassword()V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_password:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_path:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 190
    sget-object v0, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/linkedin/urls/UrlPart;->PATH:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    :goto_0
    iput-object v0, p0, Lcom/linkedin/urls/Url;->_path:Ljava/lang/String;

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 3

    .line 171
    iget v0, p0, Lcom/linkedin/urls/Url;->_port:I

    if-nez v0, :cond_2

    .line 172
    sget-object v0, Lcom/linkedin/urls/UrlPart;->PORT:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/linkedin/urls/Url;->_port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    iput v1, p0, Lcom/linkedin/urls/Url;->_port:I

    goto :goto_0

    .line 179
    :cond_0
    sget-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/linkedin/urls/Url;->SCHEME_PORT_MAP:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/linkedin/urls/Url;->_port:I

    goto :goto_0

    .line 182
    :cond_1
    iput v1, p0, Lcom/linkedin/urls/Url;->_port:I

    .line 185
    :cond_2
    :goto_0
    iget v0, p0, Lcom/linkedin/urls/Url;->_port:I

    return v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_query:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 197
    sget-object v0, Lcom/linkedin/urls/UrlPart;->QUERY:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_query:Ljava/lang/String;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_query:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 130
    sget-object v0, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->exists(Lcom/linkedin/urls/UrlPart;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/linkedin/urls/UrlPart;->SCHEME:Lcom/linkedin/urls/UrlPart;

    invoke-direct {p0, v0}, Lcom/linkedin/urls/Url;->getPart(Lcom/linkedin/urls/UrlPart;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_originalUrl:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http"

    .line 137
    iput-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    .line 140
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_scheme:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_username:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/linkedin/urls/Url;->populateUsernamePassword()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/linkedin/urls/Url;->_username:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->defaultString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/linkedin/urls/Url;->getFullUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
