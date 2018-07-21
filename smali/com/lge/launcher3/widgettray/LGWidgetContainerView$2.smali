.class Lcom/lge/launcher3/widgettray/LGWidgetContainerView$2;
.super Ljava/lang/Object;
.source "LGWidgetContainerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/LGWidgetContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$2;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/LGWidgetContainerView$2;->this$0:Lcom/lge/launcher3/widgettray/LGWidgetContainerView;

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/LGWidgetContainerView;->closeGroupWidgetPopup()Z

    .line 69
    const/4 v0, 0x0

    return v0
.end method
