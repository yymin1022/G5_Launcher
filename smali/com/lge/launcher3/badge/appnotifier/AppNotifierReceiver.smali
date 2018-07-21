.class public Lcom/lge/launcher3/badge/appnotifier/AppNotifierReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppNotifierReceiver.java"


# static fields
.field private static final ACTION_EMAIL_ACCOUNT_CHANGED:Ljava/lang/String; = "com.lge.email.action.ACCOUNT_CHANGED"

.field private static final TAG:Ljava/lang/String; = "AppNotifier.Receiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 24
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v0, "AppNotifier.Receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Receive:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {p1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    move-result-object v0

    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4e

    .line 36
    :cond_2a
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->handleAppNotifierIntent(Landroid/content/Intent;)V

    .line 39
    :goto_2d
    return-void

    .line 28
    :sswitch_2e
    const-string v2, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->onPackageDataCleared(Ljava/lang/String;)V

    goto :goto_2d

    .line 28
    :sswitch_42
    const-string v2, "com.lge.email.action.ACCOUNT_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 33
    invoke-virtual {v0, p2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->handleEmailAccountChangedIntent(Landroid/content/Intent;)V

    goto :goto_2d

    .line 28
    :sswitch_data_4e
    .sparse-switch
        0xff13fb5 -> :sswitch_2e
        0x6f73f12d -> :sswitch_42
    .end sparse-switch
.end method
