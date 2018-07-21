.class public Lcom/android/launcher3/FolderIcon;
.super Lcom/lge/launcher3/badge/BadgeFolderIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/android/launcher3/FolderInfo$FolderListener;
.implements Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;
.implements Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/FolderIcon$FolderRingAnimator;,
        Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    }
.end annotation


# static fields
.field private static final CONSUMPTION_ANIMATION_DURATION:I = 0x64

.field private static final DROP_IN_ANIMATION_DURATION:I = 0x190

.field private static final FINAL_ITEM_ANIMATION_DURATION:I = 0xc8

.field public static final HAS_OUTER_RING:Z = false

.field private static final INITIAL_ITEM_ANIMATION_DURATION:I = 0x15e

.field private static final INNER_RING_GROWTH_FACTOR:F = 0.15f

.field public static final NUM_ITEMS_IN_PREVIEW:I = 0x4

.field private static final ON_OPEN_DELAY:I = 0x320

.field private static final OUTER_RING_GROWTH_FACTOR:F = 0.3f

.field private static final PERSPECTIVE_SCALE_FACTOR:F = 0.35f

.field private static final PERSPECTIVE_SHIFT_FACTOR:F = 0.18f

.field public static final SPRING_LOADING_ENABLED:Z = true

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field public static sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

.field static sStaticValuesDirty:Z


# instance fields
.field mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

.field mAnimating:Z

.field private mAvailableSpaceInPreview:I

.field private mBaselineIconScale:F

.field private mBaselineIconSize:I

.field mDragInfo:Lcom/android/launcher3/ItemInfo;

.field mFolder:Lcom/android/launcher3/Folder;

.field mFolderName:Lcom/android/launcher3/BubbleTextView;

.field mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

.field mHiddenItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/android/launcher3/FolderInfo;

.field private mIntrinsicIconSize:I

.field mLauncher:Lcom/android/launcher3/Launcher;

.field private mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

.field private mMaxPerspectiveShift:F

.field private mOldBounds:Landroid/graphics/Rect;

.field mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOpenAlarm:Lcom/android/launcher3/Alarm;

.field private mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

.field mPreviewBackground:Landroid/widget/ImageView;

.field private mPreviewOffsetX:I

.field private mPreviewOffsetY:I

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

.field private mTotalWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/FolderIcon;->ajc$preClinit()V

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->sStaticValuesDirty:Z

    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/FolderIcon;->sSharedFolderLeaveBehind:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/lge/launcher3/badge/BadgeFolderIcon;-><init>(Landroid/content/Context;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->mTotalWidth:I

    .line 111
    iput-boolean v5, p0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 117
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 373
    new-instance v0, Lcom/android/launcher3/FolderIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/FolderIcon$1;-><init>(Lcom/android/launcher3/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 130
    invoke-direct {p0}, Lcom/android/launcher3/FolderIcon;->init()V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->mTotalWidth:I

    .line 111
    iput-boolean v5, p0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    .line 112
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 117
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    .line 373
    new-instance v0, Lcom/android/launcher3/FolderIcon$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/FolderIcon$1;-><init>(Lcom/android/launcher3/FolderIcon;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    .line 125
    invoke-direct {p0}, Lcom/android/launcher3/FolderIcon;->init()V

    .line 126
    return-void
.end method

.method public static ajc$get$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    return v0
.end method

.method public static ajc$get$mFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    return-object v0
.end method

.method public static ajc$get$mInfo(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method public static ajc$get$mIntrinsicIconSize(Lcom/android/launcher3/FolderIcon;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    return v0
.end method

.method public static ajc$get$mPreviewBackground(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "FolderIcon.java"

    const-class v2, Lcom/android/launcher3/FolderIcon;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "performDestroyAnimation"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "android.view.View:java.lang.Runnable"

    const-string v5, "finalView:onCompleteRunnable"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x198

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "2"

    const-string v2, "computePreviewItemDrawingParams"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "int:com.android.launcher3.FolderIcon$PreviewItemDrawingParams"

    const-string v5, "index:params"

    const-string v6, ""

    const-string v7, "com.android.launcher3.FolderIcon$PreviewItemDrawingParams"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x22d

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "dispatchDraw"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "android.graphics.Canvas"

    const-string v5, "canvas"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x264

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onAdd"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "com.android.launcher3.ShortcutInfo"

    const-string v5, "item"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2c7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onRemove"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "com.android.launcher3.ShortcutInfo"

    const-string v5, "item"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2cc

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onAdd"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "java.util.List"

    const-string v5, "items"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2d2

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onRemove"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, "java.util.List"

    const-string v5, "items"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2d7

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onAttachedToWindow"

    const-string v3, "com.android.launcher3.FolderIcon"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x306

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mAvailableSpaceInPreview(Lcom/android/launcher3/FolderIcon;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    return-void
.end method

.method public static ajc$set$mFolderName(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public static ajc$set$mInfo(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/FolderInfo;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-void
.end method

.method public static ajc$set$mIntrinsicIconSize(Lcom/android/launcher3/FolderIcon;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    return-void
.end method

.method public static ajc$set$mPreviewBackground(Lcom/android/launcher3/FolderIcon;Landroid/widget/ImageView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    return-void
.end method

.method private animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    .registers 13

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    .line 654
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    .line 656
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    .line 657
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 658
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    div-float v3, v1, v2

    .line 659
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v1, v1

    sub-float v0, v1, v0

    div-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float v5, v0, v1

    .line 660
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput-object p1, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 662
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_54

    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAnimUtils;->ofFloat(Landroid/view/View;[F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 663
    new-instance v0, Lcom/android/launcher3/FolderIcon$3;

    move-object v1, p0

    move v2, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/FolderIcon$3;-><init>(Lcom/android/launcher3/FolderIcon;ZFLcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;FF)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    new-instance v0, Lcom/android/launcher3/FolderIcon$4;

    invoke-direct {v0, p0, p4}, Lcom/android/launcher3/FolderIcon$4;-><init>(Lcom/android/launcher3/FolderIcon;Ljava/lang/Runnable;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 690
    int-to-long v0, p2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 691
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    .line 692
    return-void

    .line 662
    nop

    :array_54
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private computePreviewDrawingParams(II)V
    .registers 8

    .prologue
    .line 501
    iget v0, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    if-ne v0, p1, :cond_8

    iget v0, p0, Lcom/android/launcher3/FolderIcon;->mTotalWidth:I

    if-eq v0, p2, :cond_5b

    .line 502
    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 504
    iput p1, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    .line 505
    iput p2, p0, Lcom/android/launcher3/FolderIcon;->mTotalWidth:I

    .line 507
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 508
    sget v2, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->sPreviewPadding:I

    .line 510
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    .line 512
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v3, 0x3fe66666    # 1.8f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 514
    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    const v4, 0x3f970a3e    # 1.1800001f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 516
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v1, v1

    mul-float/2addr v1, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconScale:F

    .line 518
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v1, v1

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconSize:I

    .line 519
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconSize:I

    int-to-float v1, v1

    const v3, 0x3e3851ec    # 0.18f

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->mMaxPerspectiveShift:F

    .line 521
    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mTotalWidth:I

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetX:I

    .line 522
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetY:I

    .line 524
    :cond_5b
    return-void
.end method

.method private computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .prologue
    .line 527
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    .line 528
    return-void
.end method

.method private computePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 10

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, v1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/folder/FolderIconAspect;->aspectOf()Lcom/lge/launcher3/folder/FolderIconAspect;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/FolderIcon;->computePreviewItemDrawingParams_aroundBody1$advice(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderIconAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method private static final computePreviewItemDrawingParams_aroundBody0(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 559
    rsub-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, -0x1

    .line 560
    int-to-float v0, v0

    mul-float/2addr v0, v6

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 561
    const v1, 0x3eb33333    # 0.35f

    sub-float v2, v6, v0

    mul-float/2addr v1, v2

    sub-float v1, v6, v1

    .line 563
    sub-float v2, v6, v0

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mMaxPerspectiveShift:F

    mul-float/2addr v2, v3

    .line 564
    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconSize:I

    int-to-float v3, v3

    mul-float v4, v1, v3

    .line 565
    sub-float v3, v6, v1

    iget v5, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconSize:I

    int-to-float v5, v5

    mul-float/2addr v3, v5

    .line 569
    iget v5, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v5, v5

    add-float/2addr v2, v4

    add-float/2addr v2, v3

    sub-float v2, v5, v2

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    .line 570
    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mAvailableSpaceInPreview:I

    int-to-float v2, v2

    sub-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    .line 571
    iget v4, p0, Lcom/android/launcher3/FolderIcon;->mBaselineIconScale:F

    mul-float/2addr v4, v1

    .line 572
    const/high16 v1, 0x42a00000    # 80.0f

    sub-float v0, v6, v0

    mul-float/2addr v0, v1

    float-to-int v5, v0

    .line 574
    if-nez p2, :cond_49

    .line 575
    new-instance v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;-><init>(Lcom/android/launcher3/FolderIcon;FFFI)V

    .line 582
    :goto_48
    return-object v0

    .line 577
    :cond_49
    iput v2, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 578
    iput v3, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 579
    iput v4, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 580
    iput v5, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    move-object v0, p2

    goto :goto_48
.end method

.method private static final computePreviewItemDrawingParams_aroundBody1$advice(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/folder/FolderIconAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 11

    .prologue
    .line 77
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 78
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v2

    .line 79
    const/4 v1, 0x0

    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v1, 0x1

    aget-object v1, v2, v1

    check-cast v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-static {v0, v3, v1}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethodDispatch1$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$reComputePreviewItemDrawingParams(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method private drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)V
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 586
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 587
    iget v0, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v1, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 588
    iget v0, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v1, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 589
    iget-object v1, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 591
    if-eqz v1, :cond_4c

    .line 592
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 593
    iget v0, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    invoke-virtual {v1, v4, v4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 594
    instance-of v0, v1, Lcom/android/launcher3/FastBitmapDrawable;

    if-eqz v0, :cond_50

    move-object v0, v1

    .line 595
    check-cast v0, Lcom/android/launcher3/FastBitmapDrawable;

    .line 596
    invoke-virtual {v0}, Lcom/android/launcher3/FastBitmapDrawable;->getBrightness()F

    move-result v2

    .line 597
    iget v3, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 598
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 599
    invoke-virtual {v0, v2}, Lcom/android/launcher3/FastBitmapDrawable;->setBrightness(F)V

    .line 606
    :goto_47
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOldBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 608
    :cond_4c
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 609
    return-void

    .line 601
    :cond_50
    iget v0, p2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    invoke-static {v0, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 602
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 601
    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 603
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 604
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_47
.end method

.method static fromXml(ILcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/FolderInfo;Lcom/android/launcher3/IconCache;)Lcom/android/launcher3/FolderIcon;
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 156
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 158
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 159
    invoke-virtual {v0, v4}, Lcom/android/launcher3/FolderIcon;->setClipToPadding(Z)V

    .line 160
    const v1, 0x7f0e003f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    .line 161
    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setCompoundDrawablePadding(I)V

    .line 163
    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 167
    const v1, 0x7f0e003e

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    .line 168
    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->mPreviewBackground:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 169
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->folderBackgroundOffset:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 170
    iget v3, v2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 171
    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->folderIconSizePx:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 173
    invoke-virtual {v0, p3}, Lcom/android/launcher3/FolderIcon;->setTag(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iput-object p3, v0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    .line 176
    iput-object p1, v0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 178
    iget-object v1, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 179
    iget-object v1, p3, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    :goto_6e
    invoke-static {p1}, Lcom/android/launcher3/Folder;->fromXml(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/Folder;

    move-result-object v1

    .line 185
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/DragController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Folder;->setDragController(Lcom/android/launcher3/DragController;)V

    .line 186
    invoke-virtual {v1, v0}, Lcom/android/launcher3/Folder;->setFolderIcon(Lcom/android/launcher3/FolderIcon;)V

    .line 187
    invoke-virtual {v1, p3}, Lcom/android/launcher3/Folder;->bind(Lcom/android/launcher3/FolderInfo;)V

    .line 188
    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    .line 190
    new-instance v1, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-direct {v1, p1, v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/FolderIcon;)V

    iput-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    .line 191
    invoke-virtual {p3, v0}, Lcom/android/launcher3/FolderInfo;->addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V

    .line 193
    iget-object v1, p1, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/FocusIndicatorView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 194
    return-object v0

    .line 181
    :cond_91
    iget-object v1, v0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const v2, 0x7f0f003c

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_6e
.end method

.method private getLocalCenterForIndex(I[I)F
    .registers 8

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 545
    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 547
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v1, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mPreviewOffsetY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 549
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transX:F

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v2, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    add-float/2addr v0, v1

    .line 550
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v1, v1, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->transY:F

    iget-object v2, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v2, v2, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mIntrinsicIconSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 552
    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p2, v2

    .line 553
    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p2, v0

    .line 554
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget v0, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->scale:F

    return v0
.end method

.method private getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 648
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 649
    instance-of v1, v0, Lcom/android/launcher3/PreloadIconDrawable;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/launcher3/PreloadIconDrawable;

    iget-object v0, v0, Lcom/android/launcher3/PreloadIconDrawable;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_f
    return-object v0
.end method

.method private init()V
    .registers 2

    .prologue
    .line 134
    new-instance v0, Lcom/android/launcher3/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    .line 135
    new-instance v0, Lcom/android/launcher3/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    .line 136
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderIcon;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 137
    return-void
.end method

.method private onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 25

    .prologue
    .line 431
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellX:I

    .line 432
    const/4 v2, -0x1

    move-object/from16 v0, p1

    iput v2, v0, Lcom/android/launcher3/ShortcutInfo;->cellY:I

    .line 437
    if-eqz p2, :cond_f9

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 439
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 440
    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 442
    if-nez p3, :cond_fd

    .line 443
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/FolderIcon;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v6

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getScaleX()F

    move-result v3

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getScaleY()F

    move-result v7

    .line 449
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/FolderIcon;->setScaleX(F)V

    .line 450
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/launcher3/FolderIcon;->setScaleY(F)V

    .line 451
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v5}, Lcom/android/launcher3/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result p4

    .line 453
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/FolderIcon;->setScaleX(F)V

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/FolderIcon;->setScaleY(F)V

    .line 455
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->resetTransitionTransform(Lcom/android/launcher3/CellLayout;)V

    .line 458
    :goto_6d
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 459
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/FolderIcon;->getLocalCenterForIndex(I[I)F

    move-result v7

    .line 460
    const/4 v6, 0x0

    const/4 v8, 0x0

    aget v8, v3, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v3, v6

    .line 461
    const/4 v6, 0x1

    const/4 v8, 0x1

    aget v8, v3, v8

    int-to-float v8, v8

    mul-float v8, v8, p4

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    aput v8, v3, v6

    .line 463
    const/4 v6, 0x0

    aget v6, v3, v6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    .line 464
    const/4 v8, 0x1

    aget v3, v3, v8

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v3, v8

    .line 463
    invoke-virtual {v5, v6, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 466
    const/4 v3, 0x4

    move/from16 v0, p5

    if-ge v0, v3, :cond_f7

    const/high16 v6, 0x3f000000    # 0.5f

    .line 468
    :goto_b0
    mul-float v9, v7, p4

    .line 470
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v11, 0x190

    .line 471
    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v12, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v13, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v13, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    .line 472
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v3, p2

    move v10, v9

    move-object/from16 v14, p6

    .line 469
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 473
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Folder;->hideItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 476
    new-instance v2, Lcom/android/launcher3/FolderIcon$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/FolderIcon$2;-><init>(Lcom/android/launcher3/FolderIcon;Lcom/android/launcher3/ShortcutInfo;)V

    .line 482
    const-wide/16 v4, 0x190

    .line 476
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/android/launcher3/FolderIcon;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 486
    :goto_f6
    return-void

    .line 466
    :cond_f7
    const/4 v6, 0x0

    goto :goto_b0

    .line 484
    :cond_f9
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    goto :goto_f6

    :cond_fd
    move-object/from16 v5, p3

    goto/16 :goto_6d
.end method

.method private willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 335
    iget v1, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    .line 336
    if-eqz v1, :cond_7

    .line 337
    if-ne v1, v0, :cond_1a

    .line 338
    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/Folder;->isFull()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    if-eq p1, v1, :cond_1a

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/FolderInfo;->opened:Z

    if-nez v1, :cond_1a

    .line 336
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public acceptDrop(Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 342
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/android/launcher3/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public addItem(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/FolderInfo;->add(Lcom/android/launcher3/ShortcutInfo;)V

    .line 348
    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_FolderIcon$getContentsByString(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->getContentsByString(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public ajc$superDispatch$com_android_launcher3_FolderIcon$onDetachedFromWindowInternal()V
    .registers 1

    .prologue
    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindowInternal()V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_FolderIcon$onUpdateAppNotifier(ILandroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->onUpdateAppNotifier(ILandroid/widget/TextView;)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public cancelLongPress()V
    .registers 2

    .prologue
    .line 781
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->cancelLongPress()V

    .line 783
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 784
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 613
    :try_start_6
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 615
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_7e

    if-nez v0, :cond_15

    .line 645
    :cond_d
    :goto_d
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$5$1772b94c(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V

    return-void

    .line 616
    :cond_15
    :try_start_15
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getItemCount()I

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    if-eqz v0, :cond_d

    .line 618
    :cond_21
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v3

    .line 623
    iget-boolean v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    if-eqz v0, :cond_6f

    .line 624
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iget-object v0, v0, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V

    .line 631
    :goto_32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 632
    iget-boolean v1, p0, Lcom/android/launcher3/FolderIcon;->mAnimating:Z

    if-nez v1, :cond_87

    .line 633
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_42
    if-ltz v1, :cond_d

    .line 634
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 635
    iget-object v4, p0, Lcom/android/launcher3/FolderIcon;->mHiddenItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 636
    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    iget-object v4, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, v1, v4}, Lcom/android/launcher3/FolderIcon;->computePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    .line 638
    iget-object v4, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    iput-object v0, v4, Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;->drawable:Landroid/graphics/drawable/Drawable;

    .line 639
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)V

    .line 633
    :cond_6b
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_42

    .line 626
    :cond_6f
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 627
    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 628
    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->computePreviewDrawingParams(Landroid/graphics/drawable/Drawable;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_7d} :catch_7e

    goto :goto_32

    .line 645
    :catch_7e
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$5$1772b94c(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V

    throw v0

    .line 643
    :cond_87
    :try_start_87
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mAnimParams:Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/FolderIcon;->drawPreviewItem(Landroid/graphics/Canvas;Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_8c} :catch_7e

    goto :goto_d
.end method

.method public getColor()I
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getColor(Lcom/android/launcher3/FolderIcon;)I

    move-result v0

    return v0
.end method

.method public getFolder()Lcom/android/launcher3/Folder;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    return-object v0
.end method

.method public getFolderInfo()Lcom/android/launcher3/FolderInfo;
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    return-object v0
.end method

.method public getFolderName()Lcom/android/launcher3/BubbleTextView;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$getFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    return-object v0
.end method

.method public getTextVisible()Z
    .registers 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isDropEnabled()Z
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 142
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 143
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public onAdd(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 712
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$before$com_lge_launcher3_badge_BadgeAspect$1$3865eb1(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    .line 714
    return-void
.end method

.method public onAdd(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 723
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$before$com_lge_launcher3_badge_BadgeAspect$1$3865eb1(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 724
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    .line 725
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 775
    :try_start_6
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->onAttachedToWindow()V

    .line 776
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/FolderIcon;->mSlop:F
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_20

    .line 777
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$3$7710dffd(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_20
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$3$7710dffd(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onColorChanged()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderColorAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderColorAspect$com_android_launcher3_FolderIcon$onColorChanged(Lcom/android/launcher3/FolderIcon;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onDetachedFromWindow(Lcom/android/launcher3/FolderIcon;)V

    return-void
.end method

.method public onDragEnter(Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->willAcceptItem(Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 368
    :cond_11
    :goto_11
    return-void

    .line 352
    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 353
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 354
    iget-object v2, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v0, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->setCell(II)V

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->setCellLayout(Lcom/android/launcher3/CellLayout;)V

    .line 356
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToAcceptState()V

    .line 357
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/CellLayout;->showFolderAccept(Lcom/android/launcher3/FolderIcon$FolderRingAnimator;)V

    .line 358
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mOnOpenListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 360
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_49

    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_50

    .line 365
    :cond_49
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 367
    :cond_50
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/FolderIcon;->mDragInfo:Lcom/android/launcher3/ItemInfo;

    goto :goto_11
.end method

.method public onDragExit()V
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderRingAnimator:Lcom/android/launcher3/FolderIcon$FolderRingAnimator;

    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon$FolderRingAnimator;->animateToNaturalState()V

    .line 425
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mOpenAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 426
    return-void
.end method

.method public onDragExit(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->onDragExit()V

    .line 421
    return-void
.end method

.method public onDragOver(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 371
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 10

    .prologue
    .line 490
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_28

    .line 492
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/AppInfo;->makeShortcut()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    .line 496
    :goto_e
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolder:Lcom/android/launcher3/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->notifyDrop()V

    .line 497
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mInfo:Lcom/android/launcher3/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object v0, p0

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 498
    return-void

    .line 494
    :cond_28
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    move-object v1, v0

    goto :goto_e
.end method

.method public onItemsChanged()V
    .registers 1

    .prologue
    .line 707
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 708
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    .line 709
    return-void
.end method

.method public onRemove(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 717
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$before$com_lge_launcher3_badge_BadgeAspect$2$4daa151a(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 718
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    .line 719
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/launcher3/FolderIcon;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 728
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$before$com_lge_launcher3_badge_BadgeAspect$2$4daa151a(Lorg/aspectj/lang/JoinPoint;)V

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->invalidate()V

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->requestLayout()V

    .line 730
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 199
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/FolderIcon;->sStaticValuesDirty:Z

    .line 200
    invoke-super {p0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;)V
    .registers 5

    .prologue
    const v2, 0x7f0f003c

    .line 734
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2e

    .line 737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 742
    :goto_2d
    return-void

    .line 739
    :cond_2e
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 740
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 748
    invoke-super {p0, p1}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 751
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mStylusEventHelper:Lcom/android/launcher3/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 752
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    .line 753
    const/4 v0, 0x1

    .line 770
    :cond_12
    :goto_12
    return v0

    .line 756
    :cond_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    goto :goto_12

    .line 758
    :pswitch_1b
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_12

    .line 762
    :pswitch_21
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_12

    .line 765
    :pswitch_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/FolderIcon;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_12

    .line 766
    iget-object v1, p0, Lcom/android/launcher3/FolderIcon;->mLongPressHelper:Lcom/android/launcher3/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_12

    .line 756
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_21
        :pswitch_27
        :pswitch_21
    .end packed-switch
.end method

.method public onUpdateAppNotifier(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onUpdateAppNotifier(Lcom/android/launcher3/FolderIcon;I)V

    return-void
.end method

.method public performCreateAnimation(Lcom/android/launcher3/ShortcutInfo;Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FLjava/lang/Runnable;)V
    .registers 16

    .prologue
    const/4 v7, 0x0

    move-object v0, p2

    .line 395
    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 397
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 396
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    .line 401
    const/16 v1, 0x15e

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v7}, Lcom/android/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderIcon;->addItem(Lcom/android/launcher3/ShortcutInfo;)V

    .line 405
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/FolderIcon;->onDrop(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/DragView;Landroid/graphics/Rect;FILjava/lang/Runnable;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 406
    return-void
.end method

.method public performDestroyAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 8

    .prologue
    sget-object v1, Lcom/android/launcher3/FolderIcon;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v1, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    .line 409
    :try_start_6
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/android/launcher3/FolderIcon;->getTopDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 410
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 411
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 410
    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/FolderIcon;->computePreviewDrawingParams(II)V

    .line 415
    const/16 v3, 0xc8

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4, p2}, Lcom/android/launcher3/FolderIcon;->animateFirstItem(Landroid/graphics/drawable/Drawable;IZLjava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1f} :catch_27

    .line 417
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$4$b43d69df(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_27
    move-exception v1

    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$after$com_lge_launcher3_badge_BadgeAspect$4$b43d69df(Lorg/aspectj/lang/JoinPoint;)V

    throw v1
.end method

.method public reComputePreviewItemDrawingParams(ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;
    .registers 4

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$reComputePreviewItemDrawingParams(Lcom/android/launcher3/FolderIcon;ILcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;)Lcom/android/launcher3/FolderIcon$PreviewItemDrawingParams;

    move-result-object v0

    return-object v0
.end method

.method public registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;"
        }
    .end annotation

    .prologue
    .line 1
    invoke-static {p0, p1, p2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/android/launcher3/FolderIcon;Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public setAdapiveTextColor(I)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_FolderIcon$setAdapiveTextColor(Lcom/android/launcher3/FolderIcon;I)V

    return-void
.end method

.method public setAppNotifierDrawer()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    return-void
.end method

.method public setTextVisible(Z)V
    .registers 4

    .prologue
    .line 695
    if-eqz p1, :cond_9

    .line 696
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 700
    :goto_8
    return-void

    .line 698
    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/folder/FolderIconAspect;->ajc$interMethod$com_lge_launcher3_folder_FolderIconAspect$com_android_launcher3_FolderIcon$toString(Lcom/android/launcher3/FolderIcon;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
