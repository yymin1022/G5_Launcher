.class public Lcom/lge/weaving/LGAspectWatcher;
.super Ljava/lang/Object;
.source "LGAspectWatcher.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "WeavingWatcher"

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/weaving/LGAspectWatcher;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Lcom/lge/weaving/LGAspectWatcher;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/weaving/LGAspectWatcher;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "WeavingWatcher"

    const-string v1, "LGAspectWatcher Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$1$be1751cbproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$2$f8d4ab2bproceed(Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$3$17a42cacproceed(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$4$5c61276eproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$5$16a16117proceed(Landroid/widget/AdapterView;Landroid/view/View;IJLorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    invoke-static {p2}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p3, p4}, Lorg/aspectj/runtime/internal/Conversions;->longObject(J)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p5, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$6$4323a20aproceed(ILandroid/view/View;Landroid/view/ViewGroup;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/aspectj/runtime/internal/Conversions;->intObject(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p2, v0, v1

    invoke-virtual {p3, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$7$6d425749proceed(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-virtual {p2, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic ajc$around$com_lge_weaving_LGAspectWatcher$8$8617ffd4proceed(Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-virtual {p1, v0}, Lorg/aspectj/runtime/internal/AroundClosure;->run([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/aspectj/runtime/internal/Conversions;->voidValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V
    .registers 4

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/weaving/LGAspectWatcher;->end(Lorg/aspectj/lang/JoinPoint;J)V

    return-void
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/weaving/LGAspectWatcher;

    invoke-direct {v0}, Lcom/lge/weaving/LGAspectWatcher;-><init>()V

    sput-object v0, Lcom/lge/weaving/LGAspectWatcher;->ajc$perSingletonInstance:Lcom/lge/weaving/LGAspectWatcher;

    return-void
.end method

.method public static aspectOf()Lcom/lge/weaving/LGAspectWatcher;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/weaving/LGAspectWatcher;->ajc$perSingletonInstance:Lcom/lge/weaving/LGAspectWatcher;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_weaving_LGAspectWatcher"

    sget-object v2, Lcom/lge/weaving/LGAspectWatcher;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/weaving/LGAspectWatcher;->ajc$perSingletonInstance:Lcom/lge/weaving/LGAspectWatcher;

    return-object v0
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/weaving/LGAspectWatcher;->ajc$perSingletonInstance:Lcom/lge/weaving/LGAspectWatcher;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$around$com_lge_weaving_LGAspectWatcher$1$be1751cb(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 7
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "ajc$aroundClosure"
        value = "lifeCycle()"
    .end annotation

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 39
    invoke-static {p1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$1$be1751cbproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 41
    invoke-static {p0, p2, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 42
    return-void
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$2$f8d4ab2b(Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "bundle,ajc$aroundClosure"
        value = "lifeCycleBundle(bundle)"
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 56
    invoke-static {p1, p2}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$2$f8d4ab2bproceed(Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 58
    invoke-static {p0, p3, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 59
    return-void
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$3$17a42cac(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "inflater,container,savedInstanceState,ajc$aroundClosure"
        value = "lifeCycleFragment(inflater, container, savedInstanceState)"
    .end annotation

    .prologue
    .line 72
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 73
    invoke-static {p1, p2, p3, p4}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$3$17a42cacproceed(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;

    move-result-object v2

    .line 74
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 75
    invoke-static {p0, p5, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 77
    return-object v2
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$4$5c61276e(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "view,ajc$aroundClosure"
        value = "clickEvent(view)"
    .end annotation

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 99
    invoke-static {p1, p2}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$4$5c61276eproceed(Landroid/view/View;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 101
    invoke-static {p0, p3, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 102
    return-void
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$5$16a16117(Landroid/widget/AdapterView;Landroid/view/View;IJLorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ",
            "Lorg/aspectj/runtime/internal/AroundClosure;",
            "Lorg/aspectj/lang/JoinPoint;",
            ")V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "parent,view,position,id,ajc$aroundClosure"
        value = "itemClickEvent(parent, view, position, id)"
    .end annotation

    .prologue
    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 117
    invoke-static/range {p1 .. p6}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$5$16a16117proceed(Landroid/widget/AdapterView;Landroid/view/View;IJLorg/aspectj/runtime/internal/AroundClosure;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 119
    invoke-static {p0, p7, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 120
    return-void
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$6$4323a20a(ILandroid/view/View;Landroid/view/ViewGroup;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Landroid/view/View;
    .registers 12
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "position,convertView,parent,ajc$aroundClosure"
        value = "(execution(View *.*..getView(int, View, ViewGroup)) && (!within(LGAspectWatcher+) && args(position, convertView, parent)))"
    .end annotation

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 138
    invoke-static {p1, p2, p3, p4}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$6$4323a20aproceed(ILandroid/view/View;Landroid/view/ViewGroup;Lorg/aspectj/runtime/internal/AroundClosure;)Landroid/view/View;

    move-result-object v2

    .line 139
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 141
    invoke-static {p0, p5, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 143
    return-object v2
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$7$6d425749(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 9
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "context,intent,ajc$aroundClosure"
        value = "(execution(void *.*..onReceive(Context, Intent)) && (!within(LGAspectWatcher+) && args(context, intent)))"
    .end annotation

    .prologue
    .line 150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 151
    invoke-static {p1, p2, p3}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$7$6d425749proceed(Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 152
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 154
    invoke-static {p0, p4, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 155
    return-void
.end method

.method public ajc$around$com_lge_weaving_LGAspectWatcher$8$8617ffd4(Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/Around;
        argNames = "canvas,ajc$aroundClosure"
        value = "(execution(void *.*..onDraw(Canvas)) && (!within(LGAspectWatcher+) && args(canvas)))"
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 162
    invoke-static {p1, p2}, Lcom/lge/weaving/LGAspectWatcher;->ajc$around$com_lge_weaving_LGAspectWatcher$8$8617ffd4proceed(Landroid/graphics/Canvas;Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 164
    invoke-static {p0, p3, v0, v1}, Lcom/lge/weaving/LGAspectWatcher;->ajc$inlineAccessMethod$com_lge_weaving_LGAspectWatcher$com_lge_weaving_LGAspectWatcher$end(Lcom/lge/weaving/LGAspectWatcher;Lorg/aspectj/lang/JoinPoint;J)V

    .line 165
    return-void
.end method

.method synthetic ajc$pointcut$$clickEvent$a30(Landroid/view/View;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "view"
        value = "(execution(void *.*..onClick(android.view.View)) && (!within(com.lge.weaving.LGAspectWatcher+) && args(view)))"
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method synthetic ajc$pointcut$$getZViewEvent$ed6(ILandroid/view/View;Landroid/view/ViewGroup;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "position,convertView,parent"
        value = "(execution(android.view.View *.*..getView(int, android.view.View, android.view.ViewGroup)) && (!within(com.lge.weaving.LGAspectWatcher+) && args(position, convertView, parent)))"
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method synthetic ajc$pointcut$$itemClickEvent$c21(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "parent,view,position,id"
        value = "(execution(void *.*..onItem*(android.widget.AdapterView<>, android.view.View, int, long)) && (!within(com.lge.weaving.LGAspectWatcher+) && args(parent, view, position, id)))"
    .end annotation

    .prologue
    .line 112
    return-void
.end method

.method synthetic ajc$pointcut$$lifeCycle$31e()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(void *.*..on*())"
    .end annotation

    .prologue
    .line 35
    return-void
.end method

.method synthetic ajc$pointcut$$lifeCycleBundle$469(Landroid/os/Bundle;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "bundle"
        value = "(execution(void *.*..onCreate(android.os.Bundle)) && (!within(com.lge.weaving.LGAspectWatcher+) && args(bundle)))"
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method synthetic ajc$pointcut$$lifeCycleFragment$65c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "inflater,container,savedInstanceState"
        value = "(execution(android.view.View *.*..on*(android.view.LayoutInflater, android.view.ViewGroup, android.os.Bundle)) && (!within(com.lge.weaving.LGAspectWatcher+) && args(inflater, container, savedInstanceState)))"
    .end annotation

    .prologue
    .line 67
    return-void
.end method

.method synthetic ajc$pointcut$$setContentViewEvent$93f(I)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "layoutResID"
        value = "(call(void android.app.*+.setContentView(int)) && args(layoutResID))"
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method end(Lorg/aspectj/lang/JoinPoint;J)V
    .registers 10

    .prologue
    .line 168
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getSignature()Lorg/aspectj/lang/Signature;

    move-result-object v0

    .line 169
    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getDeclaringTypeName()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-interface {v0}, Lorg/aspectj/lang/Signature;->getName()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v2, "WeavingWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/0/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    neg-long v4, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
