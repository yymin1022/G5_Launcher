.class Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;
.super Ljava/lang/Object;
.source "SBProviderLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->removeOnceBadge()V

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout$1;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;

    invoke-static {v0, p1}, Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;->access$0(Lcom/lge/launcher3/smartbulletin/view/SBProviderLayout;Landroid/view/View;)V

    .line 79
    return-void
.end method
