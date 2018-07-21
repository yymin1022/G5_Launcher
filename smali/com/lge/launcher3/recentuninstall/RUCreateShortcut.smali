.class public Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;
.super Landroid/app/Activity;
.source "RUCreateShortcut.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .prologue
    .line 18
    invoke-static {}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->aspectOf()Lcom/lge/launcher3/crosscutting/GlobalAspect;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/crosscutting/GlobalAspect;->ajc$before$com_lge_launcher3_crosscutting_GlobalAspect$2$1d5b537b(Landroid/app/Activity;)V

    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    new-instance v1, Landroid/content/Intent;

    sget-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/config/IntentConst$Action;->getValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const/high16 v0, 0x7f030000

    .line 22
    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 24
    const v0, 0x7f0f0162

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 25
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 26
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 30
    invoke-virtual {p0}, Lcom/lge/launcher3/recentuninstall/RUCreateShortcut;->finish()V

    .line 31
    return-void
.end method
