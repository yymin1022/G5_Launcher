.class Lcom/android/launcher3/allapps/DefaultAppSearchController$1;
.super Ljava/lang/Object;
.source "DefaultAppSearchController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/DefaultAppSearchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/DefaultAppSearchController;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$1;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/launcher3/allapps/DefaultAppSearchController$1;->this$0:Lcom/android/launcher3/allapps/DefaultAppSearchController;

    iget-object v0, v0, Lcom/android/launcher3/allapps/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 63
    return-void
.end method
