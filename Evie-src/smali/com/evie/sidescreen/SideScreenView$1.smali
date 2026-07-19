.class Lcom/evie/sidescreen/SideScreenView$1;
.super Ljava/lang/Object;
.source "SideScreenView.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evie/sidescreen/SideScreenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/evie/sidescreen/SideScreenView;


# direct methods
.method constructor <init>(Lcom/evie/sidescreen/SideScreenView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/evie/sidescreen/SideScreenView$1;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/evie/sidescreen/SideScreenView$1;->this$0:Lcom/evie/sidescreen/SideScreenView;

    invoke-static {v0}, Lcom/evie/sidescreen/SideScreenView;->access$100(Lcom/evie/sidescreen/SideScreenView;)Lcom/evie/sidescreen/SideScreenPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evie/sidescreen/SideScreenPresenter;->onTabClick(I)V

    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
