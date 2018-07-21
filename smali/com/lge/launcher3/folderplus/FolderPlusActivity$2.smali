.class Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;
.super Ljava/lang/Object;
.source "FolderPlusActivity.java"

# interfaces
.implements Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;)Lcom/lge/launcher3/folderplus/FolderPlusActivity;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;->this$0:Lcom/lge/launcher3/folderplus/FolderPlusActivity;

    return-object v0
.end method


# virtual methods
.method public onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 4

    .prologue
    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/folderplus/FolderPlusActivity$2$1;-><init>(Lcom/lge/launcher3/folderplus/FolderPlusActivity$2;Lcom/lge/launcher3/liveicon/LiveIcon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
