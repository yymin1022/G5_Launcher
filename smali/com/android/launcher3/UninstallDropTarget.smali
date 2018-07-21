.class public Lcom/android/launcher3/UninstallDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "UninstallDropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/UninstallDropTarget$UninstallSource;
    }
.end annotation


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/UninstallDropTarget;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/UninstallDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "UninstallDropTarget.java"

    const-class v2, Lcom/android/launcher3/UninstallDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.android.launcher3.UninstallDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/UninstallDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method protected static getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    instance-of v0, p0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_13

    .line 75
    check-cast p0, Lcom/android/launcher3/AppInfo;

    .line 76
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/launcher3/AppInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 85
    :goto_12
    return-object v0

    .line 77
    :cond_13
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2e

    .line 78
    check-cast p0, Lcom/android/launcher3/ShortcutInfo;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 80
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v1, :cond_2e

    .line 81
    if-eqz v0, :cond_2e

    .line 82
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_12

    .line 85
    :cond_2e
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 119
    invoke-static {p1}, Lcom/android/launcher3/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 120
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 122
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 121
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Launcher;->startApplicationUninstallActivity(Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v0, v2, :cond_25

    .line 46
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 47
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 48
    const-string v2, "no_control_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_23

    .line 49
    const-string v2, "no_uninstall_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_23
    move v0, v1

    .line 67
    :goto_24
    return v0

    .line 54
    :cond_25
    invoke-static {p1}, Lcom/android/launcher3/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_54

    .line 56
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 58
    invoke-static {p0, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->isAdminApplication(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 59
    invoke-static {p0, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->isLGMDMAppNotAllowUninstall(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 60
    invoke-static {p0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->hasUserRestriction(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4b

    .line 61
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/util/ManagedProfileUtils;->isUninstallBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 62
    :cond_4b
    const-string v0, "DropTarget"

    const-string v2, "Admin & MDM : not be able to uninstall!"

    invoke-static {v0, v2}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 63
    goto :goto_24

    .line 67
    :cond_54
    if-eqz v2, :cond_64

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_64

    const/4 v0, 0x1

    goto :goto_24

    :cond_64
    move v0, v1

    goto :goto_24
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    .prologue
    .line 99
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/android/launcher3/UninstallDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 100
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 101
    iget-object v2, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/launcher3/UninstallDropTarget;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 103
    new-instance v2, Lcom/android/launcher3/UninstallDropTarget$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/android/launcher3/UninstallDropTarget$1;-><init>(Lcom/android/launcher3/UninstallDropTarget;Landroid/util/Pair;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 112
    iget-object v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 116
    :goto_20
    return-void

    .line 114
    :cond_21
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/UninstallDropTarget;->sendUninstallResult(Lcom/android/launcher3/DragSource;Z)V

    goto :goto_20
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 91
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_d

    .line 92
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    invoke-interface {v0}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->deferCompleteDropAfterUninstallActivity()V

    .line 94
    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 95
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/android/launcher3/UninstallDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 31
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 33
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/UninstallDropTarget;->mHoverColor:I

    .line 35
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/android/launcher3/UninstallDropTarget;->setDrawable(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_24

    .line 36
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

.method protected sendUninstallResult(Lcom/android/launcher3/DragSource;Z)V
    .registers 4

    .prologue
    .line 127
    instance-of v0, p1, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_9

    .line 128
    check-cast p1, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    invoke-interface {p1, p2}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->onUninstallActivityReturned(Z)V

    .line 130
    :cond_9
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/android/launcher3/UninstallDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/launcher3/UninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
