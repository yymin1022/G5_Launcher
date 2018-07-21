.class Lcom/lge/launcher3/theme/GridFragment$1;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/GridFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/GridFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment$1;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 4

    .prologue
    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_e

    .line 51
    :goto_5
    const/4 v0, 0x0

    return v0

    .line 46
    :pswitch_7
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment$1;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/theme/GridFragment;->access$0(Lcom/lge/launcher3/theme/GridFragment;Z)V

    goto :goto_5

    .line 44
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch
.end method
