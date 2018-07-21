.class Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;
.super Ljava/lang/Object;
.source "HideAppsSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;->onLiveIconUpdate(Lcom/lge/launcher3/liveicon/LiveIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;

.field private final synthetic val$liveIcon:Lcom/lge/launcher3/liveicon/LiveIcon;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;Lcom/lge/launcher3/liveicon/LiveIcon;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->this$1:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;

    iput-object p2, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->val$liveIcon:Lcom/lge/launcher3/liveicon/LiveIcon;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->val$liveIcon:Lcom/lge/launcher3/liveicon/LiveIcon;

    invoke-virtual {v0}, Lcom/lge/launcher3/liveicon/LiveIcon;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 54
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->this$1:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;

    invoke-static {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;->access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;)Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    .line 55
    const/4 v0, 0x0

    move v2, v0

    :goto_16
    if-lt v2, v4, :cond_19

    .line 62
    return-void

    .line 56
    :cond_19
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->this$1:Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;

    invoke-static {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;->access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1;)Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;->access$0(Lcom/lge/launcher3/hideapps/HideAppsSettingActivity;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;

    .line 57
    invoke-virtual {v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/launcher3/hideapps/HideAppItem;

    .line 58
    iget-object v5, v1, Lcom/lge/launcher3/hideapps/HideAppItem;->activityInfo:Lcom/android/launcher3/compat/LauncherActivityInfoCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 59
    iget-object v5, p0, Lcom/lge/launcher3/hideapps/HideAppsSettingActivity$1$1;->val$liveIcon:Lcom/lge/launcher3/liveicon/LiveIcon;

    iget-object v1, v1, Lcom/lge/launcher3/hideapps/HideAppItem;->userHandle:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v5, v1}, Lcom/lge/launcher3/liveicon/LiveIcon;->getBadgedIcon(Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 55
    :cond_46
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_16
.end method
