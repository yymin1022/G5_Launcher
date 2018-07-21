.class public abstract Lcom/android/launcher3/ButtonDropTarget;
.super Landroid/widget/TextView;
.source "ButtonDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragController$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static DRAG_VIEW_DROP_DURATION:I

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field DISAPPEAR_ANIM_DURATION:I

.field OPEN_CLOSE_ANIM_DURATION:I

.field TRANSLATE_ANIM_DURATION:I

.field protected mActive:Z

.field private mAni:Landroid/animation/Animator;

.field private mBottomDragPadding:I

.field private mCurrentColorAnim:Landroid/animation/AnimatorSet;

.field mCurrentFilter:Landroid/graphics/ColorMatrix;

.field public mDragViewOriginColor:I

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDropTargetTitle:Ljava/lang/String;

.field mDstFilter:Landroid/graphics/ColorMatrix;

.field protected mHoverColor:I

.field private mIsAcceptableDragged:Z

.field private mIsDragEntered:Z

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mOriginalTextColor:Landroid/content/res/ColorStateList;

.field protected mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

.field mSrcFilter:Landroid/graphics/ColorMatrix;

.field private mTranslateToLeftAni:Landroid/view/animation/Animation;

.field private mTranslateToRightAni:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/android/launcher3/ButtonDropTarget;->ajc$preClinit()V

    .line 51
    const/16 v0, 0x11d

    sput v0, Lcom/android/launcher3/ButtonDropTarget;->DRAG_VIEW_DROP_DURATION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mDragViewOriginColor(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldInit$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    .line 77
    return-void
.end method

.method public static ajc$get$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->DISAPPEAR_ANIM_DURATION:I

    return v0
.end method

.method public static ajc$get$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->OPEN_CLOSE_ANIM_DURATION:I

    return v0
.end method

.method public static ajc$get$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->TRANSLATE_ANIM_DURATION:I

    return v0
.end method

.method public static ajc$get$mActive(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method public static ajc$get$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mAni:Landroid/animation/Animator;

    return-object v0
.end method

.method public static ajc$get$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/AnimatorSet;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public static ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static ajc$get$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetTitle:Ljava/lang/String;

    return-object v0
.end method

.method public static ajc$get$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIsAcceptableDragged:Z

    return v0
.end method

.method public static ajc$get$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mIsDragEntered:Z

    return v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method public static ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    return-object v0
.end method

.method public static ajc$get$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTranslateToLeftAni:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public static ajc$get$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mTranslateToRightAni:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "ButtonDropTarget.java"

    const-class v2, Lcom/android/launcher3/ButtonDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x50

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragEnter"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x74

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragOver"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragExit"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb3

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDragStart"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "com.android.launcher3.DragSource:java.lang.Object:int"

    const-string v5, "source:info:dragAction"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xbe

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "isDropEnabled"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xd1

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onDrop"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "com.android.launcher3.DropTarget$DragObject"

    const-string v5, "d"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xde

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onLayout"

    const-string v3, "com.android.launcher3.ButtonDropTarget"

    const-string v4, "boolean:int:int:int:int"

    const-string v5, "changed:left:top:right:bottom"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x141

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->DISAPPEAR_ANIM_DURATION:I

    return-void
.end method

.method public static ajc$set$OPEN_CLOSE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->OPEN_CLOSE_ANIM_DURATION:I

    return-void
.end method

.method public static ajc$set$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/ButtonDropTarget;->TRANSLATE_ANIM_DURATION:I

    return-void
.end method

.method public static ajc$set$mActive(Lcom/android/launcher3/ButtonDropTarget;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    return-void
.end method

.method public static ajc$set$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mAni:Landroid/animation/Animator;

    return-void
.end method

.method public static ajc$set$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/AnimatorSet;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    return-void
.end method

.method public static ajc$set$mDrawable(Lcom/android/launcher3/ButtonDropTarget;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static ajc$set$mDropTargetTitle(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mDropTargetTitle:Ljava/lang/String;

    return-void
.end method

.method public static ajc$set$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mIsAcceptableDragged:Z

    return-void
.end method

.method public static ajc$set$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mIsDragEntered:Z

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method public static ajc$set$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    return-void
.end method

.method public static ajc$set$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTranslateToLeftAni:Landroid/view/animation/Animation;

    return-void
.end method

.method public static ajc$set$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mTranslateToRightAni:Landroid/view/animation/Animation;

    return-void
.end method

.method private animateTextColor(I)V
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 146
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_b

    .line 147
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 150
    :cond_b
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 151
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    sget v1, Lcom/android/launcher3/DragView;->COLOR_CHANGE_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 153
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_33

    .line 154
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    .line 155
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    .line 156
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 159
    :cond_33
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColor()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    invoke-static {v0, v1}, Lcom/android/launcher3/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 160
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-static {p1, v0}, Lcom/android/launcher3/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 162
    new-instance v0, Landroid/animation/FloatArrayEvaluator;

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-virtual {v1}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/animation/FloatArrayEvaluator;-><init>([F)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 163
    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mSrcFilter:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mDstFilter:Landroid/graphics/ColorMatrix;

    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    aput-object v2, v1, v5

    .line 161
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 164
    new-instance v1, Lcom/android/launcher3/ButtonDropTarget$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/ButtonDropTarget$1;-><init>(Lcom/android/launcher3/ButtonDropTarget;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    const-string v1, "textColor"

    new-array v2, v5, [I

    aput p1, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 175
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 176
    return-void
.end method

.method private static final isDropEnabled_aroundBody6(Lcom/android/launcher3/ButtonDropTarget;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 3

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    return v0
.end method

.method private static final isDropEnabled_aroundBody7$advice(Lcom/android/launcher3/ButtonDropTarget;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 263
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 265
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v1

    .line 273
    :goto_12
    return v0

    .line 269
    :cond_13
    invoke-static {v2}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    move v0, v1

    .line 270
    goto :goto_12

    .line 273
    :cond_1f
    invoke-static {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled_aroundBody6(Lcom/android/launcher3/ButtonDropTarget;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    goto :goto_12
.end method

.method private static final onDragEnter_aroundBody0(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 118
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 119
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->animateTextColor(I)V

    .line 128
    :goto_12
    return-void

    .line 121
    :cond_13
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    if-nez v0, :cond_1e

    .line 122
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    .line 124
    :cond_1e
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-static {v0, v1}, Lcom/android/launcher3/DragView;->setColorScale(ILandroid/graphics/ColorMatrix;)V

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentFilter:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 126
    iget v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setTextColor(I)V

    goto :goto_12
.end method

.method private static final onDragEnter_aroundBody1$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 89
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 91
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-nez v1, :cond_13

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 148
    :cond_13
    :goto_13
    return-void

    .line 95
    :cond_14
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 97
    const v1, 0x8000

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->sendAccessibilityEvent(I)V

    .line 98
    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getSolidColor()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    .line 100
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v2, -0x10000

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 101
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 103
    new-instance v6, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;

    invoke-direct {v6, p3, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$1;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 117
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_4d

    .line 118
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    goto :goto_13

    .line 121
    :cond_4d
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 122
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 123
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    move-object v1, v0

    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 125
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/lit8 v2, v2, 0x2

    .line 127
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {v3, v7, v1, v7, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 128
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 129
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 130
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$2;

    invoke-direct {v2, p3, v6}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$2;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 146
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_13
.end method

.method private static final onDragExit_aroundBody2(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5

    .prologue
    .line 180
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_e

    .line 181
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 182
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->resetHoverColor()V

    .line 187
    :goto_d
    return-void

    .line 185
    :cond_e
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mHoverColor:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/DragView;->setColor(I)V

    goto :goto_d
.end method

.method private static final onDragExit_aroundBody3$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 16

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 159
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 161
    invoke-static {v0, v8}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 163
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    iget v2, v0, Lcom/android/launcher3/ButtonDropTarget;->mDragViewOriginColor:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 164
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 167
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 168
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 169
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v2

    .line 170
    iget-object v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v3

    move-object v1, v0

    .line 169
    invoke-static/range {v0 .. v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 171
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    div-int/lit8 v2, v2, 0x2

    .line 173
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v3, v3, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_6d

    .line 174
    new-instance v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$3;

    invoke-direct {v1, p3, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$3;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 182
    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;

    invoke-direct {v2, p3, v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$4;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V

    .line 191
    iget-boolean v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_6c

    .line 192
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-static {v0, v0, v2, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 193
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 239
    :cond_6c
    :goto_6c
    return-void

    .line 196
    :cond_6d
    new-instance v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;

    invoke-direct {v3, p3, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$5;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 205
    new-instance v4, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$6;

    invoke-direct {v4, p3, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$6;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 214
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    sub-int v1, v2, v1

    int-to-float v1, v1

    invoke-direct {v5, v1, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-static {v0, v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 215
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$TRANSLATE_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 217
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToLeftAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;

    invoke-direct {v2, p3, v4}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$7;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    iget-boolean v1, p4, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_6c

    .line 235
    sget-object v1, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;->CLOSE:Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;

    invoke-static {v0, v0, v3, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/Animator;)V

    .line 236
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_6c
.end method

.method private static final onDragStart_aroundBody4(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 192
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_17

    .line 194
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 195
    iput-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mCurrentColorAnim:Landroid/animation/AnimatorSet;

    .line 197
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    return-void

    .line 198
    :cond_2b
    const/16 v1, 0x8

    goto :goto_27
.end method

.method private static final onDragStart_aroundBody5$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 15

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 243
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ButtonDropTarget;

    .line 245
    invoke-virtual {v0, p6, p7}, Lcom/android/launcher3/ButtonDropTarget;->ajc$privMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mActive(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 246
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 247
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 248
    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 249
    invoke-static {v0, v2}, Lcom/android/launcher3/ButtonDropTarget;->ajc$set$mCurrentColorAnim(Lcom/android/launcher3/ButtonDropTarget;Landroid/animation/AnimatorSet;)V

    .line 252
    :cond_26
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mActive(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v2

    if-eqz v2, :cond_4c

    move v2, v3

    :goto_33
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 254
    invoke-static {v0, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    .line 255
    invoke-virtual {v0}, Lcom/android/launcher3/ButtonDropTarget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f02000b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 257
    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 258
    invoke-static {v0, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mIsDragEntered(Lcom/android/launcher3/ButtonDropTarget;Z)V

    .line 259
    return-void

    .line 252
    :cond_4c
    const/16 v2, 0x8

    goto :goto_33
.end method

.method private static final onDrop_aroundBody8(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V
    .registers 20

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 224
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 225
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 228
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 229
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v3, v5}, Lcom/android/launcher3/ButtonDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v5

    .line 231
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    invoke-virtual {v3}, Lcom/android/launcher3/SearchDropTargetBar;->deferOnDragEnd()V

    .line 234
    new-instance v14, Lcom/android/launcher3/ButtonDropTarget$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1}, Lcom/android/launcher3/ButtonDropTarget$2;-><init>(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 242
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3dcccccd    # 0.1f

    const v10, 0x3dcccccd    # 0.1f

    .line 243
    sget v11, Lcom/android/launcher3/ButtonDropTarget;->DRAG_VIEW_DROP_DURATION:I

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 244
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 245
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 242
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 246
    return-void
.end method

.method private static final onDrop_aroundBody9$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 24

    .prologue
    .line 277
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/launcher3/ButtonDropTarget;

    .line 278
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mDrawable(Lcom/android/launcher3/ButtonDropTarget;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 279
    const-string v2, ""

    invoke-virtual {v11, v2}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 282
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;)Landroid/view/animation/Animation;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 283
    const/4 v2, 0x0

    invoke-static {v11, v2}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$mTranslateToRightAni(Lcom/android/launcher3/ButtonDropTarget;Landroid/view/animation/Animation;)V

    .line 286
    :cond_26
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v2

    .line 287
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 288
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 289
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/DragView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p4

    iget-object v5, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/DragView;->getMeasuredHeight()I

    move-result v5

    invoke-static {v11, v11, v3, v5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethodDispatch1$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;

    move-result-object v5

    .line 291
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v3, v6

    .line 292
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mSearchDropTargetBar(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/SearchDropTargetBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/SearchDropTargetBar;->deferOnDragEnd()V

    .line 294
    invoke-static {v11}, Lcom/android/launcher3/ButtonDropTarget;->ajc$get$mLauncher(Lcom/android/launcher3/ButtonDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    const-string v7, "Home_RemoveItemByTrashCan"

    invoke-static {v3, v7}, Lcom/lge/launcher3/util/LGUserLog;->send(Landroid/content/Context;Ljava/lang/String;)V

    .line 296
    new-instance v3, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v3, v0, v11, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$8;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 308
    new-instance v14, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;

    move-object/from16 v0, p3

    invoke-direct {v14, v0, v11, v3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$ButtonDropTargetAspect$9;-><init>(Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;)V

    .line 322
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v7, -0x10000

    invoke-virtual {v3, v7}, Lcom/android/launcher3/DragView;->setColor(I)V

    .line 323
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const v7, 0x3f19999a    # 0.6f

    invoke-virtual {v3, v7}, Lcom/android/launcher3/DragView;->setAlpha(F)V

    .line 325
    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/DragView;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const v9, 0x3e4ccccd    # 0.2f

    const v10, 0x3e4ccccd    # 0.2f

    .line 326
    invoke-static {v11}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$DISAPPEAR_ANIM_DURATION(Lcom/android/launcher3/ButtonDropTarget;)I

    move-result v11

    new-instance v12, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v13, 0x40000000    # 2.0f

    invoke-direct {v12, v13}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 327
    new-instance v13, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v13}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 328
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 325
    invoke-virtual/range {v2 .. v16}, Lcom/android/launcher3/DragLayer;->animateView(Lcom/android/launcher3/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 329
    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 4

    .prologue
    .line 203
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getCreateCircularReveal(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;Ljava/lang/Runnable;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect$DROP_TARGET_ANIM_TYPE;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getDropTargetCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;II)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 1
    invoke-static/range {p0 .. p5}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$getIconCenter(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$restoreNormalStatus(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public ajc$interMethodDispatch2$com_lge_launcher3_droptarget_ButtonDropTargetAspect$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$setDropCustomDrawablePadding(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/ButtonDropTarget;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/ButtonDropTarget;->supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
.end method

.method public enableAccessibleDrag(Z)V
    .registers 3

    .prologue
    .line 303
    if-eqz p1, :cond_7

    move-object v0, p0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void

    .line 303
    :cond_7
    const/4 v0, 0x0

    goto :goto_3
.end method

.method protected getAccessibilityDropConfirmation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 5

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/widget/TextView;->getHitRect(Landroid/graphics/Rect;)V

    .line 256
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mBottomDragPadding:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 259
    iget-object v1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 260
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 261
    return-void
.end method

.method protected getIconRect(IIII)Landroid/graphics/Rect;
    .registers 10

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    .line 267
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 268
    invoke-virtual {v0, p0, v2}, Lcom/android/launcher3/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 277
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 278
    sub-int v1, v0, p3

    .line 284
    :goto_21
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v4, p4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 285
    add-int v4, v3, p4

    .line 287
    invoke-virtual {v2, v1, v3, v0, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    sub-int v0, p1, p3

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 291
    sub-int v1, p2, p4

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 292
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 294
    return-object v2

    .line 280
    :cond_3e
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getPaddingLeft()I

    move-result v1

    add-int/2addr v1, v0

    .line 281
    add-int v0, v1, p3

    goto :goto_21
.end method

.method public getLocationInDragLayer([I)V
    .registers 3

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/DragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    .line 300
    return-void
.end method

.method public getTextColor()I
    .registers 2

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method public isAcceptableDragged()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$interMethod$com_lge_launcher3_droptarget_ButtonDropTargetAspect$com_android_launcher3_ButtonDropTarget$isAcceptableDragged(Lcom/android/launcher3/ButtonDropTarget;)Z

    move-result v0

    return v0
.end method

.method public isDropEnabled()Z
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_5:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/ButtonDropTarget;->isDropEnabled_aroundBody7$advice(Lcom/android/launcher3/ButtonDropTarget;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 312
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    .line 313
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getAccessibilityDropConfirmation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 314
    return-void
.end method

.method public onDragEnd()V
    .registers 2

    .prologue
    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mActive:Z

    .line 216
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/ButtonDropTarget;->onDragEnter_aroundBody1$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_3:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/ButtonDropTarget;->onDragExit_aroundBody3$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_2:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    .line 133
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$3$81ae56b(Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DragSource;Ljava/lang/Object;I)V
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_4:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/ButtonDropTarget;->onDragStart_aroundBody5$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DragSource;Ljava/lang/Object;ILorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 9

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_6:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v3

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p1

    move-object v6, v2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/ButtonDropTarget;->onDrop_aroundBody9$advice(Lcom/android/launcher3/ButtonDropTarget;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;Lcom/android/launcher3/DropTarget$DragObject;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 81
    :try_start_6
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 87
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setText(Ljava/lang/CharSequence;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_24} :catch_2c

    .line 89
    :cond_24
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_2c
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public onFlingToDelete(Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/PointF;)V
    .registers 3

    .prologue
    .line 113
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 13

    .prologue
    sget-object v0, Lcom/android/launcher3/ButtonDropTarget;->ajc$tjp_7:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/aspectj/runtime/internal/Conversions;->booleanObject(Z)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p4}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p5}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v6

    .line 322
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$before$com_lge_launcher3_droptarget_ButtonDropTargetAspect$8$dfdd584f(ZIIIILorg/aspectj/lang/JoinPoint;)V

    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 323
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method protected resetHoverColor()V
    .registers 3

    .prologue
    .line 136
    invoke-static {}, Lcom/android/launcher3/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 137
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->animateTextColor(I)V

    .line 142
    :goto_f
    return-void

    .line 139
    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mOriginalTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ButtonDropTarget;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_f
.end method

.method protected setDrawable(I)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher3/ButtonDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_17

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 102
    :goto_16
    return-void

    .line 100
    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/ButtonDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/launcher3/ButtonDropTarget;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_16
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 106
    return-void
.end method

.method public setSearchDropTargetBar(Lcom/android/launcher3/SearchDropTargetBar;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/launcher3/ButtonDropTarget;->mSearchDropTargetBar:Lcom/android/launcher3/SearchDropTargetBar;

    .line 110
    return-void
.end method

.method protected abstract supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
.end method
