.class public Lcom/lge/launcher3/hotword/HotwordServiceItds;
.super Ljava/lang/Object;
.source "HotwordServiceItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final GOOGLE_SEARCH_WIDGET_CLASSNAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchWidgetProvider"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceItds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 12
    :goto_3
    return-void

    .line 10
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mEnableHotwordService:Z

    return v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interFieldSetDispatch$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;Z)V

    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$mEnableHotwordService(Lcom/android/launcher3/CellLayout;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mEnableHotwordService:Z

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$enableHotwordServiceIfNeeded(Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 17
    invoke-static {p0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$interMethodDispatch1$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$hasOkGoogleWidget(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mEnableHotwordService:Z

    .line 18
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$hasOkGoogleWidget(Lcom/android/launcher3/CellLayout;)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    move v1, v2

    .line 22
    :goto_6
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lt v1, v0, :cond_d

    .line 38
    :goto_c
    return v2

    .line 23
    :cond_d
    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 24
    instance-of v4, v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    if-nez v4, :cond_19

    .line 22
    :cond_15
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    .line 28
    :cond_19
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 29
    if-eqz v0, :cond_15

    iget-object v4, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v4, :cond_15

    .line 33
    const-string v4, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    iget-object v0, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 34
    const/4 v2, 0x1

    goto :goto_c
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$enableHotwordServiceIfNeeded(Lcom/android/launcher3/CellLayout;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->enableHotwordServiceIfNeeded()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_hotword_HotwordServiceItds$com_android_launcher3_CellLayout$hasOkGoogleWidget(Lcom/android/launcher3/CellLayout;)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->hasOkGoogleWidget()Z

    move-result v0

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;

    invoke-direct {v0}, Lcom/lge/launcher3/hotword/HotwordServiceItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceItds;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/hotword/HotwordServiceItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_hotword_HotwordServiceItds"

    sget-object v2, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/hotword/HotwordServiceItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/hotword/HotwordServiceItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
