.class Lcom/lge/launcher3/util/IMEUtils$2;
.super Ljava/lang/Object;
.source "IMEUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/util/IMEUtils;->showInputMethodDelayed(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$aView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/util/IMEUtils$2;->val$aView:Landroid/view/View;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/launcher3/util/IMEUtils$2;->val$aView:Landroid/view/View;

    invoke-static {v0}, Lcom/lge/launcher3/util/IMEUtils;->showInputMethod(Landroid/view/View;)Z

    .line 58
    return-void
.end method
