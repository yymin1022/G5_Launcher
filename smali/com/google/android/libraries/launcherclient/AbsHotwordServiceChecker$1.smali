.class Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;
.super Ljava/lang/Object;
.source "AbsHotwordServiceChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->checkHotwordService(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

.field final synthetic val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    iput-object p2, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;->val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 53
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;->this$0:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;

    invoke-static {v0}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;->access$000(Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$1;->val$statusCallback:Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/AbsHotwordServiceChecker$StatusCallback;->isRunning(Z)V

    .line 58
    return-void
.end method
