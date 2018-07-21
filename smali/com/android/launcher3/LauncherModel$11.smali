.class Lcom/android/launcher3/LauncherModel$11;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->getHideItemsByPackageName(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$pn:Ljava/lang/String;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$11;->val$pn:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$11;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 1157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 6

    .prologue
    .line 1160
    invoke-virtual {p3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$11;->val$pn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v1, p0, Lcom/android/launcher3/LauncherModel$11;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
