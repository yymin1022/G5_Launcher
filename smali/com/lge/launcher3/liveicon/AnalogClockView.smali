.class public Lcom/lge/launcher3/liveicon/AnalogClockView;
.super Landroid/widget/FrameLayout;
.source "AnalogClockView.java"


# instance fields
.field private mCenterDot:Landroid/graphics/drawable/Drawable;

.field private mHour:F

.field private mHourHand:Landroid/graphics/drawable/Drawable;

.field private mMinuteHand:Landroid/graphics/drawable/Drawable;

.field private mMinutes:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/AnalogClockView;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/lge/launcher3/liveicon/AnalogClockView;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 30
    const v1, 0x7f02001b

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    .line 31
    const v1, 0x7f02001c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    .line 32
    const v1, 0x7f02001a

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10

    .prologue
    const/high16 v7, 0x43b40000    # 360.0f

    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 58
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 60
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4f

    .line 61
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 62
    iget-object v3, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 63
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 64
    iget v4, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinutes:F

    const/high16 v5, 0x42700000    # 60.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v7

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 65
    iget-object v4, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    sub-int v3, v1, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinuteHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 70
    :cond_4f
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_83

    .line 71
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 72
    iget-object v3, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget v4, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHour:F

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v7

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 75
    iget-object v4, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    sub-int v3, v1, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    invoke-virtual {v4, v5, v3, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 76
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHourHand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    :cond_83
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_ab

    .line 81
    iget-object v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 82
    iget-object v3, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 83
    iget-object v4, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v5, v2, 0x2

    sub-int v5, v0, v5

    div-int/lit8 v6, v3, 0x2

    sub-int v6, v1, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    div-int/lit8 v2, v3, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mCenterDot:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    :cond_ab
    return-void
.end method

.method public shouldUpdate()Z
    .registers 5

    .prologue
    .line 89
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 91
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 92
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v1

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 94
    iget v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinutes:F

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-nez v1, :cond_2d

    iget v1, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHour:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x1

    goto :goto_2c
.end method

.method public update()V
    .registers 5

    .prologue
    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 38
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 39
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-float v0, v0

    int-to-float v2, v1

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v2, v3

    add-float/2addr v0, v2

    .line 41
    iget v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinutes:F

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2b

    iget v2, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHour:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_33

    .line 42
    :cond_2b
    int-to-float v1, v1

    iput v1, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mMinutes:F

    .line 43
    iput v0, p0, Lcom/lge/launcher3/liveicon/AnalogClockView;->mHour:F

    .line 44
    invoke-virtual {p0}, Lcom/lge/launcher3/liveicon/AnalogClockView;->invalidate()V

    .line 46
    :cond_33
    return-void
.end method
