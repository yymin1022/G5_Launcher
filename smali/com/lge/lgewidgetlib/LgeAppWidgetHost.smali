.class public Lcom/lge/lgewidgetlib/LgeAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source "LgeAppWidgetHost.java"

# interfaces
.implements Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;,
        Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "LgeAppWidgetHost"


# instance fields
.field mConciergeBoard:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

.field mContext:Landroid/content/Context;

.field mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

.field private mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 31
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoard:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 32
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;

    .line 59
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    .line 27
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 31
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoard:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 32
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;

    .line 65
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;ILandroid/widget/RemoteViews$OnClickHandler;Landroid/os/Looper;)V

    .line 27
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 31
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoard:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 32
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;

    .line 52
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0, p5}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initConciergeBoardMngr(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V

    .line 54
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initPackageUpdateReceiver()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    .line 27
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 31
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoard:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 32
    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;

    .line 44
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p0, p3}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initConciergeBoardMngr(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V

    .line 46
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->initPackageUpdateReceiver()V

    .line 47
    return-void
.end method


# virtual methods
.method public cancelExtViewMode()V
    .registers 5

    .prologue
    .line 92
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_5

    .line 115
    :cond_4
    return-void

    .line 96
    :cond_5
    const-class v0, Landroid/appwidget/AppWidgetHost;

    const-string v1, "mViews"

    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 97
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_31

    .line 98
    check-cast v0, Ljava/util/HashMap;

    .line 99
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 100
    instance-of v2, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v2, :cond_1b

    .line 101
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->cancelWidgetExt()V

    goto :goto_1b

    .line 104
    :cond_31
    instance-of v1, v0, Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 105
    check-cast v0, Landroid/util/SparseArray;

    .line 107
    const/4 v1, 0x0

    move v2, v1

    :goto_39
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 108
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 110
    instance-of v3, v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v3, :cond_52

    .line 111
    check-cast v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->cancelWidgetExt()V

    .line 107
    :cond_52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_39
.end method

.method public deleteAppWidgetId(I)V
    .registers 4

    .prologue
    .line 230
    const-class v0, Landroid/appwidget/AppWidgetHost;

    const-string v1, "mViews"

    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 231
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_25

    .line 233
    check-cast v0, Ljava/util/HashMap;

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 236
    instance-of v1, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v1, :cond_21

    .line 237
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyWidgetDeleted()V

    .line 248
    :cond_21
    :goto_21
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 249
    return-void

    .line 239
    :cond_25
    instance-of v1, v0, Landroid/util/SparseArray;

    if-eqz v1, :cond_21

    .line 240
    check-cast v0, Landroid/util/SparseArray;

    .line 241
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 243
    instance-of v1, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v1, :cond_21

    .line 244
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyWidgetDeleted()V

    goto :goto_21
.end method

.method public deleteHost()V
    .registers 1

    .prologue
    .line 261
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    .line 262
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->deletePackageReceiver()V

    .line 263
    return-void
.end method

.method deletePackageReceiver()V
    .registers 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    if-eqz v0, :cond_15

    .line 278
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "deletePackageReceiver"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 280
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    .line 282
    :cond_15
    return-void
.end method

.method public initConciergeBoardMngr(Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;)V
    .registers 3

    .prologue
    .line 69
    if-eqz p1, :cond_9

    .line 70
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    .line 71
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    invoke-interface {v0, p0}, Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;->setWidgetExtHandler(Lcom/lge/lgewidgetlib/extview/IWidgetExtHandler;)V

    .line 73
    :cond_9
    return-void
.end method

.method public initPackageUpdateReceiver()V
    .registers 4

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    if-nez v0, :cond_28

    .line 267
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "initPackageUpdateReceiver"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    new-instance v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;-><init>(Lcom/lge/lgewidgetlib/LgeAppWidgetHost;)V

    iput-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    .line 269
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mPackageReceiver:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$PackageUpdateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 274
    :cond_28
    return-void
.end method

.method public isExtViewMode()Z
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_6

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_5
    return v0

    :cond_6
    sget-boolean v0, Lcom/lge/lgewidgetlib/extview/LgeAppWidgetExtViewHost;->sIsExpaned:Z

    goto :goto_5
.end method

.method public notifyBindingStarted()V
    .registers 5

    .prologue
    .line 195
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "notifyBindingStarted()"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_13

    .line 198
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "mConciergeBoardMngr is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_12
    return-void

    .line 202
    :cond_13
    const-class v0, Landroid/appwidget/AppWidgetHost;

    const-string v1, "mViews"

    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 203
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_3f

    .line 204
    check-cast v0, Ljava/util/HashMap;

    .line 205
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 206
    instance-of v2, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v2, :cond_29

    .line 207
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 208
    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyBindingStarted()V

    goto :goto_29

    .line 211
    :cond_3f
    instance-of v1, v0, Landroid/util/SparseArray;

    if-eqz v1, :cond_12

    .line 212
    check-cast v0, Landroid/util/SparseArray;

    .line 214
    const/4 v1, 0x0

    move v2, v1

    :goto_47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    .line 215
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 216
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 217
    instance-of v3, v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v3, :cond_60

    .line 218
    check-cast v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 219
    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyBindingStarted()V

    .line 214
    :cond_60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_47
.end method

.method public notifyExtViewAvailable()V
    .registers 5

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_5

    .line 155
    :cond_4
    return-void

    .line 134
    :cond_5
    const-class v0, Landroid/appwidget/AppWidgetHost;

    const-string v1, "mViews"

    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 135
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_31

    .line 136
    check-cast v0, Ljava/util/HashMap;

    .line 137
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 138
    instance-of v2, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v2, :cond_1b

    .line 139
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 140
    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyExtViewAvailable()V

    goto :goto_1b

    .line 143
    :cond_31
    instance-of v1, v0, Landroid/util/SparseArray;

    if-eqz v1, :cond_4

    .line 144
    check-cast v0, Landroid/util/SparseArray;

    .line 146
    const/4 v1, 0x0

    move v2, v1

    :goto_39
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 147
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 149
    instance-of v3, v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v3, :cond_52

    .line 150
    check-cast v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 151
    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyExtViewAvailable()V

    .line 146
    :cond_52
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_39
.end method

.method public notifyWidgetHostDestroyed()V
    .registers 5

    .prologue
    .line 161
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "notifyWidgetHostDestroyed()"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_13

    .line 164
    const-string v0, "LgeAppWidgetHost"

    const-string v1, "mConciergeBoardMngr is null"

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_12
    return-void

    .line 168
    :cond_13
    const-class v0, Landroid/appwidget/AppWidgetHost;

    const-string v1, "mViews"

    invoke-static {v0, p0, v1}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_3f

    .line 170
    check-cast v0, Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_29
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 172
    instance-of v2, v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v2, :cond_29

    .line 173
    check-cast v0, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 174
    invoke-virtual {v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyWidgetHostDestroyed()V

    goto :goto_29

    .line 177
    :cond_3f
    instance-of v1, v0, Landroid/util/SparseArray;

    if-eqz v1, :cond_12

    .line 178
    check-cast v0, Landroid/util/SparseArray;

    .line 180
    const/4 v1, 0x0

    move v2, v1

    :goto_47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_12

    .line 181
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 182
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    .line 183
    instance-of v3, v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    if-eqz v3, :cond_60

    .line 184
    check-cast v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 185
    invoke-virtual {v1}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;->notifyWidgetHostDestroyed()V

    .line 180
    :cond_60
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_47
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .registers 7

    .prologue
    .line 79
    const-string v0, "LgeAppWidgetHost"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LgeWidgetLib Version = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lge/lgewidgetlib/LgeWidgetFeature;->getLgeWidgetLibVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/lgewidgetlib/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mConciergeBoardMngr:Lcom/lge/lgewidgetlib/extview/IExtViewHostAdapter;

    if-nez v0, :cond_21

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 83
    :goto_20
    return-object v0

    :cond_21
    new-instance v1, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;

    .line 84
    const-class v0, Landroid/appwidget/AppWidgetHost;

    .line 85
    const-string v2, "mOnClickHandler"

    .line 84
    invoke-static {v0, p0, v2}, Lcom/lge/lgewidgetlib/LgeReflectionUtil;->getPrivateField(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews$OnClickHandler;

    .line 83
    invoke-direct {v1, p1, v0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHostView;-><init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V

    move-object v0, v1

    goto :goto_20
.end method

.method public setOnProvidersChangedListener(Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->mProvidersChangedListener:Lcom/lge/lgewidgetlib/LgeAppWidgetHost$OnProvidersChangedListener;

    .line 40
    return-void
.end method

.method public stopListening()V
    .registers 1

    .prologue
    .line 254
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    .line 255
    invoke-virtual {p0}, Lcom/lge/lgewidgetlib/LgeAppWidgetHost;->deletePackageReceiver()V

    .line 256
    return-void
.end method
