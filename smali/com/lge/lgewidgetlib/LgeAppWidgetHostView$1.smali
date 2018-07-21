.class Lcom/lge/lgewidgetlib/LgeAppWidgetHostView$1;
.super Ljava/lang/Object;
.source "LgeAppWidgetHostView.java"

# interfaces
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3

    .prologue
    .line 33
    const-class v0, Landroid/widget/RemoteViews$RemoteView;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 34
    const/4 v0, 0x1

    .line 36
    :goto_9
    return v0

    :cond_a
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->checkAnnotationForCustomView(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_9
.end method
