.class public Lcom/evie/sidescreen/LauncherInfo;
.super Ljava/lang/Object;
.source "LauncherInfo.java"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSettingsActivityLaunchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/evie/sidescreen/LauncherInfo;->mPackageName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/evie/sidescreen/LauncherInfo;->mSettingsActivityLaunchIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/evie/sidescreen/LauncherInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSettingsActivityLaunchIntent()Landroid/content/Intent;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/evie/sidescreen/LauncherInfo;->mSettingsActivityLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method
