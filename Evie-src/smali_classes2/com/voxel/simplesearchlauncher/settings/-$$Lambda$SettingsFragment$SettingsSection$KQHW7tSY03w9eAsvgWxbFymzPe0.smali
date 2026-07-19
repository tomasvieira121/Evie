.class public final synthetic Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

.field private final synthetic f$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;


# direct methods
.method public synthetic constructor <init>(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;->f$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    iput-object p2, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;->f$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;->f$0:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;

    iget-object v1, p0, Lcom/voxel/simplesearchlauncher/settings/-$$Lambda$SettingsFragment$SettingsSection$KQHW7tSY03w9eAsvgWxbFymzPe0;->f$1:Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;

    invoke-static {v0, v1, p1}, Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;->lambda$onBindItemViewHolder$9(Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsSection;Lcom/voxel/simplesearchlauncher/settings/SettingsFragment$SettingsItemType;Landroid/view/View;)V

    return-void
.end method
