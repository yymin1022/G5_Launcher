.class Lcom/lge/launcher3/theme/LGThemeDetailActivity$2;
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
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeDetailActivity$2;->this$0:Lcom/lge/launcher3/theme/LGThemeDetailActivity;

    invoke-virtual {v0}, Lcom/lge/launcher3/theme/LGThemeDetailActivity;->finish()V

    .line 194
    return-void
.end method
