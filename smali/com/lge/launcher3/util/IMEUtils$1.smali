.class Lcom/lge/launcher3/util/IMEUtils$1;
.super Ljava/lang/Object;
.source "IMEUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/util/IMEUtils;->showInputMethodDelayed(Landroid/content/Context;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aContext:Landroid/content/Context;

.field private final synthetic val$aView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/IMEUtils$1;->val$aContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/lge/launcher3/util/IMEUtils$1;->val$aView:Landroid/view/View;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/launcher3/util/IMEUtils$1;->val$aContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lge/launcher3/util/IMEUtils$1;->val$aView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/IMEUtils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)Z

    .line 29
    return-void
.end method
