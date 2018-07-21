.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SBSettingListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field dragHandle:Landroid/widget/ImageView;

.field dragTitle:Landroid/widget/TextView;

.field providerName:Landroid/widget/Switch;

.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;


# direct methods
.method private constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;)V
    .registers 3

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter$ViewHolder;-><init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;)V

    return-void
.end method
