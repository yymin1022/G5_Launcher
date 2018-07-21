.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->access$0(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;Z)V

    .line 180
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$2;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->refreshPrefInfo()V

    .line 181
    return-void
.end method
