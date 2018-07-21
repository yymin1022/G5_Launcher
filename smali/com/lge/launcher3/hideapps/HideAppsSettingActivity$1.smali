.class Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;
.super Ljava/lang/Object;
.source "HideAppsSettingActivity.java"

# interfaces
.implements Lcom/lge/launcher3/liveicon/OnLiveIconUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;)Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    return-object v0
.end method


# virtual methods
.method public onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 4

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;-><init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;Lcom/lge/launcher3/liveicon/LiveIcon;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    return-void
.end method
