.class public Lcom/lge/launcher3/liveicon/CalendarLiveIcon;
.super Lcom/lge/launcher3/liveicon/LiveIcon;
.source "CalendarLiveIcon.java"


# static fields
.field private static final ACTIVITY_COMPONENT_NAME:Ljava/lang/String; = "com.android.calendar/.AllInOneActivity"

.field private static final TAG:Ljava/lang/String; = "LiveIcon.Calendar"


# instance fields
.field private mActivityComponentName:Landroid/content/ComponentName;

.field private mCalendarView:Landroid/view/ViewGroup;

.field private mDateView:Landroid/widget/TextView;

.field private mDayOfWeekView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/LiveIcon;-><init>(Landroid/content/Context;)V

    .line 32
    const-string v0, "com.android.calendar/.AllInOneActivity"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mActivityComponentName:Landroid/content/ComponentName;

    .line 33
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 34
    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mCalendarView:Landroid/view/ViewGroup;

    .line 35
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mCalendarView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0096

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDayOfWeekView:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mCalendarView:Landroid/view/ViewGroup;

    const v1, 0x7f0e0097

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDateView:Landroid/widget/TextView;

    .line 37
    return-void
.end method

.method private getDate()Ljava/lang/String;
    .registers 7

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDayOfWeek()Ljava/lang/String;
    .registers 4

    .prologue
    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 52
    sget-object v0, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 53
    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 54
    :cond_24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 59
    :goto_2b
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 60
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_2b
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mActivityComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method protected getIcon()Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 46
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mCalendarView:Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/Utilities;->loadBitmapFromView(Landroid/view/View;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected getIntentFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    return-object v0
.end method

.method protected shouldUpdate()Z
    .registers 3

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->getDayOfWeek()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDayOfWeekView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 73
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->getDate()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 72
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    const-string v0, "LiveIcon.Calendar"

    return-object v0
.end method

.method protected updateIconImpl()V
    .registers 3

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->getDayOfWeek()Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDayOfWeekView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 80
    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDayOfWeekView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_15
    invoke-direct {p0}, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->getDate()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 85
    iget-object v1, p0, Lcom/lge/launcher3/liveicon/CalendarLiveIcon;->mDateView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_2a
    return-void
.end method
