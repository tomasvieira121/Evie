.class public Lcom/linkedin/urls/detection/InputTextReader;
.super Ljava/lang/Object;
.source "InputTextReader.java"


# instance fields
.field private final _content:[C

.field private _index:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    return-void
.end method


# virtual methods
.method public canReadChars(I)Z
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    array-length v0, v0

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/2addr v1, p1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public eof()Z
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    array-length v0, v0

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    return v0
.end method

.method public goBack()V
    .locals 1

    .line 102
    iget v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    return-void
.end method

.method public peek(I)Ljava/lang/String;
    .locals 3

    .line 49
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v2, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public peekChar(I)C
    .locals 2

    .line 58
    invoke-virtual {p0, p1}, Lcom/linkedin/urls/detection/InputTextReader;->canReadChars(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/2addr v1, p1

    aget-char p1, v0, v1

    return p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public read()C
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/linkedin/urls/detection/InputTextReader;->_content:[C

    iget v1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    aget-char v0, v0, v1

    .line 41
    invoke-static {v0}, Lcom/linkedin/urls/detection/CharUtils;->isWhiteSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x20

    :cond_0
    return v0
.end method

.method public seek(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/linkedin/urls/detection/InputTextReader;->_index:I

    return-void
.end method
