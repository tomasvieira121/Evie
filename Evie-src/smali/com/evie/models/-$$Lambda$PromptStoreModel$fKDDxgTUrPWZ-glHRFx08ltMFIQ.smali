.class public final synthetic Lcom/evie/models/-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/models/PromptStoreModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/models/PromptStoreModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/models/-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ;->f$0:Lcom/evie/models/PromptStoreModel;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/models/-$$Lambda$PromptStoreModel$fKDDxgTUrPWZ-glHRFx08ltMFIQ;->f$0:Lcom/evie/models/PromptStoreModel;

    invoke-static {v0, p1, p2}, Lcom/evie/models/PromptStoreModel;->lambda$new$0(Lcom/evie/models/PromptStoreModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
