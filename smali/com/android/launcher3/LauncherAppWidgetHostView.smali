.class public Lcom/android/launcher3/LauncherAppWidgetHostView;
.super Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher3/DragLayer$TouchCompleteListener;


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static sLGEWidgetPaddingRatio:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher3/DragLayer;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsLGEWidget:Z

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mWidgetBlurLayout:Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$preClinit()V

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;-><init>(Landroid/content/Context;)V

    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    :try_start_9
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interFieldInit$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)V

    .line 50
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 52
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 53
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 54
    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    .line 55
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3c} :catch_44

    .line 56
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$2$63993613(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_44
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$2$63993613(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static ajc$get$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsLGEWidget:Z

    return v0
.end method

.method public static ajc$get$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mWidgetBlurLayout:Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    return-object v0
.end method

.method public static ajc$get$sLGEWidgetPaddingRatio()F
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sLGEWidgetPaddingRatio:F

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherAppWidgetHostView.java"

    const-class v2, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onInterceptTouchEvent"

    const-string v3, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x53

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onTouchEvent"

    const-string v3, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v4, "android.view.MotionEvent"

    const-string v5, "ev"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setAppWidget"

    const-string v3, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v4, "int:android.appwidget.AppWidgetProviderInfo"

    const-string v5, "appWidgetId:info"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onMeasure"

    const-string v3, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v4, "int:int"

    const-string v5, "widthMeasureSpec:heightMeasureSpec"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbc

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "dispatchDraw"

    const-string v3, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v4, "android.graphics.Canvas"

    const-string v5, "canvas"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xc1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.LauncherAppWidgetHostView"

    const-string v3, "android.content.Context"

    const-string v4, "context"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static ajc$set$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mIsLGEWidget:Z

    return-void
.end method

.method public static ajc$set$mWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mWidgetBlurLayout:Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    return-void
.end method

.method public static ajc$set$sLGEWidgetPaddingRatio(F)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->sLGEWidgetPaddingRatio:F

    return-void
.end method

.method private static final dispatchDraw_aroundBody8(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V
    .registers 3

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 195
    return-void
.end method

.method private static final dispatchDraw_aroundBody9$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8

    .prologue
    .line 37
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 38
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$dispatchDrawAround(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method

.method private static final onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_c

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 91
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 92
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 123
    :goto_19
    return v0

    .line 98
    :cond_1a
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 99
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_19

    .line 102
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_60

    .line 123
    :cond_2f
    :goto_2f
    const/4 v0, 0x0

    goto :goto_19

    .line 104
    :pswitch_31
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    .line 107
    :cond_3e
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/DragLayer$TouchCompleteListener;)V

    goto :goto_2f

    .line 113
    :pswitch_44
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_2f

    .line 116
    :pswitch_4a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 117
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_2f

    .line 102
    :pswitch_data_60
    .packed-switch 0x0
        :pswitch_31
        :pswitch_44
        :pswitch_4a
        :pswitch_44
    .end packed-switch
.end method

.method private static final onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 9

    .prologue
    .line 43
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onInterceptTouchEvent_aroundBody0(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v1

    .line 44
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 45
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 46
    const/4 v0, 0x1

    .line 48
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private static final onMeasure_aroundBody6(Lcom/android/launcher3/LauncherAppWidgetHostView;IILorg/aspectj/lang/JoinPoint;)V
    .registers 4

    .prologue
    .line 189
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->onMeasure(II)V

    .line 190
    return-void
.end method

.method private static final onMeasure_aroundBody7$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11

    .prologue
    .line 30
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 31
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 33
    invoke-static {v0, v2, v1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onMeasureAround(Lcom/android/launcher3/LauncherAppWidgetHostView;II)V

    .line 34
    return-void
.end method

.method private static final onTouchEvent_aroundBody2(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 6

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 140
    :cond_7
    :goto_7
    const/4 v0, 0x0

    return v0

    .line 132
    :pswitch_9
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_7

    .line 135
    :pswitch_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_7

    .line 136
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_7

    .line 129
    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_9
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method

.method private static final onTouchEvent_aroundBody3$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 10

    .prologue
    .line 53
    invoke-static {p0, p4, p2}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onTouchEvent_aroundBody2(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v1

    .line 54
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 55
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$get$mContext(Lcom/android/launcher3/LauncherAppWidgetHostView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 56
    invoke-static {v0, p4}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onTouchEventCallSuper(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 58
    :goto_1c
    return v0

    :cond_1d
    move v0, v1

    goto :goto_1c
.end method

.method private static final setAppWidget_aroundBody4(Lcom/android/launcher3/LauncherAppWidgetHostView;ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6

    .prologue
    .line 184
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_b

    .line 185
    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$3$3331334(ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_b
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->aspectOf()Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$after$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$3$3331334(ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method private static final setAppWidget_aroundBody5$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    const/4 v3, 0x0

    .line 28
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    .line 30
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAppWidget_aroundBody4(Lcom/android/launcher3/LauncherAppWidgetHostView;ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;)V

    .line 31
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 32
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v0}, Lcom/lge/lgewidgetlib/LgeWidgetContext;->isLGEAppWidgetPackage(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;Z)V

    .line 34
    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_48

    .line 35
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_48

    .line 37
    const v2, 0x7f090016

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldSetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio(F)V

    .line 41
    :cond_48
    invoke-static {v1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$mIsLGEWidget(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_85

    .line 42
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingStart()I

    move-result v0

    int-to-float v0, v0

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 43
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingEnd()I

    move-result v3

    int-to-float v3, v3

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interFieldGetDispatch$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$sLGEWidgetPaddingRatio()F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 42
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setPaddingRelative(IIII)V

    .line 45
    :cond_85
    return-void
.end method


# virtual methods
.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$dispatchDrawAround(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$dispatchDrawAround(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$onMeasureAround(II)V
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onMeasureAround(Lcom/android/launcher3/LauncherAppWidgetHostView;II)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_nativeitds$onTouchEventCallSuper(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$onTouchEventCallSuper(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getDefaultView()Landroid/view/View;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$onMeasure(II)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public ajc$superDispatch$com_android_launcher3_LauncherAppWidgetHostView$setMeasuredDimension(II)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 151
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->cancelLongPress()V

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 153
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->dispatchDraw_aroundBody9$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 3

    .prologue
    .line 157
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_12

    instance-of v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_12

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 162
    :cond_12
    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .registers 2

    .prologue
    .line 199
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->getDefaultView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .registers 2

    .prologue
    .line 180
    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .registers 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherAppWidgetProviderInfo()Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public getWidgetBlurLayout()Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    return-object v0
.end method

.method public hasWidgetBlurLayout()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethod$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$hasWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Z

    move-result v0

    return v0
.end method

.method public isReinflateRequired()Z
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 77
    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_12

    .line 78
    const/4 v0, 0x1

    .line 80
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 145
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->onAttachedToWindow()V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mSlop:F

    .line 147
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onInterceptTouchEvent_aroundBody1$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, p0, p0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onMeasure_aroundBody7$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;IILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onTouchComplete()V
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_d

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 176
    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onTouchEvent_aroundBody3$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;Landroid/view/MotionEvent;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostViewAspect;Landroid/view/MotionEvent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 10

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHostView;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->aspectOf()Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAppWidget_aroundBody5$advice(Lcom/android/launcher3/LauncherAppWidgetHostView;ILandroid/appwidget/AppWidgetProviderInfo;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostViewItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostViewItds$com_android_launcher3_LauncherAppWidgetHostView$toString(Lcom/android/launcher3/LauncherAppWidgetHostView;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 71
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 72
    return-void
.end method

.method public updateLastInflationOrientation()V
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 65
    return-void
.end method
