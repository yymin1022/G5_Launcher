.class public Lcom/android/launcher3/LauncherAppWidgetHost;
.super Lcom/lge/lgewidgetlib/LgeAppWidgetHost;
.source "LauncherAppWidgetHost.java"


# static fields
.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mProviderChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mQsbWidgetId:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 1
    invoke-static {}, Lcom/android/launcher3/LauncherAppWidgetHost;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/Launcher;I)V
    .registers 6

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;-><init>(Landroid/content/Context;I)V

    sget-object v0, Lcom/android/launcher3/LauncherAppWidgetHost;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p0, p0, p1, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 37
    :try_start_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mQsbWidgetId:I

    .line 44
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_19} :catch_21

    .line 45
    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$1$5850f30e(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_21
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/ConciergeAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/ConciergeAspect;->ajc$after$com_lge_launcher3_nativejoin_ConciergeAspect$1$5850f30e(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static ajc$get$mLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private static ajc$preClinit()V
    .registers 7

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "LauncherAppWidgetHost.java"

    const-class v2, Lcom/android/launcher3/LauncherAppWidgetHost;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v6, "initialization"

    const-string v1, "1"

    const-string v2, "com.android.launcher3.LauncherAppWidgetHost"

    const-string v3, "com.android.launcher3.Launcher:int"

    const-string v4, "launcher:hostId"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lorg/aspectj/runtime/reflect/Factory;->makeConstructorSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/ConstructorSignature;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-virtual {v0, v6, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherAppWidgetHost;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static ajc$set$mLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;Lcom/android/launcher3/Launcher;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method private static final createView_aroundBody0(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 7

    .prologue
    .line 109
    iget-boolean v0, p3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_1f

    .line 110
    new-instance v1, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-direct {v1, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    iget v2, p3, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initialLayout:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 114
    const/4 v0, 0x0

    invoke-virtual {v1, v0, p3}, Lcom/android/launcher3/LauncherAppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 115
    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    move-object v0, v1

    .line 118
    :goto_1e
    return-object v0

    :cond_1f
    invoke-super {p0, p1, p2, p3}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_1e
.end method

.method private static final createView_aroundBody1$advice(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/appwidget/AppWidgetHostView;
    .registers 11

    .prologue
    .line 17
    invoke-static {p0, p5, p6, p7}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView_aroundBody0(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 18
    invoke-static {p5}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/uninstallmode/UninstallModeManager;

    invoke-static {}, Lcom/lge/launcher3/uninstallmode/UninstallModeManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 19
    if-eqz v0, :cond_1c

    instance-of v1, p5, Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_1c

    .line 20
    check-cast p5, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p5}, Landroid/appwidget/AppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setClickable(Z)V

    .line 23
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public addProviderChangeListener(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 13

    .prologue
    .line 1
    invoke-static {}, Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;

    move-result-object v4

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/LauncherAppWidgetHost;->createView_aroundBody1$advice(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/lge/launcher3/nativejoin/LauncherAppWidgetHostAspect;Landroid/content/Context;ILcom/android/launcher3/LauncherAppWidgetProviderInfo;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    return-object v0
.end method

.method public getLauncher()Lcom/android/launcher3/Launcher;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/LauncherAppWidgetHostItds;->ajc$interMethod$com_lge_launcher3_nativeitds_LauncherAppWidgetHostItds$com_android_launcher3_LauncherAppWidgetHost$getLauncher(Lcom/android/launcher3/LauncherAppWidgetHost;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 5

    .prologue
    .line 54
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mQsbWidgetId:I

    if-ne p2, v0, :cond_a

    .line 55
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHost$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHost$1;-><init>(Lcom/android/launcher3/LauncherAppWidgetHost;Landroid/content/Context;)V

    .line 64
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/android/launcher3/LauncherAppWidgetHostView;

    invoke-direct {v0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    goto :goto_9
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .registers 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 127
    invoke-static {v0, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 129
    invoke-super {p0, p1, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 130
    return-void
.end method

.method protected onProvidersChanged()V
    .registers 5

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 99
    const/4 v3, 0x1

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/LauncherModel;->loadAndBindWidgetsAndShortcuts(Landroid/content/Context;Lcom/android/launcher3/LauncherModel$Callbacks;Z)V

    .line 100
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_27

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_28

    .line 105
    :cond_27
    return-void

    .line 101
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 102
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_21
.end method

.method public removeProviderChangeListener(Ljava/lang/Runnable;)V
    .registers 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mProviderChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public setQsbWidgetId(I)V
    .registers 2

    .prologue
    .line 48
    iput p1, p0, Lcom/android/launcher3/LauncherAppWidgetHost;->mQsbWidgetId:I

    .line 49
    return-void
.end method

.method public startListening()V
    .registers 3

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->startListening()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 81
    :cond_3
    return-void

    .line 71
    :catch_4
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Landroid/os/TransactionTooLargeException;

    if-nez v1, :cond_3

    .line 78
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopListening()V
    .registers 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->stopListening()V

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetHost;->clearViews()V

    .line 87
    return-void
.end method
