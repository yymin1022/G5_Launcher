.class public Lcom/lge/launcher3/util/TalkBackUtils;
.super Ljava/lang/Object;
.source "TalkBackUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 18
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 19
    if-nez v0, :cond_d

    move v0, v1

    .line 22
    :goto_c
    return v0

    :cond_d
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_c

    :cond_1b
    move v0, v1

    goto :goto_c
.end method

.method public static sendAccessibilityEvent(Landroid/content/Context;IZ)V
    .registers 4

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/lge/launcher3/util/TalkBackUtils;->sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    return-void
.end method

.method public static sendAccessibilityEvent(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 53
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 54
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 67
    :cond_e
    :goto_e
    return-void

    .line 58
    :cond_f
    if-eqz p2, :cond_24

    const/16 v1, 0x80

    .line 60
    :goto_13
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 61
    if-eqz v1, :cond_e

    .line 65
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_e

    .line 59
    :cond_24
    const/16 v1, 0x20

    goto :goto_13
.end method

.method public static setTalkBack(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    .line 31
    :goto_7
    if-nez v0, :cond_c

    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    :cond_c
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 35
    return-void

    .line 30
    :cond_11
    const/4 v0, 0x0

    goto :goto_7
.end method
