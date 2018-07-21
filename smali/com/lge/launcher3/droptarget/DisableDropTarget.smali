.class public Lcom/lge/launcher3/droptarget/DisableDropTarget;
.super Lcom/android/launcher3/ButtonDropTarget;
.source "DisableDropTarget.java"


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    const-string v1, "DisableDropTarget.java"

    const-class v2, Lcom/lge/launcher3/droptarget/DisableDropTarget;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "4"

    const-string v2, "onFinishInflate"

    const-string v3, "com.lge.launcher3.droptarget.DisableDropTarget"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x25

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/droptarget/DisableDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private static getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;
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
    .line 65
    instance-of v0, p0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_13

    .line 66
    check-cast p0, Lcom/android/launcher3/AppInfo;

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget v1, p0, Lcom/android/launcher3/AppInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 76
    :goto_12
    return-object v0

    .line 68
    :cond_13
    instance-of v0, p0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_2e

    .line 69
    check-cast p0, Lcom/android/launcher3/ShortcutInfo;

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 71
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v1, :cond_2e

    .line 72
    if-eqz v0, :cond_2e

    .line 73
    iget v1, p0, Lcom/android/launcher3/ShortcutInfo;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_12

    .line 76
    :cond_2e
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static isVplApp(Landroid/util/Pair;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    if-eqz p0, :cond_f

    .line 81
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/VplApps;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 83
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static startApplicationDisableActivity(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;)Z
    .registers 9

    .prologue
    .line 127
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2f

    .line 130
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Landroid/content/Intent;

    .line 134
    const-string v3, "com.lge.launcher3.intent.action.SHOW_DISABLE_DIALOG"

    .line 135
    const-string v4, "package"

    invoke-static {v4, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 133
    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 136
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const/high16 v0, 0x20800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 138
    if-eqz p3, :cond_2a

    .line 139
    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p3, v2, v0}, Lcom/android/launcher3/compat/UserHandleCompat;->addToIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 141
    :cond_2a
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 143
    const/4 v0, 0x1

    .line 146
    :goto_2e
    return v0

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method public static startDisableActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    .line 118
    invoke-static {p1}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 119
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 121
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 120
    invoke-static {p0, v0, v1, v2}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->startApplicationDisableActivity(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v0

    return v0
.end method

.method public static supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 51
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string v2, "no_control_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 53
    const-string v2, "no_uninstall_apps"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1d
    move v0, v1

    .line 58
    :goto_1e
    return v0

    .line 57
    :cond_1f
    invoke-static {p1}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->isVplApp(Landroid/util/Pair;)Z

    move-result v0

    goto :goto_1e
.end method


# virtual methods
.method protected completeDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 6

    .prologue
    .line 98
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->getAppInfoFlags(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 99
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 101
    iget-object v2, p0, Lcom/lge/launcher3/droptarget/DisableDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->startDisableActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 102
    new-instance v2, Lcom/lge/launcher3/droptarget/DisableDropTarget$1;

    invoke-direct {v2, p0, v1, v0, p1}, Lcom/lge/launcher3/droptarget/DisableDropTarget$1;-><init>(Lcom/lge/launcher3/droptarget/DisableDropTarget;Landroid/util/Pair;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 111
    iget-object v0, p0, Lcom/lge/launcher3/droptarget/DisableDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->addOnResumeCallback(Ljava/lang/Runnable;)V

    .line 115
    :goto_20
    return-void

    .line 113
    :cond_21
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->sendDisableResult(Lcom/android/launcher3/DragSource;Z)V

    goto :goto_20
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_d

    .line 91
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    invoke-interface {v0}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->deferCompleteDropAfterUninstallActivity()V

    .line 93
    :cond_d
    invoke-super {p0, p1}, Lcom/android/launcher3/ButtonDropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 94
    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/droptarget/DisableDropTarget;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 38
    :try_start_6
    invoke-super {p0}, Lcom/android/launcher3/ButtonDropTarget;->onFinishInflate()V

    .line 40
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/droptarget/DisableDropTarget;->mHoverColor:I

    .line 41
    const v0, 0x7f020061

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->setDrawable(I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_1c} :catch_24

    .line 42
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

.method sendDisableResult(Lcom/android/launcher3/DragSource;Z)V
    .registers 4

    .prologue
    .line 151
    instance-of v0, p1, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    if-eqz v0, :cond_9

    .line 152
    check-cast p1, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;

    invoke-interface {p1, p2}, Lcom/android/launcher3/UninstallDropTarget$UninstallSource;->onUninstallActivityReturned(Z)V

    .line 154
    :cond_9
    return-void
.end method

.method protected supportsDrop(Lcom/android/launcher3/DragSource;Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lge/launcher3/droptarget/DisableDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
