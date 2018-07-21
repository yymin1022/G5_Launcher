.class Lcom/android/launcher3/PagedView$4;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/PagedView;->endReordering()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/PagedView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    .line 2382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 2385
    iget-object v0, p0, Lcom/android/launcher3/PagedView$4;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/PagedView;->onEndReordering()V

    .line 2386
    return-void
.end method
