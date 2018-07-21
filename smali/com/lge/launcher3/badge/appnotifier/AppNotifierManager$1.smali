.class Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;
.super Landroid/database/ContentObserver;
.source "AppNotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->initSecretMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Landroid/os/Handler;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;->this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    .line 429
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .prologue
    .line 432
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;->this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;->this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->access$0(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierUtils;->isSecretModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->access$1(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Ljava/lang/Boolean;)V

    .line 433
    iget-object v0, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;->this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    iget-object v1, p0, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager$1;->this$0:Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;

    invoke-static {v1}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->access$0(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;)Landroid/content/Context;

    move-result-object v1

    .line 434
    const-string v2, "jp.naver.line.android"

    .line 433
    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;->access$2(Lcom/lge/launcher3/badge/appnotifier/AppNotifierManager;Landroid/content/Context;Ljava/lang/String;)V

    .line 435
    return-void
.end method
