.class Lcom/lge/launcher3/folderplus/FolderPlusActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "FolderPlusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/folderplus/FolderPlusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$1;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 56
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    sget-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0, p1}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$1;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/folderplus/FolderPlusActivity;->finish()V

    .line 59
    :cond_1c
    return-void
.end method
