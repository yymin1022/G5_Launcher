.class Lcom/android/launcher3/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$2;->this$0:Lcom/android/launcher3/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 457
    return-void
.end method
