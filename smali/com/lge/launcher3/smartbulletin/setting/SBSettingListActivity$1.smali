.class Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$1;
.super Ljava/lang/Object;
.source "SBSettingListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 79
    const v0, 0x7f0e00de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 80
    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity$1;->this$0:Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;

    invoke-static {v1}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;->access$0(Lcom/lge/launcher3/smartbulletin/setting/SBSettingListActivity;)Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/lge/launcher3/smartbulletin/setting/SBSettingListAdapter;->onClick(Landroid/widget/Switch;)V

    .line 81
    return-void
.end method
