.class Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$4;
.super Ljava/lang/Object;
.source "SBCategoryLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->processCollapse()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 176
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout$4;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBCategoryLayout;->enableChangingTransition(Z)V

    .line 177
    return-void
.end method
