.class Lcom/lge/launcher3/LauncherExtension$2;
.super Landroid/content/BroadcastReceiver;
.source "LauncherExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/LauncherExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/LauncherExtension;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/LauncherExtension;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/LauncherExtension$2;->this$0:Lcom/lge/launcher3/LauncherExtension;

    .line 1097
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 1102
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    if-eqz p2, :cond_f

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    .line 1113
    :cond_f
    :goto_f
    return-void

    .line 1106
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1109
    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v1, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1109
    if-eqz v1, :cond_f

    .line 1110
    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1111
    iget-object v2, p0, Lcom/lge/launcher3/LauncherExtension$2;->this$0:Lcom/lge/launcher3/LauncherExtension;

    invoke-static {v2, v0, v1}, Lcom/lge/launcher3/LauncherExtension;->access$0(Lcom/lge/launcher3/LauncherExtension;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_f
.end method
