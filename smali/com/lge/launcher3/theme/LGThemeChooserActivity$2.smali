.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;
.super Ljava/lang/Object;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 449
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 459
    :cond_6
    :goto_6
    return v4

    .line 451
    :pswitch_7
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$3(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$4(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$5(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$6(Lcom/lge/launcher3/theme/LGThemeChooserActivity;III)V

    .line 452
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeChange;->countDownloadTheme()I

    move-result v0

    if-nez v0, :cond_6

    .line 453
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-virtual {v0, v4}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDeleteMode(Z)V

    goto :goto_6

    .line 449
    :pswitch_data_34
    .packed-switch 0x64
        :pswitch_7
    .end packed-switch
.end method
