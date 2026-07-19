.class Lcom/evie/sidescreen/SideScreenConfiguration$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "SideScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/sidescreen/SideScreenConfiguration;->getConfigTabs()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/evie/models/config/ConfigTab;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/SideScreenConfiguration;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/SideScreenConfiguration;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenConfiguration$1;->this$0:Lcom/evie/sidescreen/SideScreenConfiguration;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
