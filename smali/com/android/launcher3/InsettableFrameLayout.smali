.class public Lcom/android/launcher3/InsettableFrameLayout;
.super Landroid/widget/FrameLayout;
.source "InsettableFrameLayout.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mForceIgnoreInsets:Z

.field protected mInsets:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/InsettableFrameLayout;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)V

    .line 15
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    .line 19
    invoke-virtual {p0, p0}, Lcom/android/launcher3/InsettableFrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 20
    return-void
.end method

.method public static ajc$get$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mForceIgnoreInsets:Z

    return v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "InsettableFrameLayout.java"

    const-class v2, Lcom/android/launcher3/InsettableFrameLayout;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "setFrameLayoutChildInsets"

    const-string v3, "com.android.launcher3.InsettableFrameLayout"

    const-string v4, "android.view.View:android.graphics.Rect:android.graphics.Rect"

    const-string v5, "child:newInsets:oldInsets"

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/InsettableFrameLayout;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/InsettableFrameLayout;->mForceIgnoreInsets:Z

    return-void
.end method

.method private static final setFrameLayoutChildInsets_aroundBody0(Lcom/android/launcher3/InsettableFrameLayout;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    .line 25
    instance-of v1, p1, Lcom/android/launcher3/Insettable;

    if-eqz v1, :cond_14

    move-object v1, p1

    .line 26
    check-cast v1, Lcom/android/launcher3/Insettable;

    invoke-interface {v1, p2}, Lcom/android/launcher3/Insettable;->setInsets(Landroid/graphics/Rect;)V

    .line 33
    :cond_10
    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    return-void

    .line 27
    :cond_14
    iget-boolean v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->ignoreInsets:Z

    if-nez v1, :cond_10

    .line 28
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->topMargin:I

    .line 29
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->leftMargin:I

    .line 30
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iget v3, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->rightMargin:I

    .line 31
    iget v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_10
.end method

.method private static final setFrameLayoutChildInsets_aroundBody1$advice(Lcom/android/launcher3/InsettableFrameLayout;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/ConciergeAspect;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 13

    .prologue
    .line 88
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InsettableFrameLayout;

    .line 89
    invoke-static {v0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$getForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 90
    invoke-static {p5}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_nativejoin_ConciergeAspect$com_lge_launcher3_nativejoin_ConciergeAspect$TAG(Lcom/lge/launcher3/nativejoin/ConciergeAspect;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "setFrameLayoutChildInsets called by extview"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_15
    return-void

    .line 94
    :cond_16
    invoke-static {p0, p6, p7, p8, p4}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets_aroundBody0(Lcom/android/launcher3/InsettableFrameLayout;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;)V

    goto :goto_15
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3

    .prologue
    .line 59
    instance-of v0, p1, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 53
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/InsettableFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 4

    .prologue
    .line 48
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;
    .registers 3

    .prologue
    .line 64
    new-instance v0, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getForceIgnoreInsets()Z
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$getForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;)Z

    move-result v0

    return v0
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 91
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 95
    return-void
.end method

.method public setForceIgnoreInsets(Z)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethod$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$setForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    return-void
.end method

.method public setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/InsettableFrameLayout;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets_aroundBody1$advice(Lcom/android/launcher3/InsettableFrameLayout;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/ConciergeAspect;Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .registers 6

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/launcher3/InsettableFrameLayout;->getChildCount()I

    move-result v1

    .line 39
    const/4 v0, 0x0

    :goto_5
    if-lt v0, v1, :cond_d

    .line 43
    iget-object v0, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 44
    return-void

    .line 40
    :cond_d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/InsettableFrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 41
    iget-object v3, p0, Lcom/android/launcher3/InsettableFrameLayout;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/launcher3/InsettableFrameLayout;->setFrameLayoutChildInsets(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
