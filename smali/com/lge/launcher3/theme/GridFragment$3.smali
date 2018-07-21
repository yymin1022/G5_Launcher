.class Lcom/lge/launcher3/theme/GridFragment$3;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/GridFragment;->showThemeSmartWorldDialog()V
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment$3;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .prologue
    .line 205
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 206
    return-void
.end method
