.class public Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "OverviewScreenAccessibilityDelegate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field protected static final MOVE_BACKWARD:I = 0x7f0e0007

.field protected static final MOVE_FORWARD:I = 0x7f0e0008

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private DELAY_TIME:I

.field private isAccessibilityAction:Z

.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mResetAccessibilityAction:Ljava/lang/Runnable;

.field protected final mWorkspace:Lcom/android/launcher3/Workspace;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Workspace;)V
    .registers 11

    .prologue
    const v1, 0x7f0f0069

    const v2, 0x7f0f0068

    const v8, 0x7f0e0008

    const v7, 0x7f0e0007

    .line 41
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V

    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interFieldInit$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    .line 46
    iget-object v5, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v6, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 47
    if-eqz v4, :cond_54

    move v0, v1

    :goto_39
    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v5, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 50
    if-eqz v4, :cond_56

    :goto_49
    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v5, v8, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v0, v8, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    return-void

    :cond_54
    move v0, v2

    .line 48
    goto :goto_39

    :cond_56
    move v2, v1

    .line 51
    goto :goto_49
.end method

.method public static ajc$get$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)I
    .registers 2

    .prologue
    .line 1
    iget v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->DELAY_TIME:I

    return v0
.end method

.method public static ajc$get$MOVE_BACKWARD()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->MOVE_BACKWARD:I

    return v0
.end method

.method public static ajc$get$MOVE_FORWARD()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->MOVE_FORWARD:I

    return v0
.end method

.method public static ajc$get$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Z
    .registers 2

    .prologue
    .line 1
    iget-boolean v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->isAccessibilityAction:Z

    return v0
.end method

.method public static ajc$get$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static ajc$get$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mResetAccessibilityAction:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static ajc$get$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;)Lcom/android/launcher3/Workspace;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "OverviewScreenAccessibilityDelegate.java"

    const-class v2, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "performAccessibilityAction"

    const-string v3, "com.android.launcher3.accessibility.OverviewScreenAccessibilityDelegate"

    const-string v4, "android.view.View:int:android.os.Bundle"

    const-string v5, "host:action:args"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x37

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$DELAY_TIME(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;I)V
    .registers 2

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->DELAY_TIME:I

    return-void
.end method

.method public static ajc$set$MOVE_BACKWARD(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->MOVE_BACKWARD:I

    return-void
.end method

.method public static ajc$set$MOVE_FORWARD(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->MOVE_FORWARD:I

    return-void
.end method

.method public static ajc$set$isAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Z)V
    .registers 2

    .prologue
    .line 1
    iput-boolean p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->isAccessibilityAction:Z

    return-void
.end method

.method public static ajc$set$mHandler(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/os/Handler;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static ajc$set$mResetAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Ljava/lang/Runnable;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mResetAccessibilityAction:Ljava/lang/Runnable;

    return-void
.end method

.method public static ajc$set$mWorkspace(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Lcom/android/launcher3/Workspace;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    return-void
.end method

.method private movePage(ILandroid/view/View;)V
    .registers 6

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onStartReordering()V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p2, p1}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->onEndReordering()V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f006a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 80
    const/16 v0, 0x40

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 81
    return-void
.end method

.method private static final performAccessibilityAction_aroundBody0(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    .line 56
    if-eqz p1, :cond_12

    .line 57
    const/16 v1, 0x40

    if-ne p2, v1, :cond_17

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 69
    :cond_12
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    :goto_16
    return v0

    .line 60
    :cond_17
    const v1, 0x7f0e0008

    if-ne p2, v1, :cond_28

    .line 61
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    goto :goto_16

    .line 63
    :cond_28
    const v1, 0x7f0e0007

    if-ne p2, v1, :cond_12

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    goto :goto_16
.end method

.method private static final performAccessibilityAction_aroundBody1$advice(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 12

    .prologue
    .line 15
    invoke-interface {p10}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;

    .line 16
    invoke-static {v0, p6, p7, p8}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$aroundPerformAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    .line 17
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public ajc$privMethod$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$movePage(ILandroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->movePage(ILandroid/view/View;)V

    return-void
.end method

.method public ajc$superDispatch$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public aroundPerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    .prologue
    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/lge/launcher3/nativeitds/OverviewScreenAccessibilityDelegateItds;->ajc$interMethod$com_lge_launcher3_nativeitds_OverviewScreenAccessibilityDelegateItds$com_android_launcher3_accessibility_OverviewScreenAccessibilityDelegate$aroundPerformAccessibilityAction(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 87
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_21

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f0e0008

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 91
    :cond_21
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mWorkspace:Lcom/android/launcher3/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->numCustomPages()I

    move-result v0

    if-le v1, v0, :cond_37

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f0e0007

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 94
    :cond_37
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 15

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v4

    invoke-static {}, Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;

    move-result-object v5

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, p1

    move v7, p2

    move-object v8, p3

    move-object v10, v4

    invoke-static/range {v0 .. v10}, Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;->performAccessibilityAction_aroundBody1$advice(Lcom/android/launcher3/accessibility/OverviewScreenAccessibilityDelegate;Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/nativejoin/OverviewScreenAccessibilityDelegateAspect;Landroid/view/View;ILandroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    move-result v0

    return v0
.end method
