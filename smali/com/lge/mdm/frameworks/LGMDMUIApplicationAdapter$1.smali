.class Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;
.super Landroid/os/Handler;
.source "LGMDMUIApplicationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 89
    const-string/jumbo v3, "LGMDMUIApplicationAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[handleMessage] msg.what = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/mdm/util/MDMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_50

    .line 88
    :cond_21
    :goto_21
    return-void

    .line 92
    :pswitch_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;

    .line 93
    .local v1, "info":Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;
    if-eqz v1, :cond_21

    .line 94
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    iget-object v4, v1, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->intent:Landroid/content/Intent;

    iget-boolean v6, v1, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->isdied:Z

    .line 95
    iget v7, v1, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;->userHandle:I

    .line 94
    invoke-static {v3, v4, v5, v6, v7}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->-wrap1(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;Landroid/content/Intent;ZI)V

    goto :goto_21

    .line 99
    .end local v1    # "info":Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$LockdownAppsinfo;
    :pswitch_36
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 100
    .local v2, "mPackageName":Ljava/lang/String;
    if-eqz v2, :cond_21

    .line 101
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v2, v4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->-wrap0(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;I)V

    goto :goto_21

    .line 105
    .end local v2    # "mPackageName":Ljava/lang/String;
    :pswitch_44
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "crashPackageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v0, v4}, Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;->-wrap2(Lcom/lge/mdm/frameworks/LGMDMUIApplicationAdapter;Ljava/lang/String;I)V

    goto :goto_21

    .line 90
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_22
        :pswitch_36
        :pswitch_44
    .end packed-switch
.end method
