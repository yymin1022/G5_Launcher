.class Lcom/lge/launcher3/initialguide/InitialGuideManager$1;
.super Ljava/lang/Object;
.source "InitialGuideManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/initialguide/InitialGuideManager;->setInitialGuideActivityIsStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/initialguide/InitialGuideManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 143
    sget-object v0, Lcom/lge/launcher3/initialguide/InitialGuideManager;->TAG:Ljava/lang/String;

    const-string v1, "setInitialGuideActivityIsStarted() : Time out to block to start InitialGuideActivity."

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/lge/launcher3/initialguide/InitialGuideManager$1;->this$0:Lcom/lge/launcher3/initialguide/InitialGuideManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/initialguide/InitialGuideManager;->setInitialGuideActivityIsStarted(Z)V

    .line 146
    return-void
.end method
