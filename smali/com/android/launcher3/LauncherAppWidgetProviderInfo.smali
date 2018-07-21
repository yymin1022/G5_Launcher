.class public Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "LauncherAppWidgetProviderInfo.java"


# instance fields
.field public isCustomWidget:Z

.field protected mMinSpanX:I

.field protected mMinSpanY:I

.field protected mSpanX:I

.field protected mSpanY:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 43
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 22
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    .line 23
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    .line 24
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    .line 25
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/CustomAppWidget;)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProviderInfo;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 22
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    .line 23
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    .line 24
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    .line 25
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 54
    invoke-interface {p2}, Lcom/android/launcher3/CustomAppWidget;->getIcon()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    .line 55
    invoke-interface {p2}, Lcom/android/launcher3/CustomAppWidget;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 56
    invoke-interface {p2}, Lcom/android/launcher3/CustomAppWidget;->getPreviewImage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->previewImage:I

    .line 57
    invoke-interface {p2}, Lcom/android/launcher3/CustomAppWidget;->getWidgetLayout()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialLayout:I

    .line 58
    invoke-interface {p2}, Lcom/android/launcher3/CustomAppWidget;->getResizeMode()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 22
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    .line 23
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    .line 24
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    .line 25
    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 48
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 39
    return-object v1
.end method

.method private lazyLoadSpans(Lcom/android/launcher3/Launcher;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 107
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    if-ltz v0, :cond_12

    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    if-gez v0, :cond_2a

    .line 108
    :cond_12
    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->getMinSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    .line 109
    invoke-virtual {p1, p0}, Lcom/android/launcher3/Launcher;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v1

    .line 111
    aget v2, v1, v3

    iput v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    .line 112
    aget v1, v1, v4

    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    .line 113
    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    .line 114
    aget v0, v0, v4

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    .line 116
    :cond_2a
    return-void
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_11

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 74
    :goto_10
    return-object v0

    .line 75
    :cond_11
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    .line 74
    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_10
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_b

    .line 64
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method public getMinSpanX(Lcom/android/launcher3/Launcher;)I
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->lazyLoadSpans(Lcom/android/launcher3/Launcher;)V

    .line 98
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanX:I

    return v0
.end method

.method public getMinSpanY(Lcom/android/launcher3/Launcher;)I
    .registers 3

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->lazyLoadSpans(Lcom/android/launcher3/Launcher;)V

    .line 103
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mMinSpanY:I

    return v0
.end method

.method public getSpanX(Lcom/android/launcher3/Launcher;)I
    .registers 3

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->lazyLoadSpans(Lcom/android/launcher3/Launcher;)V

    .line 88
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanX:I

    return v0
.end method

.method public getSpanY(Lcom/android/launcher3/Launcher;)I
    .registers 3

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->lazyLoadSpans(Lcom/android/launcher3/Launcher;)V

    .line 93
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->mSpanY:I

    return v0
.end method

.method public toString(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_1c

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WidgetProviderInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1b
    return-object v0

    :cond_1c
    const-string v0, "WidgetProviderInfo provider:%s package:%s short:%s label:%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 83
    iget-object v3, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 82
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1b
.end method
