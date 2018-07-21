.class Lcom/android/launcher3/IconCache$1;
.super Ljava/lang/Object;
.source "IconCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/IconCache$IconLoadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/IconCache;

.field private final synthetic val$caller:Lcom/android/launcher3/BubbleTextView;

.field private final synthetic val$info:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/IconCache;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/BubbleTextView;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iput-object p2, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/IconCache$1;->val$caller:Lcom/android/launcher3/BubbleTextView;

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 448
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/AppInfo;

    if-eqz v0, :cond_22

    .line 449
    iget-object v1, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/AppInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/LauncherActivityInfoCompat;Z)V

    .line 459
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v0, v0, Lcom/android/launcher3/IconCache;->mMainThreadExecutor:Lcom/android/launcher3/MainThreadExecutor;

    new-instance v1, Lcom/android/launcher3/IconCache$1$1;

    iget-object v2, p0, Lcom/android/launcher3/IconCache$1;->val$caller:Lcom/android/launcher3/BubbleTextView;

    iget-object v3, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/launcher3/IconCache$1$1;-><init>(Lcom/android/launcher3/IconCache$1;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 466
    return-void

    .line 450
    :cond_22
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_3d

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 452
    iget-object v2, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    .line 453
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    if-eqz v1, :cond_3a

    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->promisedIntent:Landroid/content/Intent;

    .line 454
    :goto_34
    iget-object v3, v0, Lcom/android/launcher3/ShortcutInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    .line 452
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/IconCache;->getTitleAndIcon(Lcom/android/launcher3/ShortcutInfo;Landroid/content/Intent;Lcom/android/launcher3/compat/UserHandleCompat;Z)V

    goto :goto_11

    .line 453
    :cond_3a
    iget-object v1, v0, Lcom/android/launcher3/ShortcutInfo;->intent:Landroid/content/Intent;

    goto :goto_34

    .line 455
    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/PackageItemInfo;

    if-eqz v0, :cond_11

    .line 456
    iget-object v0, p0, Lcom/android/launcher3/IconCache$1;->val$info:Lcom/android/launcher3/ItemInfo;

    check-cast v0, Lcom/android/launcher3/model/PackageItemInfo;

    .line 457
    iget-object v1, p0, Lcom/android/launcher3/IconCache$1;->this$0:Lcom/android/launcher3/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/launcher3/model/PackageItemInfo;->user:Lcom/android/launcher3/compat/UserHandleCompat;

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher3/IconCache;->getTitleAndIconForApp(Ljava/lang/String;Lcom/android/launcher3/compat/UserHandleCompat;ZLcom/android/launcher3/model/PackageItemInfo;)V

    goto :goto_11
.end method
