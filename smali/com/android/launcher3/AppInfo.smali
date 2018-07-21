.class public Lcom/android/launcher3/AppInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "AppInfo.java"


# static fields
.field public static final DOWNLOADED_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Launcher3.AppInfo"

.field public static final UPDATED_SYSTEM_APP_FLAG:I = 0x2


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field firstInstallTime:J

.field public flags:I

.field public iconBitmap:Landroid/graphics/Bitmap;

.field public intent:Landroid/content/Intent;

.field isDisabled:I

.field usingLowResIcon:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 65
    iput v0, p0, Lcom/android/launcher3/AppInfo;->flags:I

    .line 66
    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 69
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/AppInfo;->itemType:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;)V
    .registers 11

    .prologue
    .line 85
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/compat/UserManagerCompat;->isQuietModeEnabled(Lcom/android/launcher3/compat/UserHandleCompat;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;Z)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;Lcom/android/launcher3/IconCache;Z)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 65
    iput v0, p0, Lcom/android/launcher3/AppInfo;->flags:I

    .line 66
    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 90
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 91
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher3/AppInfo;->container:J

    .line 93
    invoke-static {p2}, Lcom/android/launcher3/AppInfo;->initFlags(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppInfo;->flags:I

    .line 94
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getFirstInstallTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/AppInfo;->firstInstallTime:J

    .line 96
    invoke-virtual {p2}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/PackageManagerHelper;->isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 97
    iget v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 99
    :cond_2e
    if-eqz p5, :cond_36

    .line 100
    iget v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 103
    :cond_36
    const/4 v0, 0x1

    invoke-virtual {p4, p0, p2, v0}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)V

    .line 104
    invoke-static {p1, p2, p3}, Lcom/android/launcher3/AppInfo;->makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 105
    iput-object p3, p0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/AppInfo;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/launcher3/ItemInfo;-><init>(Lcom/android/launcher3/ItemInfo;)V

    .line 65
    iput v0, p0, Lcom/android/launcher3/AppInfo;->flags:I

    .line 66
    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 123
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    .line 124
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    .line 126
    iget v0, p1, Lcom/android/launcher3/AppInfo;->flags:I

    iput v0, p0, Lcom/android/launcher3/AppInfo;->flags:I

    .line 127
    iget v0, p1, Lcom/android/launcher3/AppInfo;->isDisabled:I

    iput v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    .line 128
    iget-wide v0, p1, Lcom/android/launcher3/AppInfo;->firstInstallTime:J

    iput-wide v0, p0, Lcom/android/launcher3/AppInfo;->firstInstallTime:J

    .line 129
    iget-object v0, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 130
    return-void
.end method

.method public static dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    .line 151
    return-void

    .line 146
    :cond_29
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   title=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" iconBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 148
    const-string v3, " firstInstallTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher3/AppInfo;->firstInstallTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    const-string v3, " componentName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

.method public static initFlags(Lcom/android/launcher3/compat/LauncherActivityInfoCompat;)I
    .registers 4

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 110
    const/4 v0, 0x0

    .line 111
    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_11

    .line 112
    const/4 v0, 0x1

    .line 114
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_11

    .line 115
    const/4 v0, 0x3

    .line 118
    :cond_11
    return v0
.end method

.method public static makeLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/compat/UserHandleCompat;)Landroid/content/Intent;
    .registers 7

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/compat/UserHandleCompat;)J

    move-result-wide v0

    .line 164
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 166
    invoke-virtual {p1}, Lcom/android/launcher3/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 167
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 168
    const-string v3, "profile"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 164
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher3/AppInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method protected getRestoredIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDisabled()Z
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Lcom/android/launcher3/AppInfo;->isDisabled:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public makeShortcut()Lcom/android/launcher3/ShortcutInfo;
    .registers 2

    .prologue
    .line 154
    new-instance v0, Lcom/android/launcher3/ShortcutInfo;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ShortcutInfo;-><init>(Lcom/android/launcher3/AppInfo;)V

    return-object v0
.end method

.method public onAddFromClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddFromClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAddToClipData(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1
    invoke-static {p0, p1}, Lcom/lge/launcher3/dragndrop/ItemInfoAspect;->ajc$interMethod$com_lge_launcher3_dragndrop_ItemInfoAspect$com_android_launcher3_AppInfo$onAddToClipData(Lcom/android/launcher3/AppInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method public toComponentKey()Lcom/android/launcher3/util/ComponentKey;
    .registers 4

    .prologue
    .line 158
    new-instance v0, Lcom/android/launcher3/util/ComponentKey;

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApplicationInfo(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/AppInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 135
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/AppInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher3/AppInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/AppInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->dropPos:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 138
    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
