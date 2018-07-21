.class Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;
.super Landroid/os/AsyncTask;
.source "LoadingProgressDialogAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    .line 54
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 72
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    div-int/lit8 v3, v1, 0x64

    .line 75
    mul-int/lit8 v2, v3, 0x64

    sub-int/2addr v1, v2

    move v2, v0

    .line 76
    :goto_d
    if-le v2, v3, :cond_11

    .line 90
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_11
    const/16 v0, 0x64

    .line 79
    if-lt v2, v3, :cond_16

    move v0, v1

    .line 83
    :cond_16
    if-lez v0, :cond_1c

    .line 84
    int-to-long v4, v0

    :try_start_19
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1c} :catch_20

    .line 76
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_d

    .line 86
    :catch_20
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$0(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_19

    .line 99
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$0(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 107
    :cond_18
    :goto_18
    return-void

    .line 104
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 105
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_18
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 59
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v2}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$0(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$1(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;Landroid/app/ProgressDialog;)V

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 61
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v1}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$0(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 65
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;->this$0:Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-static {v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 66
    return-void
.end method
