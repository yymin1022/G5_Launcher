.class public Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;
.super Ljava/lang/Object;
.source "ScreenEffectUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScrollDirection:[I

.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScrollDirection()[I
    .registers 3

    .prologue
    .line 17
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScrollDirection:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_2e

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_2c

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->TO_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_2a

    :goto_27
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScrollDirection:[I

    goto :goto_4

    :catch_2a
    move-exception v1

    goto :goto_27

    :catch_2c
    move-exception v1

    goto :goto_1e

    :catch_2e
    move-exception v1

    goto :goto_15
.end method

.method static synthetic $SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I
    .registers 3

    .prologue
    .line 17
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NONE:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_44

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_42

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_40

    :goto_27
    :try_start_27
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_3e

    :goto_30
    :try_start_30
    sget-object v1, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    invoke-virtual {v1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_3c

    :goto_39
    sput-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw:[I

    goto :goto_4

    :catch_3c
    move-exception v1

    goto :goto_39

    :catch_3e
    move-exception v1

    goto :goto_30

    :catch_40
    move-exception v1

    goto :goto_27

    :catch_42
    move-exception v1

    goto :goto_1e

    :catch_44
    move-exception v1

    goto :goto_15
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getFixedChlidGap(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFF)F
    .registers 7

    .prologue
    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 97
    :goto_e
    return v0

    .line 84
    :pswitch_f
    const/high16 v0, -0x40800000    # -1.0f

    mul-float/2addr v0, p2

    mul-float/2addr v0, p3

    mul-float/2addr v0, p1

    .line 85
    goto :goto_e

    .line 88
    :pswitch_15
    mul-float v0, p2, p3

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    .line 89
    goto :goto_e

    .line 82
    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_f
        :pswitch_15
    .end packed-switch
.end method

.method public static final getProgressiveChildGap(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFFFF)F
    .registers 11

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x40000000    # 2.0f

    .line 113
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$WhichPageToDraw()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_50

    .line 134
    const/4 v0, 0x0

    .line 137
    :goto_14
    return v0

    .line 115
    :pswitch_15
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_29

    .line 116
    mul-float v0, v2, p1

    float-to-double v0, v0

    float-to-double v2, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    .line 138
    :goto_23
    add-float/2addr v0, p3

    .line 137
    invoke-static {p0, p1, p2, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getFixedChlidGap(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFF)F

    move-result v0

    goto :goto_14

    .line 118
    :cond_29
    sub-float v0, v4, p1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    float-to-double v2, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    .line 120
    goto :goto_23

    .line 123
    :pswitch_35
    cmpl-float v0, p1, v3

    if-ltz v0, :cond_45

    .line 124
    sub-float v0, v4, p1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    float-to-double v2, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    .line 125
    goto :goto_23

    .line 126
    :cond_45
    mul-float v0, v2, p1

    float-to-double v0, v0

    float-to-double v2, p5

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, p4

    .line 128
    goto :goto_23

    .line 113
    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_15
        :pswitch_35
    .end packed-switch
.end method

.method public static final getProgressivePageAlpha(Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;FFFII)I
    .registers 10

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 156
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->$SWITCH_TABLE$com$lge$launcher3$screeneffect$ScreenEffectConst$ScrollDirection()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScrollDirection;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_40

    .line 183
    :cond_f
    :goto_f
    return p5

    .line 159
    :pswitch_10
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->NORMAL_RIGHT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-eq p1, v0, :cond_18

    .line 160
    sget-object v0, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;->OVERSCROLL_LEFT:Lcom/lge/launcher3/screeneffect/ScreenEffectConst$WhichPageToDraw;

    if-ne p1, v0, :cond_1a

    .line 161
    :cond_18
    sub-float p2, v2, p2

    .line 170
    :cond_1a
    cmpl-float v0, p3, p4

    if-gtz v0, :cond_f

    .line 174
    cmpg-float v0, p2, p3

    if-gez v0, :cond_27

    move v0, p5

    .line 183
    :goto_23
    if-lez v0, :cond_3e

    :goto_25
    move p5, v0

    goto :goto_f

    .line 176
    :cond_27
    cmpg-float v0, p3, p2

    if-gtz v0, :cond_3c

    cmpg-float v0, p2, p4

    if-gtz v0, :cond_3c

    .line 177
    invoke-static {p2, p3, p4}, Lcom/lge/launcher3/util/MathFunctionUtils;->normalize(FFF)F

    move-result v0

    .line 178
    int-to-float v1, p5

    sub-float/2addr v2, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, p6

    mul-float/2addr v0, v2

    float-to-int v0, v0

    add-int/2addr v0, v1

    .line 179
    goto :goto_23

    :cond_3c
    move v0, p6

    .line 180
    goto :goto_23

    .line 183
    :cond_3e
    const/4 v0, 0x1

    goto :goto_25

    .line 156
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public static final getScreenEffectList(Landroid/content/Context;)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getScreenEffectType(Landroid/content/Context;I)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 3

    .prologue
    .line 44
    invoke-static {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    aget-object v0, v0, p1

    invoke-static {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectType(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    return-object v0
.end method

.method public static final getScreenEffectType(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 8

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->values()[Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v3

    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-lt v2, v4, :cond_c

    move-object v0, v1

    .line 61
    :cond_b
    return-object v0

    .line 55
    :cond_c
    aget-object v0, v3, v2

    .line 56
    invoke-virtual {v0, p0, p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;->equals(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 55
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8
.end method

.method public static final getSelectedScreenEffectText(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 33
    invoke-static {p0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getSelectedScreenEffect(Landroid/content/Context;)I

    move-result v0

    .line 34
    invoke-static {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    .line 35
    aget-object v0, v1, v0

    return-object v0
.end method

.method public static final getSelectedScreenEffectType(Landroid/content/Context;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getSelectedScreenEffectText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-static {p0, v0}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectType(Landroid/content/Context;Ljava/lang/String;)Lcom/lge/launcher3/screeneffect/ScreenEffectConst$ScreenEffectType;

    move-result-object v0

    return-object v0
.end method
