.class public final enum Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;
.super Ljava/lang/Enum;
.source "Section.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/luizgrp/sectionedrecyclerviewadapter/Section;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

.field public static final enum FAILED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

.field public static final enum LOADED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

.field public static final enum LOADING:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADING:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    new-instance v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const-string v1, "FAILED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->FAILED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    sget-object v1, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADING:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    aput-object v1, v0, v2

    sget-object v1, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->LOADED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    aput-object v1, v0, v3

    sget-object v1, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->FAILED:Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    aput-object v1, v0, v4

    sput-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->$VALUES:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 13
    const-class v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    return-object p0
.end method

.method public static values()[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;
    .locals 1

    .line 13
    sget-object v0, Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->$VALUES:[Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    invoke-virtual {v0}, [Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/luizgrp/sectionedrecyclerviewadapter/Section$State;

    return-object v0
.end method
