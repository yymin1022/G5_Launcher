.class Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$7;
.super Ljava/lang/Object;
.source "HomescreenSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->callSelectDynamicGrid()V
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
    iput-object p1, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$7;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    .line 720
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 723
    iget-object v0, p0, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment$7;->this$0:Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;

    invoke-static {v0, p2}, Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;->access$1(Lcom/lge/launcher3/homesettings/HomescreenSettingsFragment;I)V

    .line 724
    return-void
.end method
