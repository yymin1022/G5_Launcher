.class Lcom/android/launcher3/LauncherClings$5;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherClings;

.field private final synthetic val$cling:Landroid/view/View;

.field private final synthetic val$flag:Ljava/lang/String;

.field private final synthetic val$postAnimationCb:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherClings;Landroid/view/View;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherClings$5;->this$0:Lcom/android/launcher3/LauncherClings;

    iput-object p2, p0, Lcom/android/launcher3/LauncherClings$5;->val$cling:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/LauncherClings$5;->val$flag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/launcher3/LauncherClings$5;->val$postAnimationCb:Ljava/lang/Runnable;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$5;->val$cling:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$5;->this$0:Lcom/android/launcher3/LauncherClings;

    iget-object v0, v0, Lcom/android/launcher3/LauncherClings;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/android/launcher3/LauncherClings$5;->val$flag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$5;->val$postAnimationCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_26

    .line 204
    iget-object v0, p0, Lcom/android/launcher3/LauncherClings$5;->val$postAnimationCb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 206
    :cond_26
    return-void
.end method
