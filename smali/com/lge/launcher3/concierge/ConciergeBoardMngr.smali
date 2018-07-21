.class public Lcom/lge/launcher3/concierge/ConciergeBoardMngr;
.super Ljava/lang/Object;
.source "ConciergeBoardMngr.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConciergeBoardMngr"

.field private static sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

.field private static sIsExtViewEnabled:Z


# instance fields
.field mDragLayer:Landroid/view/ViewGroup;

.field mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

.field mLauncher:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    .line 35
    return-void
.end method

.method private cancelExtView()V
    .registers 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    if-eqz v0, :cond_a

    .line 122
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;->cancelExtViewMode()V

    .line 126
    :goto_9
    return-void

    .line 124
    :cond_a
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "cancelExtViewMode , mExtViewHandlerImpl is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static cancelExtViewMode()V
    .registers 2

    .prologue
    .line 112
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_a

    .line 113
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-direct {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->cancelExtView()V

    .line 117
    :goto_9
    return-void

    .line 115
    :cond_a
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "sCancelExtViewMode , sInstance is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static enableConciergeExtView(Z)V
    .registers 2

    .prologue
    .line 129
    sput-boolean p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    .line 130
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_f

    sget-boolean v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    if-eqz v0, :cond_f

    .line 131
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-virtual {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->notifyExtViewAvailable()V

    .line 134
    :cond_f
    return-void
.end method

.method public static getInstance()Lcom/lge/launcher3/concierge/ConciergeBoardMngr;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 42
    new-instance v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    .line 43
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method private isExtView()Z
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    if-eqz v0, :cond_b

    .line 104
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;->isExtViewMode()Z

    move-result v0

    .line 108
    :goto_a
    return v0

    .line 106
    :cond_b
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "isExtViewMode , mExtViewHandlerImpl is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static isExtViewMode()Z
    .registers 2

    .prologue
    .line 93
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_b

    .line 94
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-direct {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->isExtView()Z

    move-result v0

    .line 97
    :goto_a
    return v0

    .line 96
    :cond_b
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "sIsExtViewMode , sInstance is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private notifyWidgetHostDestroyed()V
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    if-eqz v0, :cond_a

    .line 86
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;->notifyWidgetHostDestroyed()V

    .line 90
    :goto_9
    return-void

    .line 88
    :cond_a
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "destroyWidgetHost, mExtViewHandlerImpl is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static onDestroyHost()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 76
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-direct {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->notifyWidgetHostDestroyed()V

    .line 77
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_f

    .line 78
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->setContext(Landroid/content/Context;)V

    .line 80
    :cond_f
    sput-object v1, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    .line 81
    return-void
.end method

.method public static onStartBiding()V
    .registers 1

    .prologue
    .line 64
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_9

    .line 65
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-virtual {v0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->notifyBindingStarted()V

    .line 67
    :cond_9
    return-void
.end method

.method public static setupExtLayerForAttach(Landroid/view/ViewGroup;)V
    .registers 3

    .prologue
    .line 52
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    if-eqz v0, :cond_a

    .line 53
    sget-object v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sInstance:Lcom/lge/launcher3/concierge/ConciergeBoardMngr;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->setupExtLayer(Landroid/view/ViewGroup;)V

    .line 57
    :goto_9
    return-void

    .line 55
    :cond_a
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "sSetupExtLayerForAttach , sInstance is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public attachWidgetToExtLayer(Landroid/view/View;Landroid/widget/FrameLayout$LayoutParams;)V
    .registers 6

    .prologue
    .line 156
    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    if-nez v0, :cond_27

    .line 157
    :cond_6
    const-string v0, "ConciergeBoardMngr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attachWidgetToExtLayer , view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragLayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :goto_26
    return-void

    .line 161
    :cond_27
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/DragLayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$setForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    .line 162
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    .line 165
    if-nez v0, :cond_44

    .line 166
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "attachWidgetToExtLayer , manager is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26

    .line 169
    :cond_44
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->showBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    goto :goto_26
.end method

.method public calcExtWidgetBg(FZ)I
    .registers 7

    .prologue
    const/16 v3, 0x33

    const/4 v2, -0x1

    .line 216
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;

    move-result-object v0

    .line 217
    if-nez v0, :cond_17

    .line 218
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "getBlurCommonColor controller is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 239
    :goto_16
    return v0

    .line 224
    :cond_17
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->isLiveWallpaperMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 225
    const/16 v0, 0xcc

    .line 226
    const v1, 0x515151

    .line 227
    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_16

    .line 229
    :cond_2a
    invoke-virtual {v0}, Lcom/lge/launcher3/wallpaperblur/WallpaperBlurredImageController;->getCommonColor()I

    move-result v0

    .line 232
    if-eqz p2, :cond_3c

    .line 233
    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v2, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 234
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    goto :goto_16

    .line 236
    :cond_3c
    invoke-static {v2, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 237
    invoke-static {v1, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v0

    .line 238
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 239
    invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    goto :goto_16
.end method

.method public detachWidgetFromExtLayer(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 175
    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    if-nez v0, :cond_28

    .line 176
    :cond_7
    const-string v0, "ConciergeBoardMngr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detachWidgetFromExtLayer , view = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDragLayer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_27
    return-void

    .line 180
    :cond_28
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;

    move-result-object v0

    .line 181
    if-nez v0, :cond_38

    .line 182
    const-string v0, "ConciergeBoardMngr"

    const-string v1, "detachWidgetFromExtLayer , manager is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    .line 185
    :cond_38
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;->TOP_DRAGLAYER:Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager;->hideBackground(Lcom/lge/launcher3/wallpaperblur/HomescreenBlurManager$BackgroundType;I)V

    .line 187
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 188
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/launcher3/DragLayer;

    invoke-static {v0, v2}, Lcom/lge/launcher3/nativeitds/ConciergeItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_ConciergeItds$com_android_launcher3_InsettableFrameLayout$setForceIgnoreInsets(Lcom/android/launcher3/InsettableFrameLayout;Z)V

    goto :goto_27
.end method

.method public getHostViewBlurLayout(Landroid/view/View;)Landroid/view/View;
    .registers 6

    .prologue
    .line 208
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    .line 209
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/WidgetBlurAspect;->ajc$interMethodDispatch1$com_lge_launcher3_wallpaperblur_WidgetBlurAspect$com_android_launcher3_LauncherAppWidgetHostView$getWidgetBlurLayout(Lcom/android/launcher3/LauncherAppWidgetHostView;)Lcom/lge/launcher3/wallpaperblur/WidgetBlurLayout;

    move-result-object v0

    .line 210
    const-string v1, "ConciergeBoardMngr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getHostViewBlurLayout = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method public getScreenHeight()I
    .registers 3

    .prologue
    .line 147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 148
    iget-object v1, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 150
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getWorkSpaceWidth()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 201
    const/4 v0, -0x1

    .line 203
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    goto :goto_5
.end method

.method public isExtViewAvailable()Z
    .registers 4

    .prologue
    .line 194
    const-string v0, "ConciergeBoardMngr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isExtViewAvailable = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-boolean v0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->sIsExtViewEnabled:Z

    return v0
.end method

.method public notifyBindingStarted()V
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    if-eqz v0, :cond_9

    .line 71
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;->notifyBindingStarted()V

    .line 73
    :cond_9
    return-void
.end method

.method public notifyExtViewAvailable()V
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;->notifyExtViewAvailable()V

    .line 138
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mLauncher:Landroid/app/Activity;

    .line 48
    iput-object v0, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    .line 49
    return-void
.end method

.method public setWidgetExtHandler(Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mExtViewHandlerImpl:Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;

    .line 143
    return-void
.end method

.method public setupExtLayer(Landroid/view/ViewGroup;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/lge/launcher3/concierge/ConciergeBoardMngr;->mDragLayer:Landroid/view/ViewGroup;

    .line 61
    return-void
.end method
