.class public Lcom/lge/launcher3/dragndrop/ItemInfoAspect;
.super Ljava/lang/Object;
.source "ItemInfoAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/ItemInfoAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddFromClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddFromClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    .line 30
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 31
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddToClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    .line 25
    const-string v0, "intent"

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 26
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddFromClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 18
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 19
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    .line 20
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 13
    const-string v0, "itemType"

    iget v1, p0, Lcom/android/launcher3/ItemInfo;->itemType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 15
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddFromClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddFromClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    .line 50
    const-string v0, "intent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$intent(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;)V

    .line 51
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-static {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$mIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 55
    const-string v0, "iconPackage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_36

    .line 58
    new-instance v1, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v1}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v0, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    const-string v1, "iconResource"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 66
    :cond_36
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddToClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V

    .line 35
    const-string v0, "intent"

    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$intent(Lcom/android/launcher3/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 36
    const-string v0, "icon"

    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$mIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 38
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_2b

    .line 39
    const-string v0, "iconPackage"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v0, "iconResource"

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2b
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddFromClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppInfo;->onAddFromClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddToClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AppInfo;->onAddToClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddFromClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddFromClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ItemInfo$onAddToClipData(Lcom/android/launcher3/ItemInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddToClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddFromClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->onAddFromClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_ShortcutInfo$onAddToClipData(Lcom/android/launcher3/ShortcutInfo;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->onAddToClipData(Landroid/os/Bundle;)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/ItemInfoAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/dragndrop/ItemInfoAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/ItemInfoAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_dragndrop_ItemInfoAspect"

    sget-object v2, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/ItemInfoAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/dragndrop/ItemInfoAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
