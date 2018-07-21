.class Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;
.super Landroid/content/BroadcastReceiver;
.source "LGMDMMicrophoneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/mdm/controller/LGMDMMicrophoneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;


# direct methods
.method constructor <init>(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 63
    invoke-static {}, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->values()[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v4

    .line 64
    .local v4, "state":[Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    const-string/jumbo v6, "callState"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 65
    .local v2, "idx":I
    const-string/jumbo v6, "address"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "number":Ljava/lang/String;
    :try_start_14
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    aget-object v7, v4, v2

    invoke-static {v6, v7}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-set0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;
    :try_end_1b
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_14 .. :try_end_1b} :catch_35

    .line 74
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DIALING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-eq v6, v7, :cond_2f

    .line 75
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ALERTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-ne v6, v7, :cond_40

    .line 77
    :cond_2f
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6, v3}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-set1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    :cond_34
    :goto_34
    return-void

    .line 69
    :catch_35
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string/jumbo v6, "MicrophoneController"

    const-string/jumbo v7, "call state out of index"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void

    .line 76
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_40
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->INCOMING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-eq v6, v7, :cond_2f

    .line 78
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTING:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-eq v6, v7, :cond_5e

    .line 79
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->DISCONNECTED:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-ne v6, v7, :cond_64

    .line 81
    :cond_5e
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6, v8}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-set1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_34

    .line 80
    :cond_64
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->IDLE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-eq v6, v7, :cond_5e

    .line 82
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get0(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    move-result-object v6

    sget-object v7, Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;->ACTIVE:Lcom/lge/mdm/controller/LGMDMMicrophoneController$eCallState;

    if-ne v6, v7, :cond_34

    .line 83
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_92

    .line 84
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-get1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    .line 83
    if-eqz v6, :cond_92

    .line 85
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-virtual {v6, v9}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->setMicrophoneMute(Z)V

    goto :goto_34

    .line 87
    :cond_92
    const/4 v5, 0x0

    .line 89
    .local v5, "userId":I
    :try_start_93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v6

    iget v5, v6, Landroid/content/pm/UserInfo;->id:I
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_93 .. :try_end_9d} :catch_ab

    .line 94
    :goto_9d
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-virtual {v6, v8, v5}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->getEnforceMuteDuringCall(Landroid/content/ComponentName;I)Z

    move-result v6

    if-eqz v6, :cond_34

    .line 96
    iget-object v6, p0, Lcom/lge/mdm/controller/LGMDMMicrophoneController$1;->this$0:Lcom/lge/mdm/controller/LGMDMMicrophoneController;

    invoke-static {v6, v5}, Lcom/lge/mdm/controller/LGMDMMicrophoneController;->-wrap1(Lcom/lge/mdm/controller/LGMDMMicrophoneController;I)V

    goto :goto_34

    .line 90
    :catch_ab
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "MicrophoneController"

    const-string/jumbo v7, "userID = 0"

    invoke-static {v6, v7}, Lcom/lge/mdm/util/MDMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9d
.end method
