.class Lcom/evie/search/local/ContactUpdater$1;
.super Landroid/database/ContentObserver;
.source "ContactUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/evie/search/local/ContactUpdater;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/search/local/ContactUpdater;


# direct methods
.method constructor <init>(Lcom/evie/search/local/ContactUpdater;Landroid/os/Handler;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/evie/search/local/ContactUpdater$1;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 36
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 37
    iget-object p1, p0, Lcom/evie/search/local/ContactUpdater$1;->this$0:Lcom/evie/search/local/ContactUpdater;

    invoke-static {p1}, Lcom/evie/search/local/ContactUpdater;->access$000(Lcom/evie/search/local/ContactUpdater;)V

    return-void
.end method
