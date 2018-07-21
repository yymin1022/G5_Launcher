.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;
.super Ljava/lang/Object;
.source "LGThemeDetailActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeDetailActivity;->loadingPreViewImage()V
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->access$1(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)V

    .line 274
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$6;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->access$2(Lcom/lge/launcher3/theme/LGThemeDetailActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 275
    return-void
.end method
