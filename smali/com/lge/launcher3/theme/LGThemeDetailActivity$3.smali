.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;
.super Ljava/lang/Object;
.source "LGThemeDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeDetailActivity;->showThemeDetailDeleteDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

.field private final synthetic val$deleteThemeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    iput-object p2, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->val$deleteThemeName:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 205
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->val$deleteThemeName:Ljava/lang/String;

    .line 207
    :try_start_2
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 208
    new-instance v2, Lcom/lge/launcher3/theme/LGThemeDetailActivity$PackageDeleteObserver;

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-direct {v2, v3}, Lcom/lge/launcher3/theme/LGThemeDetailActivity$PackageDeleteObserver;-><init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 209
    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$3;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->finish()V

    .line 210
    const-string v1, "LGThemeDetailActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick, packageManager.deletePackage str = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 215
    :goto_2c
    return-void

    .line 212
    :catch_2d
    move-exception v0

    const-string v0, "LGThemeDetailActivity"

    const-string v1, "onClick SecurityException"

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method
