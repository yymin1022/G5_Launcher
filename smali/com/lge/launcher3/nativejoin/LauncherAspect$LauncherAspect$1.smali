.class Lcom/lge/launcher3/nativejoin/LauncherAspect$LauncherAspect$1;
.super Ljava/lang/Object;
.source "LauncherAspect.aj"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/nativejoin/LauncherAspect;->ajc$before$com_lge_launcher3_nativejoin_LauncherAspect$3$119b79fc(Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/nativejoin/LauncherAspect;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/nativejoin/LauncherAspect;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/nativejoin/LauncherAspect$LauncherAspect$1;->this$0:Lcom/lge/launcher3/nativejoin/LauncherAspect;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .registers 2

    .prologue
    .line 128
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 129
    return-void
.end method
