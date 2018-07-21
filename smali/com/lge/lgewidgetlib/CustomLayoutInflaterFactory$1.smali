.class Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory$1;
.super Ljava/lang/Object;
.source "CustomLayoutInflaterFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLoadClass(Ljava/lang/Class;)Z
    .registers 3

    .prologue
    .line 18
    invoke-static {p1}, Lcom/lge/lgewidgetlib/LgeRemoteViews;->checkAnnotationForCustomView(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
