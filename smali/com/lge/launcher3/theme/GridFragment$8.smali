.class Lcom/lge/launcher3/theme/GridFragment$8;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/GridFragment;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment$8;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    return-void
.end method
