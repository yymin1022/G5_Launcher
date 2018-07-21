.class public Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;
.super Ljava/lang/Object;
.source "ShortcutInfoItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    .line 17
    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->id:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->id:J

    .line 18
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 19
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 20
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->spanX:I

    .line 21
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->spanY:I

    .line 22
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->minSpanX:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->minSpanX:I

    .line 23
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->minSpanY:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->minSpanY:I

    .line 24
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->rank:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->rank:I

    .line 25
    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->screenId:J

    .line 26
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    .line 27
    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->container:J

    .line 28
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 29
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    .line 31
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 32
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$intent(Lcom/android/launcher3/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$intent(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;)V

    .line 33
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_63

    .line 34
    new-instance v0, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v0}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 35
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, p1, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v1, v1, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .line 38
    :cond_63
    invoke-static {p1}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$mIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$mIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 39
    iget-boolean v0, p1, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    iput-boolean v0, p0, Lcom/android/launcher3/ShortcutInfo;->customIcon:Z

    .line 40
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    .line 41
    iget-wide v0, p1, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/ShortcutInfo;->firstInstallTime:J

    .line 42
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iput-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 43
    invoke-static {p1}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$status(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/ShortcutInfo;->ajc$set$status(Lcom/android/launcher3/ShortcutInfo;I)V

    .line 45
    invoke-static {p1}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 46
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getCushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 49
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 50
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    :goto_a
    return-object v0

    .line 54
    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    if-eqz v0, :cond_20

    .line 55
    iget-object v0, p0, Lcom/android/launcher3/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iget-object v0, v0, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 60
    :goto_13
    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$mIcon(Lcom/android/launcher3/ShortcutInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/lge/launcher3/util/DDTUtils;->convertToCushionIcon(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 61
    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_a

    .line 57
    :cond_20
    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$intent(Lcom/android/launcher3/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/IntentUtils;->getTargetPackage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getDisabled(Lcom/android/launcher3/ShortcutInfo;)I
    .registers 2

    .prologue
    .line 69
    invoke-static {p0}, Lcom/android/launcher3/ShortcutInfo;->ajc$get$isDisabled(Lcom/android/launcher3/ShortcutInfo;)I

    move-result v0

    return v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$resetCushionIcon(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$cushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/graphics/Bitmap;)V

    .line 66
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$copyFrom(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->copyFrom(Lcom/android/launcher3/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getCushionIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/ShortcutInfo;->getCushionIcon(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$getDisabled(Lcom/android/launcher3/ShortcutInfo;)I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getDisabled()I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ShortcutInfoItds$com_android_launcher3_ShortcutInfo$resetCushionIcon(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->resetCushionIcon()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_ShortcutInfoItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/ShortcutInfoItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
