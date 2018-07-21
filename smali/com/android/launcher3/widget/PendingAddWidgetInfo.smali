.class public Lcom/android/launcher3/widget/PendingAddWidgetInfo;
.super Lcom/android/launcher3/PendingAddItemInfo;
.source "PendingAddWidgetInfo.java"


# static fields
.field public static DOWNLOADED_FLAG:I

.field public static UPDATED_SYSTEM_APP_FLAG:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field public bindOptions:Landroid/os/Bundle;

.field public boundWidget:Landroid/appwidget/AppWidgetHostView;

.field public flags:I

.field public icon:I

.field public info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

.field public minHeight:I

.field public minResizeHeight:I

.field public minResizeWidth:I

.field public minWidth:I

.field public previewImage:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PendingAddWidgetInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddWidgetInfoItds$com_android_launcher3_widget_PendingAddWidgetInfo$DOWNLOADED_FLAG()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/PendingAddWidgetInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddWidgetInfoItds$com_android_launcher3_widget_PendingAddWidgetInfo$UPDATED_SYSTEM_APP_FLAG()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V
    .registers 7

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    sget-object v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_15
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/PendingAddWidgetInfoItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_PendingAddWidgetInfoItds$com_android_launcher3_widget_PendingAddWidgetInfo$flags(Lcom/android/launcher3/widget/PendingAddWidgetInfo;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    .line 45
    iget-boolean v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_6a

    .line 46
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    .line 50
    :goto_22
    iput-object p2, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 51
    invoke-static {p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 52
    iget-object v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 53
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minWidth:I

    .line 54
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minHeight:I

    .line 55
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minResizeWidth:I

    .line 56
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minResizeHeight:I

    .line 57
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->previewImage:I

    .line 58
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->icon:I

    .line 60
    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 61
    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 62
    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanX(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 63
    invoke-virtual {p2, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getMinSpanY(Lcom/android/launcher3/Launcher;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_62} :catch_6e

    .line 64
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;->ajc$after$com_lge_launcher3_nativejoin_PendingAddWidgetInfoAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 48
    :cond_6a
    const/4 v0, 0x4

    :try_start_6b
    iput v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6d} :catch_6e

    goto :goto_22

    .line 64
    :catch_6e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PendingAddWidgetInfoAspect;->ajc$after$com_lge_launcher3_nativejoin_PendingAddWidgetInfoAspect$1$97fcc67b(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method private static ajc$preClinit()V
    .registers 7

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "PendingAddWidgetInfo.java"

    const-class v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.widget.PendingAddWidgetInfo"

    const-string v3, "com.android.launcher3.Launcher:com.android.launcher3.LauncherAppWidgetProviderInfo:android.os.Parcelable"

    const-string v4, "launcher:i:data"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method public initFlags(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)I
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/PendingAddWidgetInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_PendingAddWidgetInfoItds$com_android_launcher3_widget_PendingAddWidgetInfo$initFlags(Lcom/android/launcher3/widget/PendingAddWidgetInfo;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)I

    move-result v0

    return v0
.end method

.method public isCustomWidget()Z
    .registers 3

    .prologue
    .line 67
    iget v0, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 72
    const-string v0, "PendingAddWidgetInfo package=%s, name=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 72
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
