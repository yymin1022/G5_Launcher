.class public Lcom/android/launcher3/LauncherAppWidgetInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field static final CUSTOM_WIDGET_ID:I = -0x64

.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field static final NO_ID:I = -0x1

.field public static final RESTORE_COMPLETED:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field installProgress:I

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field minHeight:I

.field minWidth:I

.field public providerName:Landroid/content/ComponentName;

.field restoreStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherAppWidgetInfo;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(ILandroid/content/ComponentName;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 93
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 67
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 72
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minWidth:I

    .line 73
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minHeight:I

    .line 83
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 94
    const/16 v0, -0x64

    if-ne p1, v0, :cond_2c

    .line 95
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    .line 100
    :goto_16
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    .line 101
    iput-object p2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 105
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    .line 106
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    .line 107
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanX:I

    .line 108
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->minSpanY:I

    .line 110
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    .line 112
    return-void

    .line 97
    :cond_2c
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->itemType:I

    goto :goto_16
.end method

.method public static ajc$get$hostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherAppWidgetInfo.java"

    const-class v2, Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "onBindAppWidget"

    const-string v3, "com.android.launcher3.LauncherAppWidgetInfo"

    const-string v4, "com.android.launcher3.Launcher"

    const-string v5, "launcher"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$hostView(Lcom/android/launcher3/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetHostView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    return-void
.end method


# virtual methods
.method public getHostView()Landroid/appwidget/AppWidgetHostView;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetInfoItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetInfoItds$com_android_launcher3_LauncherAppWidgetInfo$getHostView(Lcom/android/launcher3/LauncherAppWidgetInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public final hasRestoreFlag(I)Z
    .registers 3

    .prologue
    .line 160
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isCustomWidget()Z
    .registers 3

    .prologue
    .line 115
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isWidgetIdValid()Z
    .registers 2

    .prologue
    .line 156
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V
    .registers 5

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/Launcher;II)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 142
    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 5

    .prologue
    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 121
    const-string v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 122
    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "restored"

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    return-void
.end method

.method onBindAppWidget(Lcom/android/launcher3/Launcher;)V
    .registers 5

    .prologue
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 131
    :try_start_6
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_d

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lcom/android/launcher3/Launcher;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_d} :catch_15

    .line 134
    :cond_d
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$4$e9f7167d(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_15
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$4$e9f7167d(Lcom/android/launcher3/Launcher;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppWidget(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/android/launcher3/ItemInfo;->unbind()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 153
    return-void
.end method
