.class Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LgeAppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/lgewidgetlib/LgeAppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/lgewidgetlib/LgeAppWidgetHost;


# direct methods
.method constructor <init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHost;)V
    .registers 2

    .prologue
    .line 284
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;->this$0:Lcom/lge/lgewidgetlib/LgeAppWidgetHost;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 287
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 288
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 290
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 291
    invoke-static {v0}, Lcom/lge/lgewidgetlib/LgeWidgetFeature;->isCustomClassLoaderSupportPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 292
    invoke-static {}, Lcom/lge/lgewidgetlib/CustomLayoutInflaterFactory;->clearConstructorMap()V

    .line 293
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "Package Added, clear CustomConstructorMap"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_24
    return-void
.end method
