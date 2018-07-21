.class public Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;
.super Ljava/lang/Object;
.source "FolderPagedViewItds.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

.field private static final ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    invoke-static {}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$preClinit()V

    .line 8
    :try_start_3
    invoke-static {}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$postClinit()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_6
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$afterAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V
    .registers 4

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getPageIndicator()Lcom/android/launcher3/PageIndicator;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    .line 12
    if-eqz v0, :cond_23

    .line 13
    invoke-static {p0, v0}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v2, v1

    .line 15
    invoke-static {p0}, Lcom/android/launcher3/FolderPagedView;->ajc$get$mPageIndicator(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/PageIndicator;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;

    invoke-static {p0, v1}, Lcom/lge/launcher3/nativeitds/PagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;->setTypePadding(I)V

    .line 18
    :cond_23
    return-void
.end method

.method public static ajc$interMethod$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$onAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V
    .registers 4

    .prologue
    sget-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v1

    .line 20
    :try_start_6
    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->ajc$superDispatch$com_android_launcher3_FolderPagedView$onAttachedToWindow()V

    .line 21
    invoke-static {p0}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$afterAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_c} :catch_14

    .line 22
    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    return-void

    :catch_14
    move-exception v0

    invoke-static {}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->aspectOf()Lcom/lge/launcher3/nativejoin/PagedViewAspect;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lge/launcher3/nativejoin/PagedViewAspect;->ajc$after$com_lge_launcher3_nativejoin_PagedViewAspect$3$5cabaaea(Lorg/aspectj/lang/JoinPoint;)V

    throw v0
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$afterAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->afterAttachedToWindow()V

    return-void
.end method

.method public static synthetic ajc$interMethodDispatch1$com_lge_launcher3_nativeitds_FolderPagedViewItds$com_android_launcher3_FolderPagedView$onAttachedToWindow(Lcom/android/launcher3/FolderPagedView;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/FolderPagedView;->onAttachedToWindow()V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    invoke-direct {v0}, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    return-void
.end method

.method private static ajc$preClinit()V
    .registers 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string v1, "FolderPagedViewItds.aj"

    const-class v2, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string v8, "method-execution"

    const-string v1, "1"

    const-string v2, "onAttachedToWindow"

    const-string v3, "com.android.launcher3.FolderPagedView"

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x13

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativeitds_FolderPagedViewItds"

    sget-object v2, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativeitds/FolderPagedViewItds;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
