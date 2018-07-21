.class Lcom/android/launcher3/BaseContainerView$1;
.super Ljava/lang/Object;
.source "BaseContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/BaseContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/BaseContainerView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/BaseContainerView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/BaseContainerView$1;->this$0:Lcom/android/launcher3/BaseContainerView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/launcher3/BaseContainerView$1;->this$0:Lcom/android/launcher3/BaseContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 85
    return-void
.end method
