.class public Lcom/lge/launcher3/droptarget/CancelDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "CancelDropTarget.java"


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/droptarget/CancelDropTarget;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/droptarget/CancelDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "CancelDropTarget.java"

    const-class v2, Lcom/lge/launcher3/droptarget/CancelDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.lge.launcher3.droptarget.CancelDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x16

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/CancelDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    .prologue
    .line 37
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/droptarget/CancelDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 23
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 25
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/droptarget/CancelDropTarget;->mHoverColor:I

    .line 26
    const v0, 0x7f020060

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/CancelDropTarget;->setDrawable(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_24

    .line 27
    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_24
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->aspectOf()Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/droptarget/ButtonDropTargetAspect;->ajc$after$com_lge_launcher3_droptarget_ButtonDropTargetAspect$1$97a46da5(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 31
    instance-of v0, p2, Lcom/android/launcher3/PendingAddItemInfo;

    return v0
.end method
