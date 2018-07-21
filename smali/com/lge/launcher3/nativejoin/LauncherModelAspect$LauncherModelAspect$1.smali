.class Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;
.super Ljava/lang/Object;
.source "LauncherModelAspect.aj"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$6$9e6fbcce(Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

.field private final synthetic val$ajc$aroundClosure:Lorg/aspectj/runtime/internal/AroundClosure;

.field private final synthetic val$lm:Lcom/android/launcher3/LauncherModel;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/nativejoin/LauncherModelAspect;Lcom/android/launcher3/LauncherModel;Lorg/aspectj/runtime/internal/AroundClosure;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;->this$0:Lcom/lge/launcher3/nativejoin/LauncherModelAspect;

    iput-object p2, p0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;->val$lm:Lcom/android/launcher3/LauncherModel;

    iput-object p3, p0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;->val$ajc$aroundClosure:Lorg/aspectj/runtime/internal/AroundClosure;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;->val$lm:Lcom/android/launcher3/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->ajc$privMethod$com_lge_launcher3_nativejoin_LauncherModelAspect$com_android_launcher3_LauncherModel$unbindItemInfosAndClearQueuedBindRunnables()V

    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/LauncherModelAspect$LauncherModelAspect$1;->val$ajc$aroundClosure:Lorg/aspectj/runtime/internal/AroundClosure;

    .line 142
    invoke-static {v0}, Lcom/lge/launcher3/nativejoin/LauncherModelAspect;->ajc$around$com_lge_launcher3_nativejoin_LauncherModelAspect$6$9e6fbcceproceed(Lorg/aspectj/runtime/internal/AroundClosure;)V

    .line 143
    return-void
.end method
