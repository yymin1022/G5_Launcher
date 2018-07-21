.class public Lcom/android/launcher3/BubbleTextView;
.super Lcom/lge/launcher3/badge/BadgeTextView;
.source "BubbleTextView.java"

# interfaces
.implements Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$FastScrollFocusableView;
.implements Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;
    }
.end annotation


# static fields
.field public static final DISPLAY_ALL_APPS:I = 0x1

.field public static final DISPLAY_WORKSPACE:I = 0x0

.field private static final FAST_SCROLL_FOCUS_FADE_IN_DURATION:I = 0xaf

.field private static final FAST_SCROLL_FOCUS_FADE_OUT_DURATION:I = 0x7d

.field private static final FAST_SCROLL_FOCUS_MAX_SCALE:F = 1.15f

.field private static final FAST_SCROLL_FOCUS_MODE_DRAW_CIRCLE_BG:I = 0x2

.field private static final FAST_SCROLL_FOCUS_MODE_NONE:I = 0x0

.field private static final FAST_SCROLL_FOCUS_MODE_SCALE_ICON:I = 0x1

.field private static final SHADOW_LARGE_COLOUR:I = 0x33303030

.field private static final SHADOW_LARGE_RADIUS:F = 5.0f

.field private static final SHADOW_SMALL_COLOUR:I = -0x7fcfcfd0

.field private static final SHADOW_SMALL_RADIUS:F = 1.5f

.field private static final SHADOW_SMALL_Y_OFFSET:F = 2.5f

.field private static final SHADOW_Y_OFFSET:F

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sPreloaderThemes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/res/Resources$Theme;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z

.field private final mCustomShadowsEnabled:Z

.field private final mDeferShadowGenerationOnTouch:Z

.field private mDisableRelayout:Z

.field private mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

.field private mFastScrollFocusBgPaint:Landroid/graphics/Paint;

.field private mFastScrollFocusFraction:F

.field private mFastScrollFocused:Z

.field private final mFastScrollMode:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

.field private final mIconSize:I

.field private mIgnorePressedStateChange:Z

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutHorizontal:Z

.field private final mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private final mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

.field private mPressedBackground:Landroid/graphics/Bitmap;

.field private mSlop:F

.field private mStayPressed:Z

.field private final mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTextColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    invoke-static {}, Lcom/android/launcher3/BubbleTextView;->ajc$preClinit()V

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 20

    .prologue
    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v5}, Lcom/lge/launcher3/badge/BadgeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static {v3, v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v17

    .line 94
    const/4 v3, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 100
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/BubbleTextView;->mFastScrollMode:I

    .line 114
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v3, v0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 118
    sget-object v3, Lcom/lge/launcher3/R$styleable;->BubbleTextView:[I

    const/4 v7, 0x0

    .line 117
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v3, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 119
    const/4 v3, 0x4

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 120
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 122
    const/4 v3, 0x3

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 121
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 124
    const/4 v3, 0x2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    .line 125
    iget v3, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 126
    if-nez v5, :cond_120

    .line 127
    const/4 v5, 0x0

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 133
    :cond_6a
    :goto_6a
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 136
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v3, :cond_130

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_8a
    new-instance v3, Lcom/android/launcher3/CheckLongPressHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 147
    new-instance v3, Lcom/android/launcher3/StylusEventHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v3, :cond_108

    .line 151
    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x33303030

    sget-object v3, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v10

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v16, v9

    invoke-static/range {v3 .. v16}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody1$advice(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 161
    :cond_108
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_115
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_115} :catch_137

    .line 162
    nop

    .line 106
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 128
    :cond_120
    const/4 v7, 0x1

    if-ne v5, v7, :cond_6a

    .line 129
    const/4 v3, 0x0

    :try_start_124
    iget v5, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 130
    iget v3, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto/16 :goto_6a

    .line 143
    :cond_130
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_124 .. :try_end_135} :catch_137

    goto/16 :goto_8a

    .line 106
    :catch_137
    move-exception v3

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V

    throw v3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 22

    .prologue
    .line 109
    const/4 v5, 0x0

    .line 113
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v5}, Lcom/lge/launcher3/badge/BadgeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v4, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-static {v4, v0, v1, v2, v3}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v18

    .line 94
    const/4 v4, 0x0

    :try_start_19
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 100
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/BubbleTextView;->mFastScrollMode:I

    .line 114
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v4, v0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 118
    sget-object v4, Lcom/lge/launcher3/R$styleable;->BubbleTextView:[I

    const/4 v7, 0x0

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 119
    const/4 v4, 0x4

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 120
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 122
    const/4 v4, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 121
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 124
    const/4 v4, 0x2

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    .line 125
    iget v4, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 126
    if-nez v7, :cond_133

    .line 127
    const/4 v7, 0x0

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 133
    :cond_6f
    :goto_6f
    const/4 v6, 0x1

    invoke-virtual {v5, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 136
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v4, :cond_143

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_8f
    new-instance v4, Lcom/android/launcher3/CheckLongPressHelper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 147
    new-instance v4, Lcom/android/launcher3/StylusEventHelper;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 150
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v4, :cond_10e

    .line 151
    const/high16 v6, 0x40a00000    # 5.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x33303030

    sget-object v4, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x1

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x2

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v10

    const/4 v10, 0x3

    invoke-static {v9}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v5, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v4, v0, v1, v5}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v10

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v11

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-static {v9}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    const/16 v16, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    move-object/from16 v17, v10

    invoke-static/range {v4 .. v17}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody1$advice(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 161
    :cond_10e
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_11b
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_11b} :catch_14a

    .line 162
    nop

    .line 110
    :try_start_11c
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V
    :try_end_125
    .catch Ljava/lang/Throwable; {:try_start_11c .. :try_end_125} :catch_155

    invoke-static {}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$after$com_lge_launcher3_nativejoin_BubbleTextViewAspect$1$9398dc72(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 128
    :cond_133
    const/4 v8, 0x1

    if-ne v7, v8, :cond_6f

    .line 129
    const/4 v4, 0x0

    :try_start_137
    iget v7, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v7}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 130
    iget v4, v6, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto/16 :goto_6f

    .line 143
    :cond_143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_148
    .catch Ljava/lang/Throwable; {:try_start_137 .. :try_end_148} :catch_14a

    goto/16 :goto_8f

    .line 110
    :catch_14a
    move-exception v4

    :try_start_14b
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V

    throw v4
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_14b .. :try_end_155} :catch_155

    :catch_155
    move-exception v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-virtual {v5, v0, v1, v2}, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$after$com_lge_launcher3_nativejoin_BubbleTextViewAspect$1$9398dc72(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aspectj/lang/JoinPoint;)V

    throw v4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 22

    .prologue
    .line 113
    invoke-direct/range {p0 .. p3}, Lcom/lge/launcher3/badge/BadgeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v3, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    invoke-static/range {p3 .. p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v17

    .line 94
    const/4 v3, 0x0

    :try_start_1e
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 100
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/BubbleTextView;->mFastScrollMode:I

    .line 114
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/launcher3/Launcher;

    move-object v3, v0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    .line 118
    sget-object v3, Lcom/lge/launcher3/R$styleable;->BubbleTextView:[I

    const/4 v5, 0x0

    .line 117
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v3, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 119
    const/4 v3, 0x4

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    .line 120
    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    .line 122
    const/4 v3, 0x3

    const/4 v6, 0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 121
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    .line 124
    const/4 v3, 0x2

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    .line 125
    iget v3, v4, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 126
    if-nez v6, :cond_12b

    .line 127
    const/4 v6, 0x0

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v4}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 133
    :cond_76
    :goto_76
    const/4 v4, 0x1

    invoke-virtual {v5, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    .line 136
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v3, :cond_13b

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 141
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :goto_96
    new-instance v3, Lcom/android/launcher3/CheckLongPressHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 147
    new-instance v3, Lcom/android/launcher3/StylusEventHelper;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/HolographicOutlineHelper;->obtain(Landroid/content/Context;)Lcom/android/launcher3/HolographicOutlineHelper;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    .line 150
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-eqz v3, :cond_114

    .line 151
    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x33303030

    sget-object v3, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x1

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x2

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    const/4 v9, 0x3

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v4, v9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-static {v3, v0, v1, v4}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v9

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v10

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-static {v6}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-static {v7}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-static {v8}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v16, v9

    invoke-static/range {v3 .. v16}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody1$advice(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 161
    :cond_114
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/BubbleTextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_121
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_121} :catch_142

    .line 162
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 128
    :cond_12b
    const/4 v7, 0x1

    if-ne v6, v7, :cond_76

    .line 129
    const/4 v3, 0x0

    :try_start_12f
    iget v6, v4, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:I

    int-to-float v6, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher3/BubbleTextView;->setTextSize(IF)V

    .line 130
    iget v3, v4, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    goto/16 :goto_76

    .line 143
    :cond_13b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_12f .. :try_end_140} :catch_142

    goto/16 :goto_96

    .line 162
    :catch_142
    move-exception v3

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V

    throw v3
.end method

.method public static ajc$get$SHADOW_LARGE_RADIUS()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "BubbleTextView.java"

    const-class v2, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "setShadowLayer"

    const-string v3, "com.android.launcher3.BubbleTextView"

    const-string v4, "float:float:float:int"

    const-string v5, "radius:dx:dy:color"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x97

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "setShadowLayer"

    const-string v3, "android.text.TextPaint"

    const-string v4, "float:float:float:int"

    const-string v5, "radius:dx:dy:shadowColor"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1a8

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "setShadowLayer"

    const-string v3, "android.text.TextPaint"

    const-string v4, "float:float:float:int"

    const-string v5, "radius:dx:dy:shadowColor"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1ad

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onAttachedToWindow"

    const-string v3, "com.android.launcher3.BubbleTextView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1b4

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onDetachedFromWindow"

    const-string v3, "com.android.launcher3.BubbleTextView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1c0

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.BubbleTextView"

    const-string v3, "android.content.Context"

    const-string v4, "context"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.BubbleTextView"

    const-string v3, "android.content.Context:android.util.AttributeSet"

    const-string v4, "context:attrs"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.BubbleTextView"

    const-string v3, "android.content.Context:android.util.AttributeSet:int"

    const-string v4, "context:attrs:defStyle"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x70

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$SHADOW_LARGE_RADIUS(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/BubbleTextView;->SHADOW_LARGE_RADIUS:F

    return-void
.end method

.method private getPreloaderTheme()Landroid/content/res/Resources$Theme;
    .registers 5

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_34

    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_34

    .line 509
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    iget-wide v0, v0, Lcom/android/launcher3/ShortcutInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    const v0, 0x7f10000f

    move v1, v0

    .line 511
    :goto_18
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources$Theme;

    .line 512
    if-nez v0, :cond_33

    .line 513
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 514
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 515
    sget-object v2, Lcom/android/launcher3/BubbleTextView;->sPreloaderThemes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 517
    :cond_33
    return-object v0

    .line 510
    :cond_34
    const v0, 0x7f10000e

    move v1, v0

    goto :goto_18
.end method

.method private setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 525
    iput-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 526
    const/4 v0, -0x1

    if-eq p2, v0, :cond_c

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 529
    :cond_c
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz v0, :cond_22

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1c

    .line 531
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 538
    :goto_1b
    return-object p1

    .line 533
    :cond_1c
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b

    .line 536
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1b
.end method

.method private static final setShadowLayer_aroundBody0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    .line 151
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method private static final setShadowLayer_aroundBody1$advice(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 21

    .prologue
    .line 207
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    .line 211
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_4c

    .line 212
    const v0, 0x7f0b0019

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 213
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    .line 221
    :cond_35
    :goto_35
    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v2

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static/range {p10 .. p10}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v4

    invoke-static/range {p11 .. p11}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody0(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/BubbleTextView;FFFILorg/aspectj/lang/JoinPoint;)V

    .line 222
    return-void

    .line 214
    :cond_4c
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_6b

    .line 215
    const v0, 0x7f0b0017

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 216
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35

    .line 217
    :cond_6b
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_35

    .line 218
    const v0, 0x7f0b0015

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 219
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35
.end method

.method private static final setShadowLayer_aroundBody2(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    .line 424
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private static final setShadowLayer_aroundBody3$advice(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 21

    .prologue
    .line 207
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    .line 211
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_4c

    .line 212
    const v0, 0x7f0b0019

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 213
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    .line 221
    :cond_35
    :goto_35
    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v2

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static/range {p10 .. p10}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v4

    invoke-static/range {p11 .. p11}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody2(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;)V

    .line 222
    return-void

    .line 214
    :cond_4c
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_6b

    .line 215
    const v0, 0x7f0b0017

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 216
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35

    .line 217
    :cond_6b
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_35

    .line 218
    const v0, 0x7f0b0015

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 219
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35
.end method

.method private static final setShadowLayer_aroundBody4(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    .line 429
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private static final setShadowLayer_aroundBody5$advice(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 21

    .prologue
    .line 207
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    invoke-interface/range {p13 .. p13}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    .line 211
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_4c

    .line 212
    const v0, 0x7f0b0019

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 213
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    .line 221
    :cond_35
    :goto_35
    invoke-static {p8}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v2

    invoke-static/range {p9 .. p9}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v3

    invoke-static/range {p10 .. p10}, Lorg/aspectj/runtime/internal/Conversions;->floatValue(Ljava/lang/Object;)F

    move-result v4

    invoke-static/range {p11 .. p11}, Lorg/aspectj/runtime/internal/Conversions;->intValue(Ljava/lang/Object;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody4(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;)V

    .line 222
    return-void

    .line 214
    :cond_4c
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0016

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_6b

    .line 215
    const v0, 0x7f0b0017

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 216
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35

    .line 217
    :cond_6b
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0014

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_35

    .line 218
    const v0, 0x7f0b0015

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 219
    invoke-virtual {p7, p8, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p11

    goto :goto_35
.end method

.method private updateIconState()V
    .registers 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_23

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_24

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/ItemInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 274
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->DISABLED:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->animateState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 281
    :cond_23
    :goto_23
    return-void

    .line 275
    :cond_24
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    if-eqz v1, :cond_34

    .line 276
    :cond_2e
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->PRESSED:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->animateState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    goto :goto_23

    .line 278
    :cond_34
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->NORMAL:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->animateState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    goto :goto_23
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V
    .registers 4

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 195
    invoke-virtual {p1}, Lcom/android/launcher3/AppInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 196
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->DISABLED:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 198
    :cond_13
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 199
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_26

    .line 201
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    :cond_26
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setTag(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 208
    return-void
.end method

.method public applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V
    .registers 4

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/model/PackageItemInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 212
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1b

    .line 214
    iget-object v0, p1, Lcom/android/launcher3/model/PackageItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 217
    :cond_1b
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setTag(Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 221
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;)V
    .registers 4

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;Z)V

    .line 166
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;Z)V
    .registers 6

    .prologue
    .line 170
    invoke-virtual {p1, p2}, Lcom/android/launcher3/ShortcutInfo;->getIcon(Lcom/android/launcher3/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getUserCustomizedIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 173
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->getUserCustomizedIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 176
    :cond_e
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 178
    sget-object v1, Lcom/android/launcher3/FastBitmapDrawable$State;->DISABLED:Lcom/android/launcher3/FastBitmapDrawable$State;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 181
    :cond_1f
    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 182
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2d

    .line 183
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 185
    :cond_2d
    iget-object v0, p1, Lcom/android/launcher3/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 188
    if-nez p3, :cond_3d

    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 189
    :cond_3d
    invoke-virtual {p0, p3}, Lcom/android/launcher3/BubbleTextView;->applyState(Z)V

    .line 191
    :cond_40
    return-void
.end method

.method public applyState(Z)V
    .registers 6

    .prologue
    .line 482
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_36

    .line 483
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 484
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v1

    .line 485
    if-eqz v1, :cond_3a

    .line 486
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutInfo;->hasStatusFlag(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 487
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getInstallProgress()I

    move-result v0

    move v1, v0

    .line 489
    :goto_20
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_36

    .line 491
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/PreloadIconDrawable;

    if-eqz v0, :cond_3e

    .line 492
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/PreloadIconDrawable;

    .line 498
    :goto_2e
    invoke-virtual {v0, v1}, Lcom/android/launcher3/PreloadIconDrawable;->setLevel(I)Z

    .line 499
    if-eqz p1, :cond_36

    .line 500
    invoke-virtual {v0}, Lcom/android/launcher3/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    .line 504
    :cond_36
    return-void

    .line 487
    :cond_37
    const/4 v0, 0x0

    move v1, v0

    goto :goto_20

    :cond_3a
    const/16 v0, 0x64

    move v1, v0

    goto :goto_20

    .line 494
    :cond_3e
    new-instance v0, Lcom/android/launcher3/PreloadIconDrawable;

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/android/launcher3/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 495
    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    goto :goto_2e
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 476
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->cancelLongPress()V

    .line 478
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 479
    return-void
.end method

.method clearPressedBackground()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 350
    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setStayPressed(Z)V

    .line 351
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 16

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mCustomShadowsEnabled:Z

    if-nez v0, :cond_8

    .line 392
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->draw(Landroid/graphics/Canvas;)V

    .line 433
    :goto_7
    return-void

    .line 397
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 398
    if-eqz v0, :cond_39

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v1

    .line 400
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v2

    .line 402
    iget-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_32

    .line 403
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 404
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 407
    :cond_32
    or-int v3, v1, v2

    if-nez v3, :cond_55

    .line 408
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 417
    :cond_39
    :goto_39
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    if-ne v0, v1, :cond_65

    .line 418
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 419
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 410
    :cond_55
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 412
    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_39

    .line 424
    :cond_65
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x40a00000    # 5.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x33303030

    sget-object v0, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, p0, v1, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v7

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    move-object v0, p0

    move-object v13, v6

    invoke-static/range {v0 .. v13}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody3$advice(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 425
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->draw(Landroid/graphics/Canvas;)V

    .line 426
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getExtendedPaddingTop()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v2, v0

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 427
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 429
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const/high16 v2, 0x3fc00000    # 1.5f

    const/4 v3, 0x0

    const/high16 v4, 0x40200000    # 2.5f

    .line 430
    const v5, -0x7fcfcfd0

    sget-object v0, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, p0, v1, v6}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    move-result-object v7

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-static {v3}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-static {v4}, Lorg/aspectj/runtime/internal/Conversions;->floatObject(F)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-static {v5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    const/4 v12, 0x0

    move-object v0, p0

    move-object v13, v6

    invoke-static/range {v0 .. v13}, Lcom/android/launcher3/BubbleTextView;->setShadowLayer_aroundBody5$advice(Lcom/android/launcher3/BubbleTextView;Landroid/text/TextPaint;FFFILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    .line 431
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->draw(Landroid/graphics/Canvas;)V

    .line 432
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7
.end method

.method public getFastScrollFocus()F
    .registers 2

    .prologue
    .line 617
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusFraction:F

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isLayoutHorizontal()Z
    .registers 2

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 437
    :try_start_6
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->onAttachedToWindow()V

    .line 439
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 441
    :cond_12
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/PreloadIconDrawable;

    if-eqz v0, :cond_23

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/PreloadIconDrawable;

    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->getPreloaderTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/PreloadIconDrawable;->applyPreloaderTheme(Landroid/content/res/Resources$Theme;)V

    .line 444
    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_32} :catch_3a

    .line 445
    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$1$623f9a20(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_3a
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$1$623f9a20(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    sget-object v0, Lcom/android/launcher3/BubbleTextView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 449
    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$before$com_lge_launcher3_debug_DuplicatedApplicationChecker$2$ea0e93dd(Lorg/aspectj/lang/JoinPoint;)V

    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->onDetachedFromWindow()V

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 451
    :cond_1a
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 355
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeTextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 360
    :cond_12
    const/4 v0, 0x1

    .line 362
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 371
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeTextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 373
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 374
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    .line 375
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateIconState()V

    .line 376
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 287
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 290
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 291
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 292
    const/4 v0, 0x1

    .line 295
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_5e

    .line 325
    :cond_19
    :goto_19
    return v0

    .line 300
    :pswitch_1a
    iget-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDeferShadowGenerationOnTouch:Z

    if-nez v1, :cond_2a

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2a

    .line 301
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 305
    :cond_2a
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_19

    .line 306
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_19

    .line 313
    :pswitch_38
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_41

    .line 314
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 317
    :cond_41
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_19

    .line 320
    :pswitch_47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_19

    .line 321
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_19

    .line 295
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_38
        :pswitch_47
        :pswitch_38
    .end packed-switch
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/ItemInfo;)V
    .registers 4

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_36

    .line 553
    sget-object v0, Lcom/android/launcher3/FastBitmapDrawable$State;->NORMAL:Lcom/android/launcher3/FastBitmapDrawable$State;

    .line 554
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v1, :cond_53

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getCurrentState()Lcom/android/launcher3/FastBitmapDrawable$State;

    move-result-object v0

    move-object v1, v0

    .line 557
    :goto_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 559
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_37

    .line 560
    check-cast p1, Lcom/android/launcher3/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 569
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_33

    .line 570
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setState(Lcom/android/launcher3/FastBitmapDrawable$State;)Z

    .line 572
    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    .line 574
    :cond_36
    return-void

    .line 561
    :cond_37
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_49

    .line 562
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 563
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v0

    .line 562
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/IconCache;)V

    goto :goto_26

    .line 564
    :cond_49
    instance-of v0, p1, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_26

    .line 565
    check-cast p1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    goto :goto_26

    :cond_53
    move-object v1, v0

    goto :goto_17
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    if-nez v0, :cond_7

    .line 544
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeTextView;->requestLayout()V

    .line 546
    :cond_7
    return-void
.end method

.method public setAdapiveTextColor(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    return-void
.end method

.method public setFastScrollFocus(F)V
    .registers 5

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3e199998    # 0.14999998f

    .line 607
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusFraction:F

    .line 609
    mul-float v0, p1, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleX(F)V

    .line 610
    mul-float v0, p1, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setScaleY(F)V

    .line 614
    return-void
.end method

.method public setFastScrollFocused(ZZ)V
    .registers 8

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 626
    iget-boolean v2, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocused:Z

    if-eq v2, p1, :cond_3f

    .line 627
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocused:Z

    .line 629
    if-eqz p2, :cond_50

    .line 631
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_14

    .line 632
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 634
    :cond_14
    const-string v2, "fastScrollFocus"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    .line 635
    if-eqz p1, :cond_40

    :goto_1c
    aput v0, v3, v4

    .line 634
    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    .line 636
    if-eqz p1, :cond_42

    .line 637
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 641
    :goto_30
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4d

    .line 642
    const/16 v0, 0xaf

    :goto_36
    int-to-long v2, v0

    .line 641
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 643
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 648
    :cond_3f
    :goto_3f
    return-void

    :cond_40
    move v0, v1

    .line 635
    goto :goto_1c

    .line 639
    :cond_42
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_30

    .line 642
    :cond_4d
    const/16 v0, 0x7d

    goto :goto_36

    .line 645
    :cond_50
    if-eqz p1, :cond_55

    :goto_52
    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mFastScrollFocusFraction:F

    goto :goto_3f

    :cond_55
    move v0, v1

    goto :goto_52
.end method

.method protected setFrame(IIII)Z
    .registers 6

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getLeft()I

    move-result v0

    if-ne v0, p1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getRight()I

    move-result v0

    if-ne v0, p3, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTop()I

    move-result v0

    if-ne v0, p2, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getBottom()I

    move-result v0

    if-eq v0, p4, :cond_1b

    .line 233
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackgroundSizeChanged:Z

    .line 235
    :cond_1b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/lge/launcher3/badge/BadgeTextView;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setLongPressTimeout(I)V
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CheckLongPressHelper;->setLongPressTimeout(I)V

    .line 228
    return-void
.end method

.method public setPressed(Z)V
    .registers 3

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setPressed(Z)V

    .line 255
    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mIgnorePressedStateChange:Z

    if-nez v0, :cond_a

    .line 256
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateIconState()V

    .line 258
    :cond_a
    return-void
.end method

.method setStayPressed(Z)V
    .registers 4

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mStayPressed:Z

    .line 330
    if-nez p1, :cond_24

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 339
    :cond_7
    :goto_7
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_20

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    if-eqz v1, :cond_20

    .line 341
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    .line 341
    invoke-interface {v0, p0, v1}, Lcom/android/launcher3/BubbleTextView$BubbleTextShadowHandler;->setPressedIcon(Lcom/android/launcher3/BubbleTextView;Landroid/graphics/Bitmap;)V

    .line 345
    :cond_20
    invoke-direct {p0}, Lcom/android/launcher3/BubbleTextView;->updateIconState()V

    .line 346
    return-void

    .line 333
    :cond_24
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    if-nez v0, :cond_7

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOutlineHelper:Lcom/android/launcher3/HolographicOutlineHelper;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/HolographicOutlineHelper;->createMediumDropShadow(Lcom/android/launcher3/BubbleTextView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mPressedBackground:Landroid/graphics/Bitmap;

    goto :goto_7
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 245
    if-eqz p1, :cond_8

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/LauncherModel;->checkItemInfo(Lcom/android/launcher3/ItemInfo;)V

    .line 248
    :cond_8
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setTag(Ljava/lang/Object;)V

    .line 249
    return-void
.end method

.method public setTextColor(I)V
    .registers 2

    .prologue
    .line 455
    iput p1, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 456
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setTextColor(I)V

    .line 457
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .registers 3

    .prologue
    .line 461
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    .line 462
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 463
    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 4

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 467
    if-eqz p1, :cond_c

    .line 468
    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextColor:I

    invoke-super {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setTextColor(I)V

    .line 472
    :goto_b
    return-void

    .line 470
    :cond_c
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-super {p0, v0}, Lcom/lge/launcher3/badge/BadgeTextView;->setTextColor(I)V

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/BubbleTextViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_BubbleTextViewItds$com_android_launcher3_BubbleTextView$toString(Lcom/android/launcher3/BubbleTextView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_c

    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeTextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public verifyHighRes()V
    .registers 3

    .prologue
    .line 580
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    if-eqz v0, :cond_c

    .line 581
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/IconCache$IconLoadRequest;->cancel()V

    .line 582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 584
    :cond_c
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_2d

    .line 585
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 586
    iget-boolean v1, v0, Lcom/android/launcher3/AppInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_2c

    .line 587
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    .line 588
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    .line 587
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 603
    :cond_2c
    :goto_2c
    return-void

    .line 590
    :cond_2d
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_4e

    .line 591
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 592
    iget-boolean v1, v0, Lcom/android/launcher3/ShortcutInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_2c

    .line 593
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    .line 594
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    .line 593
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    goto :goto_2c

    .line 596
    :cond_4e
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_2c

    .line 597
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 598
    iget-boolean v1, v0, Lcom/android/launcher3/model/PackageItemInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_2c

    .line 599
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/IconCache;

    move-result-object v1

    .line 600
    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    move-result-object v0

    .line 599
    iput-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconLoadRequest:Lcom/android/launcher3/IconCache$IconLoadRequest;

    goto :goto_2c
.end method
