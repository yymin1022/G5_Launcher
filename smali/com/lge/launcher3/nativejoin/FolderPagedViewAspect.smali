.class public Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;
.super Ljava/lang/Object;
.source "FolderPagedViewAspect.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_FolderPagedViewAspect$1$51ee83fcproceed(Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 14
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_launcher3_nativejoin_FolderPagedViewAspect$2$98a69384proceed(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    invoke-direct {v0}, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;-><init>()V

    sput-object v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    return-void
.end method

.method public static aspectOf()Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_nativejoin_FolderPagedViewAspect"

    sget-object v2, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$perSingletonInstance:Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_launcher3_nativejoin_FolderPagedViewAspect$1$51ee83fc(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Lcom/android/launcher3/PageIndicator$PageMarkerResources;
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "execution(protected PageMarkerResources FolderPagedView.getPageIndicatorMarker(..))"
    .end annotation

    .prologue
    const v3, 0x7f020047

    .line 15
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderPagedView;

    .line 16
    invoke-virtual {v0}, Lcom/android/launcher3/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 17
    invoke-static {v0}, Lcom/android/launcher3/FolderPagedView;->ajc$get$mFolder(Lcom/android/launcher3/FolderPagedView;)Lcom/android/launcher3/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Folder;->getInfo()Lcom/android/launcher3/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/FolderInfo;->folderColor:I

    .line 16
    invoke-static {v1, v0}, Lcom/lge/launcher3/folder/FolderColorUtil;->getFolderTextColor(Landroid/content/Context;I)I

    move-result v0

    .line 18
    new-instance v1, Lcom/android/launcher3/PageIndicator$PageMarkerResources;

    .line 19
    const v2, -0x66000001

    and-int/2addr v2, v0

    .line 18
    invoke-direct {v1, v3, v3, v0, v2}, Lcom/android/launcher3/PageIndicator$PageMarkerResources;-><init>(IIII)V

    return-object v1
.end method

.method public ajc$around$com_lge_launcher3_nativejoin_FolderPagedViewAspect$2$98a69384(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "view,item,rank,ajc$aroundClosure"
        value = "addViewForRank(view, item, rank)"
    .end annotation

    .prologue
    .line 26
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 31
    :cond_4
    :goto_4
    return-void

    .line 29
    :cond_5
    invoke-static {p1, p2, p3, p4}, Lcom/lge/launcher3/nativejoin/FolderPagedViewAspect;->ajc$around$com_lge_launcher3_nativejoin_FolderPagedViewAspect$2$98a69384proceed(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;ILorg/aspectj/runtime/internal/AroundClosure;)V

    goto :goto_4
.end method

.method public synthetic ajc$pointcut$$addViewForRank$392(Landroid/view/View;Lcom/android/launcher3/ShortcutInfo;I)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "view,item,rank"
        value = "(execution(public void addViewForRank(android.view.View, com.android.launcher3.ShortcutInfo, int)) && args(view, item, rank))"
    .end annotation

    .prologue
    .line 23
    return-void
.end method
