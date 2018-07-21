.class Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;
.super Ljava/lang/Object;
.source "SBContainer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBContainer;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 142
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_27

    const/16 v0, 0x14

    if-ne p2, v0, :cond_27

    .line 143
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$5(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 144
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$6(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 148
    :goto_1b
    const/4 v0, 0x1

    .line 150
    :goto_1c
    return v0

    .line 146
    :cond_1d
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-static {v0}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->access$1(Lcom/lge/launcher3/smartbulletin/view/SBContainer;)Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->requestFocus()Z

    goto :goto_1b

    .line 150
    :cond_27
    const/4 v0, 0x0

    goto :goto_1c
.end method
