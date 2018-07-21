.class public Lcom/android/launcher3/InfoDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "InfoDropTarget.java"


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/InfoDropTarget;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/InfoDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "InfoDropTarget.java"

    const-class v2, Lcom/android/launcher3/InfoDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.InfoDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/InfoDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static startDetailsActivityForInfo(Ljava/lang/Object;Lcom/android/launcher3/Launcher;)V
    .registers 4

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 47
    instance-of v1, p0, Lcom/android/launcher3/AppInfo;

    if-eqz v1, :cond_18

    move-object v0, p0

    .line 48
    check-cast v0, Lcom/android/launcher3/AppInfo;

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 55
    :cond_a
    :goto_a
    instance-of v1, p0, Lcom/android/launcher3/ItemInfo;

    if-eqz v1, :cond_30

    .line 56
    check-cast p0, Lcom/android/launcher3/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 61
    :goto_12
    if-eqz v0, :cond_17

    .line 62
    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/Launcher;->startApplicationDetailsActivity(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    .line 64
    :cond_17
    return-void

    .line 49
    :cond_18
    instance-of v1, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_26

    move-object v0, p0

    .line 50
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_a

    .line 51
    :cond_26
    instance-of v1, p0, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v1, :cond_a

    move-object v0, p0

    .line 52
    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_a

    .line 58
    :cond_30
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v1

    goto :goto_12
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 3

    .prologue
    .line 72
    instance-of v0, p1, Lcom/android/launcher3/AppInfo;

    if-nez v0, :cond_a

    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    .prologue
    .line 77
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/launcher3/InfoDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/InfoDropTarget;->startDetailsActivityForInfo(Ljava/lang/Object;Lcom/android/launcher3/Launcher;)V

    .line 78
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/InfoDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 38
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/InfoDropTarget;->mHoverColor:I

    .line 42
    const v0, 0x7f020068

    invoke-virtual {p0, v0}, Lcom/android/launcher3/InfoDropTarget;->setDrawable(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_24

    .line 43
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
    .line 68
    invoke-interface {p1}, Lcom/android/launcher3/DragSource;->supportsAppInfoDropTarget()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/launcher3/InfoDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/InfoDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
