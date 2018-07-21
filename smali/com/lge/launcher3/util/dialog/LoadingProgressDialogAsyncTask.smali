.class public Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;
.super Ljava/lang/Object;
.source "LoadingProgressDialogAsyncTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mProgressDialogAsyncTask:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 54
    new-instance v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask$1;-><init>(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)V

    iput-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mProgressDialogAsyncTask:Landroid/os/AsyncTask;

    .line 39
    iput-object p1, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;Landroid/app/ProgressDialog;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;)Landroid/app/ProgressDialog;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 114
    sget-object v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Dismiss the LoadingProgressDialogAsyncTask dialog"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_10

    .line 117
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 119
    :cond_10
    return-void
.end method

.method public show(I)V
    .registers 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 47
    sget-object v0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "Show the LoadingProgressDialogAsyncTask dialog(%d)"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/lge/launcher3/util/dialog/LoadingProgressDialogAsyncTask;->mProgressDialogAsyncTask:Landroid/os/AsyncTask;

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 50
    return-void
.end method
