.class public Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;
.super Ljava/lang/Object;
.source "Logs.java"


# static fields
.field private static final REAL_METHOD_POS:I = 0x2

.field private static sIsLogOn:Z

.field private static sTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aassert(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 259
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_28

    .line 260
    if-nez p0, :cond_28

    .line 261
    invoke-static {p1}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->e(Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_28
    return-void
.end method

.method public static d()V
    .registers 2

    .prologue
    .line 49
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_d

    .line 50
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_d
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 79
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1e

    .line 80
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_1e
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 109
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1c
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 139
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_1c
    return-void
.end method

.method public static d_raw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_9

    .line 170
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_9
    return-void
.end method

.method public static d_raw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 199
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 200
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_7
    return-void
.end method

.method public static d_raw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 229
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 230
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :cond_7
    return-void
.end method

.method public static e()V
    .registers 2

    .prologue
    .line 61
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_d

    .line 62
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_d
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 91
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1e

    .line 92
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_1e
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 121
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_1c
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 151
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_1c
    return-void
.end method

.method public static e_raw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 181
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_9

    .line 182
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_9
    return-void
.end method

.method public static e_raw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 211
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 212
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_7
    return-void
.end method

.method public static e_raw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 241
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 242
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    :cond_7
    return-void
.end method

.method public static getLogOn()Z
    .registers 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    return v0
.end method

.method public static i()V
    .registers 2

    .prologue
    .line 55
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_d

    .line 56
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_d
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 85
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1e

    .line 86
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_1e
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 115
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1c
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 145
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 148
    :cond_1c
    return-void
.end method

.method public static i_raw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 175
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_9

    .line 176
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_9
    return-void
.end method

.method public static i_raw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 205
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 206
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_7
    return-void
.end method

.method public static i_raw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 235
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 236
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 238
    :cond_7
    return-void
.end method

.method private static prefix()Ljava/lang/String;
    .registers 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 22
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    const-string v1, " Thread] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setLogOn(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 29
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-nez v0, :cond_2c

    .line 30
    const-string v0, "persist.service.main.enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 31
    sput-object p0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    .line 32
    if-lez v0, :cond_2d

    .line 33
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "####### logServiceEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 34
    const-string v2, " : Log service is enable. You can debug log messages. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    .line 42
    :cond_2c
    :goto_2c
    return-void

    .line 37
    :cond_2d
    sget-object v1, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "####### logServiceEnable = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 38
    const-string v2, " : Log service is disable. Please set log service to enable for debug. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    sput-boolean v4, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    goto :goto_2c
.end method

.method public static v()V
    .registers 2

    .prologue
    .line 67
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_d

    .line 68
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_d
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 97
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1e

    .line 98
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1e
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 127
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1c
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 157
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    :cond_1c
    return-void
.end method

.method public static v_raw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 187
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_9

    .line 188
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_9
    return-void
.end method

.method public static v_raw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 217
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_7
    return-void
.end method

.method public static v_raw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 247
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 248
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    :cond_7
    return-void
.end method

.method public static w()V
    .registers 2

    .prologue
    .line 73
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_d

    .line 74
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_d
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 103
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1e

    .line 104
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1e
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 133
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_1c
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 163
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_1c

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    :cond_1c
    return-void
.end method

.method public static w_raw(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 193
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_9

    .line 194
    sget-object v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sTAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_9
    return-void
.end method

.method public static w_raw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 223
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 224
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_7
    return-void
.end method

.method public static w_raw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 253
    sget-boolean v0, Lcom/lge/launcher3/wallpaperblur/adaptivecolorengine/logs/Logs;->sIsLogOn:Z

    if-eqz v0, :cond_7

    .line 254
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    :cond_7
    return-void
.end method
