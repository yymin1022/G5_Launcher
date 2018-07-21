.class Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$1;
.super Landroid/os/Handler;
.source "LGMDMUILockScreenAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;


# direct methods
.method constructor <init>(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 90
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 84
    :goto_8
    return-void

    .line 87
    :pswitch_9
    iget-object v1, p0, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter$1;->this$0:Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;->-wrap0(Lcom/lge/mdm/frameworks/LGMDMUILockScreenAdapter;Landroid/os/Bundle;)V

    goto :goto_8

    .line 85
    nop

    :pswitch_data_14
    .packed-switch 0xbc2
        :pswitch_9
    .end packed-switch
.end method
