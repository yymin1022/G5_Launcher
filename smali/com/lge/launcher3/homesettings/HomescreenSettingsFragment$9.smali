.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectSortAppsBy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

.field private final synthetic val$checkedItem:I

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;ILandroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    iput p2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;->val$checkedItem:I

    iput-object p3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;->val$context:Landroid/content/Context;

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 756
    iget v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;->val$checkedItem:I

    if-eq v0, p2, :cond_9

    .line 757
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$9;->val$context:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->putSelectedSortAppsBy(Landroid/content/Context;I)V

    .line 759
    :cond_9
    return-void
.end method
