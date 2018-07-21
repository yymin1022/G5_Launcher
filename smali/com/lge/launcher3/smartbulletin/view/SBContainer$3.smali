.class Lcom/lge/launcher3/smartbulletin/view/SBContainer$3;
.super Ljava/lang/Object;
.source "SBContainer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 135
    iget-object v0, p0, Lcom/lge/launcher3/smartbulletin/view/SBContainer$3;->this$0:Lcom/lge/launcher3/smartbulletin/view/SBContainer;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/smartbulletin/view/SBContainer;->startSettingActivity(Landroid/content/Context;)V

    .line 136
    return-void
.end method
