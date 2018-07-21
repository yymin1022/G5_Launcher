.class Lcom/lge/lgewidgetlib/extview/WidgetAnimator$1;
.super Ljava/lang/Object;
.source "WidgetAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->reverse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;


# direct methods
.method constructor <init>(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$1;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/lgewidgetlib/extview/WidgetAnimator$1;->this$0:Lcom/lge/lgewidgetlib/extview/WidgetAnimator;

    invoke-static {v0}, Lcom/lge/lgewidgetlib/extview/WidgetAnimator;->access$4(Lcom/lge/lgewidgetlib/extview/WidgetAnimator;)Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/lge/lgewidgetlib/extview/ExtViewEventListener;->onRestoreReqComplete()V

    .line 70
    return-void
.end method
