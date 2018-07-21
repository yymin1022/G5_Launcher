.class final Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "LGMDMApplicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMApplicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1814
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;-><init>()V

    return-void
.end method

.method private newIntentForGoogleFeedback()Landroid/content/Intent;
    .registers 5

    .prologue
    .line 1835
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.APP_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1836
    .local v0, "i":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, ".feedback.FeedbackActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1838
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 8
    .param p1, "params"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v5, 0x1

    .line 1819
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 1821
    .local v1, "policy":Ljava/lang/Boolean;
    const-string/jumbo v2, "ApplicationCotroller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IntentFirewallMdm expected=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1823
    new-instance v0, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;

    const-string/jumbo v2, "com.lge.mdm.google_crash_report.xml"

    invoke-direct {v0, v2}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;-><init>(Ljava/lang/String;)V

    .line 1825
    .local v0, "iff":Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 1826
    invoke-virtual {v0}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->remove()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2

    .line 1829
    :cond_3e
    invoke-direct {p0}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;->newIntentForGoogleFeedback()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v5, v5, v2}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->addActivity(ZZLandroid/content/Intent;)V

    .line 1831
    invoke-virtual {v0}, Lcom/lge/mdm/intentfirewall/IntentFirewallMdm;->save()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1818
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1843
    const-string/jumbo v0, "ApplicationCotroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "IntentFirewallMdm isPassed=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1842
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/lge/mdm/controller/LGMDMApplicationController$MyAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    .prologue
    .line 1815
    return-void
.end method
