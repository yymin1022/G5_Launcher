.class Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$3;
.super Ljava/lang/Object;
.source "HideAppsSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->setupViews()V
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
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$3;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$3;->this$0:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->apply()V

    .line 117
    return-void
.end method
