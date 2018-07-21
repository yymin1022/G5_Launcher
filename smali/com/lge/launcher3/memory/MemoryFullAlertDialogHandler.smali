.class public Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;
.super Landroid/os/Handler;
.source "MemoryFullAlertDialogHandler.java"


# static fields
.field private static final SHOW_DIALOG:I

.field public static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->sInstance:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 21
    return-void
.end method

.method private createMemoryFullAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    const v1, 0x7f0f0092

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    const v1, 0x7f0f0090

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    const v2, 0x7f0f0091

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    const v1, 0x7f0f0028

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 119
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->sInstance:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    if-nez v0, :cond_b

    .line 37
    new-instance v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    invoke-direct {v0}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;-><init>()V

    sput-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->sInstance:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    .line 39
    :cond_b
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->sInstance:Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_d

    .line 131
    :cond_c
    :goto_c
    return-void

    .line 129
    :cond_d
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_c
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    .line 66
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 105
    :cond_5
    :goto_5
    return-void

    .line 68
    :pswitch_6
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5

    .line 72
    :cond_12
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_32

    .line 74
    :try_start_16
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->createMemoryFullAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$1;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$1;-><init>(Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 84
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler$2;-><init>(Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    :try_end_32
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_16 .. :try_end_32} :catch_38

    .line 99
    :cond_32
    iget-object v0, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_5

    .line 93
    :catch_38
    move-exception v0

    .line 94
    sget-object v1, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->TAG:Ljava/lang/String;

    const-string v2, "NotFoundException(%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 66
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public show(Landroid/content/Context;I)V
    .registers 7

    .prologue
    .line 47
    if-nez p1, :cond_a

    .line 48
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->TAG:Ljava/lang/String;

    const-string v1, "Context is null"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_9
    return-void

    .line 52
    :cond_a
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_16

    .line 53
    sget-object v0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->TAG:Ljava/lang/String;

    const-string v1, "Context isn\'t Activity"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 57
    :cond_16
    iput-object p1, p0, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/lge/launcher3/memory/MemoryFullAlertDialogHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_9
.end method
