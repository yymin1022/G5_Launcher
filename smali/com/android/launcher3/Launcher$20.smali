.class Lcom/android/launcher3/Launcher$20;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/Launcher$20;->ajc$preClinit()V

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Launcher$20;->this$0:Lcom/android/launcher3/Launcher;

    .line 2873
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Launcher.java"

    const-class v2, Lcom/android/launcher3/Launcher$20;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-call"

    const-string v1, "1"

    const-string v2, "performHapticFeedback"

    const-string v3, "android.view.View"

    const-string v4, "int"

    const-string v5, "feedbackConstant"

    const-string v6, ""

    const-string v7, "boolean"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0xb3e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Launcher$20;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static final performHapticFeedback_aroundBody0(Lcom/android/launcher3/Launcher$20;Landroid/view/View;ILorg/aspectj/lang/JoinPoint;)Z
    .registers 5

    .prologue
    .line 2878
    invoke-virtual {p1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    move-result v0

    return v0
.end method

.method private static final performHapticFeedback_aroundBody1$advice(Lcom/android/launcher3/Launcher$20;Landroid/view/View;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z
    .registers 8

    .prologue
    .line 50
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VibratorManager;->isVibratorFeedbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/Launcher$20;->performHapticFeedback_aroundBody0(Lcom/android/launcher3/Launcher$20;Landroid/view/View;ILorg/aspectj/lang/JoinPoint;)Z

    .line 54
    :cond_13
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 2877
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_1e

    .line 2878
    const/4 v2, 0x1

    sget-object v0, Lcom/android/launcher3/Launcher$20;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p1, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/Launcher$20;->performHapticFeedback_aroundBody1$advice(Lcom/android/launcher3/Launcher$20;Landroid/view/View;ILorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/crosscutting/GlobalAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Z

    .line 2880
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method
