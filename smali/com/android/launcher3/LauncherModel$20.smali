.class Lcom/android/launcher3/LauncherModel$20;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherModel;->getApplicationItemInfoForComponentName(Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherModel;

.field private final synthetic val$cname:Landroid/content/ComponentName;

.field private final synthetic val$user:Lcom/android/launcher3/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel;Landroid/content/ComponentName;Lcom/android/launcher3/compat/UserHandleCompat;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$20;->this$0:Lcom/android/launcher3/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher3/LauncherModel$20;->val$cname:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$20;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 3944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3947
    iget-object v2, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    if-nez v2, :cond_15

    .line 3948
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$20;->val$cname:Landroid/content/ComponentName;

    invoke-virtual {p3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    iget v2, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v2, :cond_13

    .line 3950
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 3948
    goto :goto_12

    .line 3950
    :cond_15
    iget-object v2, p0, Lcom/android/launcher3/LauncherModel$20;->val$cname:Landroid/content/ComponentName;

    invoke-virtual {p3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget v2, p2, Lcom/android/launcher3/ItemInfo;->itemType:I

    if-nez v2, :cond_2b

    .line 3951
    iget-object v2, p2, Lcom/android/launcher3/ItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$20;->val$user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_2b
    move v0, v1

    .line 3950
    goto :goto_12
.end method
