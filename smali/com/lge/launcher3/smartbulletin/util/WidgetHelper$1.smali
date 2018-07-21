.class Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;
.super Ljava/lang/Object;
.source "WidgetHelper.java"

# interfaces
.implements Lcom/lge/launcher3/smartbulletin/widgetlibrary/MyAppWidgetHost$OnProvidersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;->this$0:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProvidersChanged()V
    .registers 3

    .prologue
    .line 93
    invoke-static {}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onProvidersChanged"

    invoke-static {v0, v1}, Lcom/lge/launcher3/smartbulletin/log/SBLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;->this$0:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    iget-object v1, p0, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper$1;->this$0:Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;

    invoke-static {v1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->access$1(Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/util/WidgetHelper;->updatedSmartBulletinProvider(Landroid/content/Context;)V

    .line 95
    return-void
.end method
