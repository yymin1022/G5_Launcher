.class public Lcom/lge/launcher3/util/IMEUtils;
.super Ljava/lang/Object;
.source "IMEUtils.java"


# static fields
.field public static final DEFAULT_DELAY_MILLIS:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideInputMethod(Landroid/content/Context;Landroid/view/View;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 36
    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    .line 39
    :goto_1b
    return v0

    :cond_1c
    move v0, v1

    goto :goto_1b
.end method

.method public static hideInputMethod(Landroid/view/View;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_17

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move-result v0

    .line 67
    :cond_17
    return v0
.end method

.method public static showInputMethod(Landroid/content/Context;Landroid/view/View;)Z
    .registers 5

    .prologue
    .line 12
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 13
    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 14
    const/4 v1, 0x1

    .line 15
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v0

    .line 17
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static showInputMethod(Landroid/view/View;)Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 45
    if-eqz v1, :cond_d

    if-eqz p0, :cond_d

    .line 46
    invoke-virtual {v1, p0, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 48
    :cond_d
    return v0
.end method

.method public static showInputMethodDelayed(Landroid/content/Context;Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/util/IMEUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/lge/launcher3/util/IMEUtils$1;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    int-to-long v2, p2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    return-void
.end method

.method public static showInputMethodDelayed(Landroid/view/View;I)V
    .registers 6

    .prologue
    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/lge/launcher3/util/IMEUtils$2;

    invoke-direct {v1, p0}, Lcom/lge/launcher3/util/IMEUtils$2;-><init>(Landroid/view/View;)V

    .line 59
    int-to-long v2, p1

    .line 54
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method
