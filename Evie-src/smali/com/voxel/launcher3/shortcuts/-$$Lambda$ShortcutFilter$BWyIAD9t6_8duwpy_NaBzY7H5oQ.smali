.class public final synthetic Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;

    invoke-direct {v0}, Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;-><init>()V

    sput-object v0, Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;->INSTANCE:Lcom/voxel/launcher3/shortcuts/-$$Lambda$ShortcutFilter$BWyIAD9t6_8duwpy_NaBzY7H5oQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    check-cast p2, Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;

    invoke-static {p1, p2}, Lcom/voxel/launcher3/shortcuts/ShortcutFilter;->lambda$static$0(Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;Lcom/voxel/launcher3/shortcuts/DeepShortcutInfoCompat;)I

    move-result p1

    return p1
.end method
