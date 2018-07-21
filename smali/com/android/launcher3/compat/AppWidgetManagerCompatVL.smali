.class Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;
.super Lcom/android/launcher3/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 56
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    .line 57
    return-void
.end method


# virtual methods
.method public bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z
    .registers 7

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 77
    invoke-virtual {p2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 76
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/os/UserHandle;Landroid/content/ComponentName;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_16

    .line 65
    return-object v1

    .line 62
    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 63
    iget-object v3, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v3, v0}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_f
.end method

.method public getBadgeBitmap(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 113
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-nez v0, :cond_13

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 142
    :cond_13
    :goto_13
    return-object p2

    .line 118
    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 119
    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 120
    const v2, 0x7f090078

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 121
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v6, v6, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 123
    sub-int v4, p3, v1

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 124
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5b

    .line 125
    invoke-virtual {v3, v6, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 130
    :goto_41
    iget-object v1, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    .line 131
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v2, v0, v3, v6}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 133
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_65

    .line 134
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto :goto_13

    .line 127
    :cond_5b
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int v1, v4, v1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_41

    .line 137
    :cond_65
    invoke-virtual {p2, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 138
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 139
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v0, v6, v6, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_13
.end method

.method public getUser(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/compat/UserHandleCompat;
    .registers 3

    .prologue
    .line 82
    iget-boolean v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_9

    .line 83
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    .line 85
    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v0

    goto :goto_8
.end method

.method public loadIcon(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getIcon(Landroid/content/Context;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/launcher3/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .registers 14

    .prologue
    const v7, 0x7f0f001e

    const/4 v6, 0x0

    .line 92
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p2

    move v4, p5

    :try_start_a
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_d} :catch_17

    .line 98
    :goto_d
    return-void

    .line 94
    :catch_e
    move-exception v0

    invoke-static {p3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    .line 96
    :catch_17
    move-exception v0

    invoke-static {p3, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d
.end method
