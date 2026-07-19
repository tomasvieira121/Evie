.class public final Lcom/evie/common/iconpack/shader/ShaderInstruction;
.super Ljava/lang/Object;
.source "ShaderInstruction.java"


# instance fields
.field public final hasValue:Z

.field public final inputChannel:I

.field public final inputRegister:I

.field public final mode:I

.field public final targetChannel:I

.field public final targetRegister:I

.field public final value:F


# direct methods
.method public constructor <init>(IIIIIZF)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    .line 73
    iput p2, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetChannel:I

    .line 74
    iput p3, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->mode:I

    .line 75
    iput p4, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputRegister:I

    .line 76
    iput p5, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputChannel:I

    .line 77
    iput-boolean p6, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->hasValue:Z

    .line 78
    iput p7, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->value:F

    return-void
.end method


# virtual methods
.method public verify()Z
    .locals 5

    .line 82
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    return v3

    .line 85
    :cond_0
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->targetRegister:I

    if-ltz v0, :cond_8

    const/4 v4, 0x3

    if-le v0, v4, :cond_1

    goto :goto_2

    .line 89
    :cond_1
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->mode:I

    if-ltz v0, :cond_7

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    goto :goto_1

    .line 93
    :cond_2
    iget-boolean v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->hasValue:Z

    if-nez v0, :cond_6

    .line 94
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputRegister:I

    if-ltz v0, :cond_5

    if-le v0, v1, :cond_3

    goto :goto_0

    .line 98
    :cond_3
    iget v0, p0, Lcom/evie/common/iconpack/shader/ShaderInstruction;->inputChannel:I

    if-ltz v0, :cond_4

    const/4 v1, 0x5

    if-le v0, v1, :cond_6

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v3

    :cond_6
    return v2

    :cond_7
    :goto_1
    return v3

    :cond_8
    :goto_2
    return v3
.end method
