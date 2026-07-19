.class public final synthetic Lcom/evie/sidescreen/-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic f$0:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;


# direct methods
.method public synthetic constructor <init>(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y;->f$0:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/evie/sidescreen/-$$Lambda$SideScreenSharedPreferencesModel$s_aV9-Ea_o9UjOeMzHs724nx61Y;->f$0:Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;

    invoke-static {v0, p1, p2}, Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;->lambda$new$0(Lcom/evie/sidescreen/SideScreenSharedPreferencesModel;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
