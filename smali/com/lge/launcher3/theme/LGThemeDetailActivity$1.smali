.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;
.super Ljava/lang/Object;
.source "LGThemeDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/theme/LGThemeDetailActivity;->setupView()V
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->getSelectThemeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->access$0(Lcom/lge/launcher3/theme/LGThemeDetailActivity;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->finishDetailActivity()V

    .line 186
    return-void
.end method
