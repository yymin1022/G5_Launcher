.class public final enum Lcom/lge/launcher3/config/IntentConst$Action;
.super Ljava/lang/Enum;
.source "IntentConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/config/IntentConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/lge/launcher3/config/IntentConst$Action;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_LAUNCHER_RESUMED:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_REINSTALL_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_SBSETTING:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_SETTING:Lcom/lge/launcher3/config/IntentConst$Action;

.field public static final enum ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

.field private static final synthetic ENUM$VALUES:[Lcom/lge/launcher3/config/IntentConst$Action;


# instance fields
.field private mResoureID:I

.field private mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 31
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_RELOAD_CUSTOMCONTENT"

    .line 54
    const v2, 0x7f0f0008

    invoke-direct {v0, v1, v4, v2}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 55
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_SETTING"

    .line 72
    const v2, 0x7f0f0009

    invoke-direct {v0, v1, v5, v2}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 73
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_RECENTUNINSTALL"

    .line 88
    const v2, 0x7f0f000b

    invoke-direct {v0, v1, v6, v2}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 89
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_SBSETTING"

    .line 109
    const v2, 0x7f0f000a

    invoke-direct {v0, v1, v7, v2}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SBSETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 110
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_DELETE_DIALOG"

    .line 128
    const v2, 0x7f0f000c

    invoke-direct {v0, v1, v8, v2}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 129
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_RELOAD_TPHONEMODE"

    const/4 v2, 0x5

    .line 147
    const v3, 0x7f0f000d

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 149
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_KILL_PROCESS"

    const/4 v2, 0x6

    .line 165
    const v3, 0x7f0f000f

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 167
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_LAUNCHER_RESUMED"

    const/4 v2, 0x7

    const v3, 0x7f0f0010

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_LAUNCHER_RESUMED:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 169
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_REINSTALL_DIALOG"

    const/16 v2, 0x8

    const v3, 0x7f0f0011

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_REINSTALL_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 171
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_FINISH_FOLDERPLUS"

    const/16 v2, 0x9

    const v3, 0x7f0f0013

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 173
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_MDM_CHANGE_UNINSTALLPOLICY"

    const/16 v2, 0xa

    .line 191
    const v3, 0x7f0f0014

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 193
    new-instance v0, Lcom/lge/launcher3/config/IntentConst$Action;

    const-string v1, "ACTION_SHOW_WALLPAPER_LIST_ACTIVITY"

    const/16 v2, 0xb

    .line 209
    const v3, 0x7f0f000e

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/launcher3/config/IntentConst$Action;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

    .line 30
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/lge/launcher3/config/IntentConst$Action;

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_CUSTOMCONTENT:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_RECENTUNINSTALL:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_SBSETTING:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_DELETE_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_RELOAD_TPHONEMODE:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_KILL_PROCESS:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_LAUNCHER_RESUMED:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_REINSTALL_DIALOG:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_FINISH_FOLDERPLUS:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_MDM_CHANGE_UNINSTALLPOLICY:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/lge/launcher3/config/IntentConst$Action;->ACTION_SHOW_WALLPAPER_LIST_ACTIVITY:Lcom/lge/launcher3/config/IntentConst$Action;

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ENUM$VALUES:[Lcom/lge/launcher3/config/IntentConst$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 215
    iput p3, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mResoureID:I

    .line 216
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lge/launcher3/config/IntentConst$Action;
    .registers 2

    .prologue
    .line 1
    const-class v0, Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/config/IntentConst$Action;

    return-object v0
.end method

.method public static values()[Lcom/lge/launcher3/config/IntentConst$Action;
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/lge/launcher3/config/IntentConst$Action;->ENUM$VALUES:[Lcom/lge/launcher3/config/IntentConst$Action;

    array-length v1, v0

    new-array v2, v1, [Lcom/lge/launcher3/config/IntentConst$Action;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 219
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mValue:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 221
    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mResoureID:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mValue:Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_12} :catch_15

    .line 227
    :cond_12
    :goto_12
    iget-object v0, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mValue:Ljava/lang/String;

    return-object v0

    .line 222
    :catch_15
    move-exception v0

    .line 223
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mValue:Ljava/lang/String;

    goto :goto_12
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcom/lge/launcher3/config/IntentConst$Action;->mValue:Ljava/lang/String;

    .line 232
    return-void
.end method
