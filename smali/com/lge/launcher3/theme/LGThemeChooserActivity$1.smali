.class Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;
.super Ljava/lang/Object;
.source "LGThemeChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/LGThemeChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v0}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$2(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    iget-object v1, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$3(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v2}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$4(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    invoke-static {v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$5(Lcom/lge/launcher3/theme/LGThemeChooserActivity;)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->access$6(Lcom/lge/launcher3/theme/LGThemeChooserActivity;III)V

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGThemeChooserActivity$1;->this$0:Lcom/lge/launcher3/theme/LGThemeChooserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/theme/LGThemeChooserActivity;->setDeleteMode(Z)V

    .line 70
    :cond_25
    return-void
.end method
