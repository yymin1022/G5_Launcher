.class public Lcom/android/launcher3/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mAllAppsButtonRank:I

.field private mContent:Lcom/android/launcher3/CellLayout;

.field private final mHasVerticalHotseat:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/Hotseat;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 53
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    .line 54
    return-void
.end method

.method public static ajc$get$mContent(Lcom/android/launcher3/Hotseat;)Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "Hotseat.java"

    const-class v2, Lcom/android/launcher3/Hotseat;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "0"

    const-string v2, "resetLayout"

    const-string v3, "com.android.launcher3.Hotseat"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x6e

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/Hotseat;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mContent(Lcom/android/launcher3/Hotseat;Lcom/android/launcher3/CellLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-void
.end method

.method private static final isAllAppsButtonRank_aroundBody0(Lcom/android/launcher3/Hotseat;I)Z
    .registers 3

    .prologue
    .line 90
    iget v0, p0, Lcom/android/launcher3/Hotseat;->mAllAppsButtonRank:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private static final isAllAppsButtonRank_aroundBody1$advice(Lcom/android/launcher3/Hotseat;ILcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z
    .registers 5

    .prologue
    .line 37
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    const/4 v0, 0x0

    .line 40
    :goto_7
    return v0

    :cond_8
    invoke-static {p0, p1}, Lcom/android/launcher3/Hotseat;->isAllAppsButtonRank_aroundBody0(Lcom/android/launcher3/Hotseat;I)Z

    move-result v0

    goto :goto_7
.end method

.method private static final resetLayout_aroundBody2(Lcom/android/launcher3/Hotseat;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->removeAllViewsInLayout()V

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 118
    const v2, 0x7f040001

    iget-object v3, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 117
    check-cast v1, Landroid/widget/TextView;

    .line 119
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f020000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 121
    iget-object v3, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Launcher;->resizeIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 122
    invoke-virtual {v1, v4, v2, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 124
    const v2, 0x7f0f002c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v0, Lcom/android/launcher3/HotseatIconKeyEventListener;

    invoke-direct {v0}, Lcom/android/launcher3/HotseatIconKeyEventListener;-><init>()V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 126
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_62

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setAllAppsButton(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHapticFeedbackTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mFocusHandler:Lcom/android/launcher3/FocusIndicatorView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 136
    :cond_62
    iget v0, p0, Lcom/android/launcher3/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v0

    .line 137
    iget v2, p0, Lcom/android/launcher3/Hotseat;->mAllAppsButtonRank:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v2

    .line 138
    new-instance v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v4, v0, v2, v5, v5}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    .line 139
    iput-boolean v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    .line 140
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    const/4 v2, -0x1

    invoke-virtual {v1}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 141
    return-void
.end method

.method private static final resetLayout_aroundBody3$advice(Lcom/android/launcher3/Hotseat;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 6

    .prologue
    .line 49
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->isDisableAllApps()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Hotseat;

    .line 51
    invoke-static {v0}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$interMethodDispatch1$com_lge_launcher3_allappsless_AllAppsLessAspect$com_android_launcher3_Hotseat$removeAllViewsInContent(Lcom/android/launcher3/Hotseat;)V

    .line 55
    :goto_f
    return-void

    .line 53
    :cond_10
    invoke-static {p0, p1}, Lcom/android/launcher3/Hotseat;->resetLayout_aroundBody2(Lcom/android/launcher3/Hotseat;Lorg/aspectj/lang/JoinPoint;)V

    goto :goto_f
.end method


# virtual methods
.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 156
    const-string v0, "container"

    const-string v1, "hotseat"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method getCellXFromOrder(I)I
    .registers 3

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_5

    const/4 p1, 0x0

    :cond_5
    return p1
.end method

.method getCellYFromOrder(I)I
    .registers 4

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, v1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getLayout()Lcom/android/launcher3/CellLayout;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .registers 4

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/launcher3/Hotseat;->mHasVerticalHotseat:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    :cond_d
    return p1
.end method

.method public hasIcons()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 64
    iget-object v1, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isAllAppsButtonRank(I)Z
    .registers 4

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher3/Hotseat;->isAllAppsButtonRank_aroundBody1$advice(Lcom/android/launcher3/Hotseat;ILcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;)Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 96
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 98
    iget-object v0, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->hotseatAllAppsRank:I

    iput v0, p0, Lcom/android/launcher3/Hotseat;->mAllAppsButtonRank:I

    .line 99
    const v0, 0x7f0e0047

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    .line 100
    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_36

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isLargeTablet:Z

    if-nez v0, :cond_36

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 105
    :goto_2d
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setIsHotseat(Z)V

    .line 107
    invoke-virtual {p0}, Lcom/android/launcher3/Hotseat;->resetLayout()V

    .line 108
    return-void

    .line 103
    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    goto :goto_2d
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 148
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isInUninstallMode()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 149
    const/4 v0, 0x1

    .line 151
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public removeAllViewsInContent()V
    .registers 1

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->ajc$interMethod$com_lge_launcher3_allappsless_AllAppsLessAspect$com_android_launcher3_Hotseat$removeAllViewsInContent(Lcom/android/launcher3/Hotseat;)V

    return-void
.end method

.method resetLayout()V
    .registers 4

    .prologue
    .line 1
    sget-object v0, Lcom/android/launcher3/Hotseat;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/lge/launcher3/allappsless/AllAppsLessAspect;->aspectOf()Lcom/lge/launcher3/allappsless/AllAppsLessAspect;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v0}, Lcom/android/launcher3/Hotseat;->resetLayout_aroundBody3$advice(Lcom/android/launcher3/Hotseat;Lorg/aspectj/lang/JoinPoint;Lcom/lge/launcher3/allappsless/AllAppsLessAspect;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher3/Hotseat;->mContent:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 73
    return-void
.end method
