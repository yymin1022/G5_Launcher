.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$5;
.super Ljava/lang/Object;
.source "LGThemeDetailActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$5;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 228
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 229
    return-void
.end method
