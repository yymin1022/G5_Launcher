.class public abstract Lcom/android/launcher3/compat/AppWidgetManagerCompat;
.super Ljava/lang/Object;
.source "AppWidgetManagerCompat.java"


# static fields
.field private static sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field final mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;
    .registers 4

    .prologue
    .line 41
    sget-object v1, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_3
    sget-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    if-nez v0, :cond_18

    .line 43
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 44
    new-instance v0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 49
    :cond_18
    :goto_18
    sget-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    monitor-exit v1

    return-object v0

    .line 46
    :cond_1c
    new-instance v0, Lcom/android/launcher3/compat/AppWidgetManagerCompatV16;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/launcher3/compat/AppWidgetManagerCompatV16;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->sInstance:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    goto :goto_18

    .line 41
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method


# virtual methods
.method public abstract bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
.end method

.method public abstract getAllProviders()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, p1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public abstract getBadgeBitmap(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
.end method

.method public abstract getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;
.end method

.method public abstract loadIcon(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadLabel(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
.end method

.method public abstract loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
.end method
