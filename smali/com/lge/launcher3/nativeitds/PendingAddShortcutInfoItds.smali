.class public Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;
.super Ljava/lang/Object;
.source "PendingAddShortcutInfoItds.aj"


# annotations
.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$DOWNLOADED_FLAG()I
    .registers 1

    sget v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->DOWNLOADED_FLAG:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$UPDATED_SYSTEM_APP_FLAG()I
    .registers 1

    sget v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->UPDATED_SYSTEM_APP_FLAG:I

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$flags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)I
    .registers 2

    iget v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->flags:I

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$DOWNLOADED_FLAG()V
    .registers 1

    .prologue
    .line 7
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$DOWNLOADED_FLAG(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$UPDATED_SYSTEM_APP_FLAG()V
    .registers 1

    .prologue
    .line 8
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$UPDATED_SYSTEM_APP_FLAG(I)V

    return-void
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$flags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V
    .registers 2

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$flags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;I)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$DOWNLOADED_FLAG(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->DOWNLOADED_FLAG:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$UPDATED_SYSTEM_APP_FLAG(I)V
    .registers 1

    sput p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->UPDATED_SYSTEM_APP_FLAG:I

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$flags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->flags:I

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$initFlags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 5

    .prologue
    .line 13
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 14
    const/4 v0, 0x0

    .line 15
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_13

    .line 16
    sget v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->DOWNLOADED_FLAG:I

    or-int/2addr v0, v2

    .line 18
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_13

    .line 19
    sget v1, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->UPDATED_SYSTEM_APP_FLAG:I

    or-int/2addr v0, v1

    .line 22
    :cond_13
    return v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds$com_android_launcher3_widget_PendingAddShortcutInfo$initFlags(Lcom/android/launcher3/widget/PendingAddShortcutInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->initFlags(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_PendingAddShortcutInfoItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/PendingAddShortcutInfoItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
