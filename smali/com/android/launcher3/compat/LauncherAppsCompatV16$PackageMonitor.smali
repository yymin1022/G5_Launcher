.class Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsCompatV16.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/compat/LauncherAppsCompatV16;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/LauncherAppsCompatV16;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 154
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$1$ef20e325(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-static {}, Lcom/android/launcher3/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/compat/UserHandleCompat;

    move-result-object v2

    .line 157
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 158
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 159
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    .line 160
    :cond_28
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 161
    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 163
    if-eqz v3, :cond_3e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3f

    .line 213
    :cond_3e
    return-void

    .line 167
    :cond_3f
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 168
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_51
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 169
    invoke-interface {v0, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto :goto_51

    .line 171
    :cond_61
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 172
    if-nez v0, :cond_3e

    .line 173
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_75
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 174
    invoke-interface {v0, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageRemoved(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto :goto_75

    .line 179
    :cond_85
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 180
    if-nez v0, :cond_a9

    .line 181
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 182
    invoke-interface {v0, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageAdded(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto :goto_99

    .line 185
    :cond_a9
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 186
    invoke-interface {v0, v3, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackageChanged(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V

    goto :goto_b3

    .line 190
    :cond_c3
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 194
    const-string v1, "android.intent.extra.REPLACING"

    .line 195
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_d4

    const/4 v0, 0x1

    .line 194
    :cond_d4
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 196
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 197
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_e8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 198
    invoke-interface {v0, v3, v2, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesAvailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_e8

    .line 200
    :cond_f8
    const-string v3, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 207
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 208
    const-string v0, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatV16$PackageMonitor;->this$0:Lcom/android/launcher3/compat/LauncherAppsCompatV16;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/LauncherAppsCompatV16;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_116
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;

    .line 210
    invoke-interface {v0, v3, v2, v1}, Lcom/android/launcher3/compat/LauncherAppsCompat$OnAppsChangedCallbackCompat;->onPackagesUnavailable([Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_116
.end method
