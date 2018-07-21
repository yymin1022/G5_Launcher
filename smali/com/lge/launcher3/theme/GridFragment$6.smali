.class Lcom/lge/launcher3/theme/GridFragment$6;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/GridFragment;->showThemeDeleteDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/GridFragment;

.field private final synthetic val$deleteThemeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/GridFragment;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment$6;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    iput-object p2, p0, Lcom/lge/launcher3/theme/GridFragment$6;->val$deleteThemeName:Ljava/lang/String;

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 263
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 264
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridFragment$6;->val$deleteThemeName:Ljava/lang/String;

    .line 266
    :try_start_5
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment$6;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    invoke-static {v0}, Lcom/lge/launcher3/theme/GridFragment;->access$1(Lcom/lge/launcher3/theme/GridFragment;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 267
    iget-object v2, p0, Lcom/lge/launcher3/theme/GridFragment$6;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    invoke-static {v2}, Lcom/lge/launcher3/theme/GridFragment;->access$2(Lcom/lge/launcher3/theme/GridFragment;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 268
    new-instance v3, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity$PackageDeleteObserver;-><init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V

    const/4 v0, 0x0

    .line 267
    invoke-virtual {v2, v1, v3, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_1f} :catch_20

    .line 273
    :goto_1f
    return-void

    .line 270
    :catch_20
    move-exception v0

    const-string v0, "showThemeDeleteDialog"

    const-string v1, "SecurityException is occured"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method
