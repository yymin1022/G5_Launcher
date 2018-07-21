.class public Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;
.super Ljava/lang/Object;
.source "AdaptiveTextAspect.aj"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;,
        Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;
    }
.end annotation

.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final SHADOW_LARGE_ALPHA:I = 0x7fffffff

.field private static final SHADOW_SMALL_ALPHA:I = 0x33ffffff

.field public static final TAG:Ljava/lang/String;

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

.field private static sAdaptiveTextColor:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    :try_start_0
    const-class v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, -0x1

    sput v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$postClinit()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_f

    .line 187
    :goto_e
    return-void

    .line 55
    :catch_f
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(I)V
    .registers 1

    .prologue
    .line 55
    sput p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    return-void
.end method

.method public static adaptiveStatusBar(Lcom/android/launcher3/Workspace;I)V
    .registers 4

    .prologue
    .line 163
    if-eqz p0, :cond_26

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 165
    if-ne p1, v1, :cond_27

    const/4 v0, 0x1

    :goto_10
    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/WorkspaceItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_WorkspaceItds$com_android_launcher3_Workspace$setWorkspaceBG(Lcom/android/launcher3/Workspace;Z)V

    .line 167
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_MARSHMALLOW:Z

    if-eqz v0, :cond_26

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getSystemUiVisibility()I

    move-result v0

    .line 171
    if-ne p1, v1, :cond_29

    .line 172
    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_26

    .line 173
    or-int/lit16 v0, v0, 0x2000

    .line 174
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setSystemUiVisibility(I)V

    .line 184
    :cond_26
    :goto_26
    return-void

    .line 165
    :cond_27
    const/4 v0, 0x0

    goto :goto_10

    .line 177
    :cond_29
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_26

    .line 178
    xor-int/lit16 v0, v0, 0x2000

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setSystemUiVisibility(I)V

    goto :goto_26
.end method

.method static synthetic ajc$around$com_lge_launcher3_adaptive_AdaptiveTextAspect$3$2c3a7d90proceed(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    invoke-virtual {p4, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I
    .registers 1

    .prologue
    .line 1
    sget v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    return v0
.end method

.method public static synthetic ajc$inlineAccessFieldSet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor(I)V
    .registers 1

    .prologue
    .line 1
    sput p0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Ljava/lang/Float;I)I
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    return v0
.end method

.method public static synthetic ajc$interFieldGetDispatch$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/Workspace;->ajc$get$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interFieldInit$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)V
    .registers 1

    .prologue
    .line 54
    return-void
.end method

.method public static synthetic ajc$interFieldSetDispatch$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/Workspace;->ajc$set$mSharedPrefListerner(Lcom/android/launcher3/Workspace;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    if-nez v0, :cond_12

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    .line 44
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 48
    :goto_11
    return-void

    .line 46
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    goto :goto_11
.end method

.method public static ajc$interMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_FolderIcon$setAdapiveTextColor(Lcom/android/launcher3/FolderIcon;I)V
    .registers 3

    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    .line 52
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setAdapiveTextColor(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_FolderIcon$setAdapiveTextColor(Lcom/android/launcher3/FolderIcon;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderIcon;->setAdapiveTextColor(I)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_adaptive_AdaptiveTextAspect"

    sget-object v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    return-object v0
.end method

.method private getModifiedShadowColor(Ljava/lang/Float;I)I
    .registers 5

    .prologue
    .line 191
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 192
    const/16 v1, 0xff

    if-ne v0, v1, :cond_18

    .line 194
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {}, Lcom/android/launcher3/BubbleTextView;->ajc$get$SHADOW_LARGE_RADIUS()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_19

    const v0, 0x7fffffff

    .line 193
    :goto_17
    and-int/2addr p2, v0

    .line 196
    :cond_18
    return p2

    .line 194
    :cond_19
    const v0, 0x33ffffff

    goto :goto_17
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private setAdaptiveTextColor(Lcom/android/launcher3/Workspace;I)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    .line 121
    invoke-static {p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->adaptiveStatusBar(Lcom/android/launcher3/Workspace;I)V

    move v2, v3

    .line 123
    :goto_9
    if-lt v2, v4, :cond_2d

    .line 139
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 140
    invoke-virtual {p1}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 141
    const v1, 0x7f0e0054

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    check-cast v0, Lcom/android/launcher3/Hotseat;

    .line 142
    invoke-virtual {v0, v3}, Lcom/android/launcher3/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 143
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 144
    if-nez v2, :cond_57

    .line 156
    :cond_2c
    return-void

    .line 124
    :cond_2d
    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 125
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 126
    if-nez v5, :cond_3d

    .line 123
    :cond_39
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 130
    :cond_3d
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 131
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_44
    if-ltz v1, :cond_39

    .line 132
    invoke-virtual {v5, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 133
    instance-of v6, v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;

    if-eqz v6, :cond_53

    .line 134
    check-cast v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;

    invoke-interface {v0, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;->setAdapiveTextColor(I)V

    .line 131
    :cond_53
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_44

    .line 148
    :cond_57
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 149
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_5e
    if-ltz v1, :cond_2c

    .line 150
    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 151
    instance-of v3, v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;

    if-eqz v3, :cond_6d

    .line 152
    check-cast v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;

    invoke-interface {v0, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextInterface;->setAdapiveTextColor(I)V

    .line 149
    :cond_6d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_5e
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$1$f8798449(Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(Workspace.new(..))"
    .end annotation

    .prologue
    .line 61
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace;

    .line 62
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    new-instance v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$AdaptiveTextAspect$1;-><init>(Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Lcom/android/launcher3/Workspace;)V

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interFieldSetDispatch$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    const/4 v2, 0x0

    invoke-static {v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interFieldGetDispatch$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_Workspace$mSharedPrefListerner(Lcom/android/launcher3/Workspace;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    move-result-object v3

    .line 81
    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/sharedpreferences/SharedPreferencesManager;->registerOnSharedPreferenceChangeListener(Landroid/content/Context;ILandroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 83
    invoke-static {}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->possibleToUseWallpapaerApi()Z

    move-result v2

    if-nez v2, :cond_3b

    .line 84
    invoke-static {v1}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->getAdaptiveTextColor(Landroid/content/Context;)I

    move-result v2

    sput v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    .line 85
    sget v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->adaptiveStatusBar(Lcom/android/launcher3/Workspace;I)V

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 88
    new-instance v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;

    invoke-direct {v2, p0, v1}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect$InitAdaptiveColor;-><init>(Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;Landroid/content/Context;)V

    .line 89
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    :cond_3a
    :goto_3a
    return-void

    .line 92
    :cond_3b
    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->getTextColorForCurrentWallpaper(Landroid/app/WallpaperManager;)I

    move-result v2

    .line 91
    sput v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    .line 93
    sget v2, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->adaptiveStatusBar(Lcom/android/launcher3/Workspace;I)V

    .line 94
    sget v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    if-nez v0, :cond_3a

    .line 95
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    goto :goto_3a
.end method

.method public ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$2$e3777690(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "initialization(BubbleTextView.new(..))"
    .end annotation

    .prologue
    .line 112
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 113
    sget v1, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {v0, v1}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    .line 114
    return-void
.end method

.method public ajc$after$com_lge_launcher3_adaptive_AdaptiveTextAspect$4$966a0f8(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "context,intent"
        value = "(execution(public void WallpaperChangedReceiver.onReceive(..)) && args(context, intent))"
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->possibleToUseWallpapaerApi()Z

    move-result v0

    if-nez v0, :cond_a

    .line 227
    invoke-static {p1}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->runAdaptiveColor(Landroid/content/Context;)V

    .line 239
    :goto_9
    return-void

    .line 230
    :cond_a
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/util/LGUtilFunctionReflect$WallpaperManagerExReflect;->getTextColorForCurrentWallpaper(Landroid/app/WallpaperManager;)I

    move-result v0

    .line 229
    sput v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    .line 231
    sget v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    if-nez v0, :cond_25

    .line 232
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    .line 234
    :cond_25
    sget-object v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->TAG:Ljava/lang/String;

    const-string v1, "onSharedPreferenceChanged: %d(%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 235
    sget v4, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 234
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {p1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->saveAdaptiveTextColor(Landroid/content/Context;I)V

    .line 237
    sget v0, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->sAdaptiveTextColor:I

    invoke-static {p1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextUtil;->sendWallpaperBrightness(Landroid/content/Context;I)V

    goto :goto_9
.end method

.method public ajc$around$com_lge_launcher3_adaptive_AdaptiveTextAspect$3$2c3a7d90(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 11
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "radius,dx,dy,color,ajc$aroundClosure"
        value = "(call(public void setShadowLayer(..)) && (args(radius, dx, dy, color) && within(BubbleTextView)))"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    invoke-interface {p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v2

    invoke-static {v0, v2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$interMethodDispatch1$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_android_launcher3_BubbleTextView$setAdapiveTextColor(Lcom/android/launcher3/BubbleTextView;I)V

    .line 211
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_38

    .line 212
    const v0, 0x7f0b0019

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 213
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    .line 221
    :cond_34
    :goto_34
    invoke-static {p1, p2, p3, p4, p5}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$around$com_lge_launcher3_adaptive_AdaptiveTextAspect$3$2c3a7d90proceed(Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 222
    return-void

    .line 214
    :cond_38
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_55

    .line 215
    const v0, 0x7f0b0017

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_34

    .line 217
    :cond_55
    invoke-static {}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$inlineAccessFieldGet$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$sAdaptiveTextColor()I

    move-result v0

    const v2, 0x7f0b0014

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_34

    .line 218
    const v0, 0x7f0b0015

    invoke-virtual {v1, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_34
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.adaptive.AdaptiveTextAspect$AdaptiveTextInterface"
        targetTypePattern = "com.android.launcher3.BubbleTextView"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$declare_parents_2()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.adaptive.AdaptiveTextAspect$AdaptiveTextInterface"
        targetTypePattern = "com.android.launcher3.FolderIcon"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method public ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$getModifiedShadowColor(Ljava/lang/Float;I)I
    .registers 4

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->getModifiedShadowColor(Ljava/lang/Float;I)I

    move-result v0

    return v0
.end method

.method public ajc$privMethod$com_lge_launcher3_adaptive_AdaptiveTextAspect$com_lge_launcher3_adaptive_AdaptiveTextAspect$setAdaptiveTextColor(Lcom/android/launcher3/Workspace;I)V
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0, p1, p2}, Lcom/lge/launcher3/adaptive/AdaptiveTextAspect;->setAdaptiveTextColor(Lcom/android/launcher3/Workspace;I)V

    return-void
.end method
