.class public Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;
.super Ljava/lang/Object;
.source "DuplicatedApplicationChecker.aj"


# annotations
.annotation runtime Lorg/aspectj/internal/lang/annotation/ajcPrivileged;
.end annotation

.annotation runtime Lorg/aspectj/lang/annotation/Aspect;
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENABLE:Z = true

.field private static synthetic ajc$initFailureCause:Ljava/lang/Throwable;

.field public static final synthetic ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;


# instance fields
.field private mViewTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Pair",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$postClinit()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 21
    :goto_3
    return-void

    .line 15
    :catch_4
    move-exception v0

    sput-object v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$initFailureCause:Ljava/lang/Throwable;

    goto :goto_3
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->mViewTable:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public static final ajc$if$1$7a281983()Z
    .registers 1

    .prologue
    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public static final ajc$if$2$7a281983()Z
    .registers 1

    .prologue
    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public static final ajc$if$3$7a281983(Lcom/android/launcher3/ShortcutInfo;)Z
    .registers 2

    .prologue
    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method private static synthetic ajc$postClinit()V
    .registers 1

    .prologue
    .line 1
    new-instance v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    invoke-direct {v0}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;-><init>()V

    sput-object v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    return-void
.end method

.method public static ajc$privMethod$com_lge_launcher3_debug_DuplicatedApplicationChecker$com_lge_launcher3_debug_DuplicatedApplicationChecker$getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1
    invoke-static {p0}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static aspectOf()Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;
    .registers 3

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    if-nez v0, :cond_e

    new-instance v0, Lorg/aspectj/lang/NoAspectBoundException;

    const-string v1, "com_lge_launcher3_debug_DuplicatedApplicationChecker"

    sget-object v2, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$initFailureCause:Ljava/lang/Throwable;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/lang/NoAspectBoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    return-object v0
.end method

.method private static getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 108
    if-nez p0, :cond_4

    .line 117
    :cond_3
    :goto_3
    return-object v0

    .line 112
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public static hasAspect()Z
    .registers 1

    .prologue
    .line 1
    sget-object v0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$perSingletonInstance:Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$1$623f9a20(Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = ""
        value = "(onAttachedToWindow() && if(void java.lang.Object.if_()))"
    .end annotation

    .prologue
    .line 25
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/android/launcher3/ShortcutInfo;

    if-nez v2, :cond_f

    .line 58
    :cond_e
    :goto_e
    return-void

    .line 31
    :cond_f
    check-cast v1, Lcom/android/launcher3/ShortcutInfo;

    .line 32
    iget v2, v1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-nez v2, :cond_e

    .line 36
    invoke-static {v1}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$privMethod$com_lge_launcher3_debug_DuplicatedApplicationChecker$com_lge_launcher3_debug_DuplicatedApplicationChecker$getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;

    move-result-object v3

    .line 37
    if-eqz v3, :cond_e

    .line 41
    iget-object v1, p0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->mViewTable:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 42
    iget-object v1, p0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->mViewTable:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 43
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " Error: Application has been duplicated old: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 46
    const-string v4, " new: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 48
    new-instance v4, Ljava/lang/RuntimeException;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-direct {v4, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 56
    :cond_5c
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-direct {v1, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->mViewTable:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e
.end method

.method public ajc$after$com_lge_launcher3_debug_DuplicatedApplicationChecker$3$94ea157a(Lcom/android/launcher3/ShortcutInfo;Lorg/aspectj/lang/JoinPoint;)V
    .registers 8
    .annotation runtime Lorg/aspectj/lang/annotation/After;
        argNames = "item"
        value = "(onAddToFolder(item) && if(void java.lang.Object.if_()))"
    .end annotation

    .prologue
    .line 77
    iget v0, p1, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-eqz v0, :cond_5

    .line 105
    :cond_4
    return-void

    .line 81
    :cond_5
    invoke-static {p1}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$privMethod$com_lge_launcher3_debug_DuplicatedApplicationChecker$com_lge_launcher3_debug_DuplicatedApplicationChecker$getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_4

    .line 86
    invoke-interface {p2}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 87
    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 88
    iget v3, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    .line 92
    invoke-static {v0}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$privMethod$com_lge_launcher3_debug_DuplicatedApplicationChecker$com_lge_launcher3_debug_DuplicatedApplicationChecker$getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;

    move-result-object v3

    .line 93
    if-eqz v3, :cond_17

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Error: Application has been duplicated old: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string v3, " new: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_17
.end method

.method public ajc$before$com_lge_launcher3_debug_DuplicatedApplicationChecker$2$ea0e93dd(Lorg/aspectj/lang/JoinPoint;)V
    .registers 4
    .annotation runtime Lorg/aspectj/lang/annotation/Before;
        argNames = ""
        value = "(onDetachedFromWindow() && if(void java.lang.Object.if_()))"
    .end annotation

    .prologue
    .line 61
    invoke-interface {p1}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v1, :cond_14

    .line 64
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 65
    iget v1, v0, Lcom/android/launcher3/ShortcutInfo;->itemType:I

    if-eqz v1, :cond_15

    .line 74
    :cond_14
    :goto_14
    return-void

    .line 69
    :cond_15
    invoke-static {v0}, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->ajc$privMethod$com_lge_launcher3_debug_DuplicatedApplicationChecker$com_lge_launcher3_debug_DuplicatedApplicationChecker$getKey(Lcom/android/launcher3/ShortcutInfo;)Ljava/lang/String;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_14

    .line 71
    iget-object v1, p0, Lcom/lge/launcher3/debug/DuplicatedApplicationChecker;->mViewTable:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14
.end method

.method public synthetic ajc$pointcut$$onAddToFolder$27c(Lcom/android/launcher3/ShortcutInfo;)V
    .registers 2
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = "item"
        value = "(execution(void com.android.launcher3.FolderInfo.add(com.android.launcher3.ShortcutInfo)) && args(item))"
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public synthetic ajc$pointcut$$onAttachedToWindow$1b8()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(void com.android.launcher3.BubbleTextView.onAttachedToWindow())"
    .end annotation

    .prologue
    .line 16
    return-void
.end method

.method public synthetic ajc$pointcut$$onDetachedFromWindow$218()V
    .registers 1
    .annotation runtime Lorg/aspectj/lang/annotation/Pointcut;
        argNames = ""
        value = "execution(void com.android.launcher3.BubbleTextView.onDetachedFromWindow())"
    .end annotation

    .prologue
    .line 17
    return-void
.end method
