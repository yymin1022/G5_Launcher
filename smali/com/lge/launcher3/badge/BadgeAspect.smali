.class public Lcom/lge/launcher3/badge/BadgeAspect;
.super Ljava/lang/Object;
.source "BadgeAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/badge/BadgeAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_badge_BadgeAspect$6$5de0fc78proceed(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setDrawAppNotifier(Lcom/android/launcher3/FolderIcon;Z)V
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderIcon;->setDrawAppNotifier(Z)V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onDetachedFromWindow(Lcom/android/launcher3/FolderIcon;)V
    .registers 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->ajc$superDispatch$com_android_launcher3_FolderIcon$onDetachedFromWindowInternal()V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->unregisterAppNotifierGroup(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;)V

    .line 70
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onUpdateAppNotifier(Lcom/android/launcher3/FolderIcon;I)V
    .registers 5

    .prologue
    .line 85
    invoke-static {}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->ajc$get$TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Update: ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mFolderName(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/FolderIcon;->ajc$superDispatch$com_android_launcher3_FolderIcon$onUpdateAppNotifier(ILandroid/widget/TextView;)V

    .line 88
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/android/launcher3/FolderIcon;Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/FolderIcon;",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/FolderIcon;->ajc$superDispatch$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static ajc$interMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V
    .registers 2

    .prologue
    .line 60
    invoke-static {p0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mInfo(Lcom/android/launcher3/FolderIcon;)Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/FolderIcon;->ajc$superDispatch$com_android_launcher3_FolderIcon$getContentsByString(Lcom/android/launcher3/FolderInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, p0, v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/android/launcher3/FolderIcon;Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lge/launcher3/badge/BadgeFolderIcon;->ajc$set$mAppNotifierDrawer(Lcom/lge/launcher3/badge/BadgeFolderIcon;Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;)V

    .line 61
    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onDetachedFromWindow(Lcom/android/launcher3/FolderIcon;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->onDetachedFromWindow()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$onUpdateAppNotifier(Lcom/android/launcher3/FolderIcon;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/FolderIcon;->onUpdateAppNotifier(I)V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$registerAppNotifier(Lcom/android/launcher3/FolderIcon;Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/FolderIcon;",
            "Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/FolderIcon;->registerAppNotifier(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;Ljava/util/ArrayList;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierDrawer;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderIcon;->setAppNotifierDrawer()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/badge/BadgeAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/badge/BadgeAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/BadgeAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/badge/BadgeAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/BadgeAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_badge_BadgeAspect"

    sget-object v2, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/BadgeAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/badge/BadgeAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_badge_BadgeAspect$3$7710dffd(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(protected void FolderIcon.onAttachedToWindow())"
    .end annotation

    .prologue
    .line 53
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 54
    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    .line 55
    return-void
.end method

.method public ajc$after$com_lge_launcher3_badge_BadgeAspect$4$b43d69df(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "execution(public void FolderIcon.performDestroyAnimation(..))"
    .end annotation

    .prologue
    .line 93
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 94
    invoke-virtual {v0}, Lcom/android/launcher3/FolderIcon;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->unregisterAppNotifierGroup(Lcom/lge/launcher3/badge/appnotifier/IAppNotifierGroup;)V

    .line 97
    return-void
.end method

.method public ajc$after$com_lge_launcher3_badge_BadgeAspect$5$1772b94c(Landroid/graphics/Canvas;Lorg/aspectj/lang/JoinPoint;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "canvas"
        value = "(execution(void FolderIcon.dispatchDraw(..)) && args(canvas))"
    .end annotation

    .prologue
    .line 103
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 104
    invoke-static {v0}, Lcom/android/launcher3/FolderIcon;->ajc$get$mPreviewBackground(Lcom/android/launcher3/FolderIcon;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/FolderIcon;->drawBadge(Landroid/graphics/Canvas;Landroid/widget/ImageView;)V

    .line 105
    return-void
.end method

.method public ajc$around$com_lge_launcher3_badge_BadgeAspect$6$5de0fc78(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "v,expectedPadding,ajc$aroundClosure"
        value = "(execution(* Workspace.createDragBitmap(..)) && args(v, expectedPadding))"
    .end annotation

    .prologue
    .line 121
    instance-of v0, p1, Lcom/android/launcher3/FolderIcon;

    if-eqz v0, :cond_15

    move-object v0, p1

    .line 122
    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 124
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$inlineAccessMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setDrawAppNotifier(Lcom/android/launcher3/FolderIcon;Z)V

    .line 125
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$around$com_lge_launcher3_badge_BadgeAspect$6$5de0fc78proceed(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 126
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$inlineAccessMethod$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setDrawAppNotifier(Lcom/android/launcher3/FolderIcon;Z)V

    move-object v0, v1

    .line 130
    :goto_14
    return-object v0

    .line 128
    :cond_15
    invoke-static {p1, p2, p3}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$around$com_lge_launcher3_badge_BadgeAspect$6$5de0fc78proceed(Landroid/view/View;Ljava/util/concurrent/atomic/AtomicInteger;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_14
.end method

.method public ajc$before$com_lge_launcher3_badge_BadgeAspect$1$3865eb1(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void FolderIcon.onAdd(..))"
    .end annotation

    .prologue
    .line 39
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 40
    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    .line 41
    return-void
.end method

.method public ajc$before$com_lge_launcher3_badge_BadgeAspect$2$4daa151a(Lorg/aspectj/lang/JoinPoint;)V
    .registers 3
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "execution(void FolderIcon.onRemove(..))"
    .end annotation

    .prologue
    .line 46
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderIcon;

    .line 47
    invoke-static {v0}, Lcom/lge/launcher3/badge/BadgeAspect;->ajc$interMethodDispatch1$com_lge_launcher3_badge_BadgeAspect$com_android_launcher3_FolderIcon$setAppNotifierDrawer(Lcom/android/launcher3/FolderIcon;)V

    .line 48
    return-void
.end method

.method synthetic ajc$declare_parents_1()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = true
        parentTypes = "com.lge.launcher3.badge.BadgeTextView"
        targetTypePattern = "com.android.launcher3.BubbleTextView"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$declare_parents_2()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = true
        parentTypes = "com.lge.launcher3.badge.BadgeFolderIcon"
        targetTypePattern = "com.android.launcher3.FolderIcon"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$declare_parents_3()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = false
        parentTypes = "com.lge.launcher3.badge.appnotifier.IAppNotifierGroup"
        targetTypePattern = "com.android.launcher3.FolderIcon"
    .end annotation

    .prologue
    .line 1
    return-void
.end method

.method synthetic ajc$declare_parents_4()V
    .registers 1
    .annotation runtime Lorg/aspectj/internal/lang/annotation/ajcDeclareParents;
        isExtends = true
        parentTypes = "com.lge.launcher3.badge.BadgeAppWidgetHostView"
        targetTypePattern = "com.android.launcher3.LauncherAppWidgetHostView"
    .end annotation

    .prologue
    .line 1
    return-void
.end method
