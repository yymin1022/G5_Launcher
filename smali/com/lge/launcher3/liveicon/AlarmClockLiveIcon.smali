.class public Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;
.super Lcom/lge/launcher3/liveicon/LiveIcon;
.source "AlarmClockLiveIcon.java"


# static fields
.field private static final ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.lge.clock/com.lge.clock.AlarmClockActivity"

.field private static final TAG:Ljava/lang/String; = "LiveIcon.AlarmClock"


# instance fields
.field private mActivityComponentName:Landroid/content/ComponentName;

.field private mAnalogClockView:Lcom/lge/launcher3/liveicon/AnalogClockView;

.field private mIcon:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/LiveIcon;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "com.lge.clock/com.lge.clock.AlarmClockActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mActivityComponentName:Landroid/content/ComponentName;

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 28
    const v1, 0x7f04002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/liveicon/AnalogClockView;

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mAnalogClockView:Lcom/lge/launcher3/liveicon/AnalogClockView;

    .line 29
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->updateIconImpl()V

    .line 30
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mActivityComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getIcon()Landroid/graphics/drawable/Drawable;
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    .line 40
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    return-object v0
.end method

.method protected shouldUpdate()Z
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mAnalogClockView:Lcom/lge/launcher3/liveicon/AnalogClockView;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->shouldUpdate()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string v0, "LiveIcon.AlarmClock"

    return-object v0
.end method

.method protected updateIconImpl()V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mAnalogClockView:Lcom/lge/launcher3/liveicon/AnalogClockView;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->update()V

    .line 48
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mAnalogClockView:Lcom/lge/launcher3/liveicon/AnalogClockView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/Utilities;->loadBitmapFromView(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/AlarmClockLiveIcon;->mIcon:Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method
