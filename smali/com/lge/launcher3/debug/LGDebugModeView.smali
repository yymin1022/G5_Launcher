.class public Lcom/lge/launcher3/debug/LGDebugModeView;
.super Landroid/widget/TextView;
.source "LGDebugModeView.java"


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const-string v0, "LGDebugModeView"

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGDebugModeView;->TAG:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGDebugModeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 66
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 69
    if-eqz v1, :cond_95

    .line 70
    invoke-virtual {p0, v4}, Lcom/lge/launcher3/debug/LGDebugModeView;->setSingleLine(Z)V

    .line 75
    sget-object v1, Lcom/lge/launcher3/debug/EventLogger;->sPackageVersion:Ljava/lang/String;

    if-eqz v1, :cond_51

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/debug/EventLogger;->sPackageVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_30
    sget-object v1, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherCreation:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/lge/launcher3/debug/EventLogger;->sElapsedForLauncherCreation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_4d
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :goto_50
    return-void

    .line 80
    :cond_51
    :try_start_51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_88
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_51 .. :try_end_88} :catch_8a

    move-result-object v0

    goto :goto_30

    .line 83
    :catch_8a
    move-exception v1

    const-string v1, "LGDebugModeView"

    const-string v2, "NameNotFoundException : packageInfo"

    new-array v3, v4, [I

    invoke-static {v1, v2, v3}, Lcom/lge/launcher3/util/LGLog;->w(Ljava/lang/String;Ljava/lang/String;[I)V

    goto :goto_30

    .line 93
    :cond_95
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;->setVisibility(I)V

    goto :goto_50
.end method


# virtual methods
.method public addText(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGDebugModeView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGDebugModeView;->getLineCount()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_1c

    .line 48
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :goto_15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0, v0}, Lcom/lge/launcher3/debug/LGDebugModeView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 50
    :cond_1c
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 102
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 103
    return-void
.end method
