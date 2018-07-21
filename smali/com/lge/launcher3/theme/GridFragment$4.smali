.class Lcom/lge/launcher3/theme/GridFragment$4;
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridFragment$4;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridFragment$4;->this$0:Lcom/lge/launcher3/theme/GridFragment;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/GridFragment;->startAppManager()V

    .line 218
    return-void
.end method
