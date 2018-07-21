.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectScreenEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$oldSelectedScreenEffect:I


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    iput-object p2, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->val$oldSelectedScreenEffect:I

    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 684
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lge/launcher3/sharedpreferences/HomeSettingsSharedPreferences;->getSelectedScreenEffect(Landroid/content/Context;)I

    move-result v0

    .line 685
    iget v1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->val$oldSelectedScreenEffect:I

    if-eq v1, v0, :cond_f

    .line 686
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$6;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 688
    :cond_f
    return-void
.end method
