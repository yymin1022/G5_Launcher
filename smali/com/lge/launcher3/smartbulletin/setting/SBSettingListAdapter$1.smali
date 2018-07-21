.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;
.super Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;
.source "SBSettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;Landroid/os/Handler;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    iput-object p3, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->val$context:Landroid/content/Context;

    .line 39
    invoke-direct {p0, p2}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    iget-object v1, v0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    monitor-enter v1

    .line 43
    :try_start_5
    invoke-super {p0, p1}, Lcom/lge/launcher3/smartbulletin/provider/SBContentObserver;->onChange(Z)V

    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/provider/SBContract$SmartBulletin;->getAllProvider(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    iget-object v3, v3, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_20

    .line 47
    iget-object v2, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    iput-object v0, v2, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->mProviderList:Ljava/util/List;

    .line 49
    :cond_20
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->notifyDataSetChanged()V

    .line 42
    monitor-exit v1

    .line 51
    return-void

    .line 42
    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_5 .. :try_end_29} :catchall_27

    throw v0
.end method
