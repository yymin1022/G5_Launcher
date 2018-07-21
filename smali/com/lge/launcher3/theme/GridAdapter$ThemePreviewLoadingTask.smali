.class Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;
.super Landroid/os/AsyncTask;
.source "GridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/theme/GridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemePreviewLoadingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field bitmap:Landroid/graphics/drawable/Drawable;

.field info:Lcom/lge/launcher3/theme/LGThemeInfo;

.field final synthetic this$0:Lcom/lge/launcher3/theme/GridAdapter;

.field viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/theme/GridAdapter;Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;Lcom/lge/launcher3/theme/LGThemeInfo;)V
    .registers 4

    .prologue
    .line 147
    iput-object p1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    .line 149
    iput-object p3, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    .line 150
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 5

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-static {v1}, Lcom/lge/launcher3/theme/GridAdapter;->access$0(Lcom/lge/launcher3/theme/GridAdapter;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-static {v2}, Lcom/lge/launcher3/theme/GridAdapter;->access$1(Lcom/lge/launcher3/theme/GridAdapter;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/lge/launcher3/theme/LGThemeInfo;->makeThemePreview(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->bitmap:Landroid/graphics/drawable/Drawable;

    .line 155
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 6

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 161
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/theme/GridAdapter;->access$2(Lcom/lge/launcher3/theme/GridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 177
    :goto_f
    return-void

    .line 165
    :cond_10
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->bitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v1, v1, Lcom/lge/launcher3/theme/LGThemeInfo;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v1, v1, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->deleteView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v3, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v3, v3, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->textTitle:Landroid/widget/TextView;

    invoke-static {v0, v1, v2, v3}, Lcom/lge/launcher3/theme/GridAdapter;->access$3(Lcom/lge/launcher3/theme/GridAdapter;Landroid/widget/ImageView;Lcom/lge/launcher3/theme/LGThemeInfo;Landroid/widget/TextView;)V

    .line 168
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    .line 169
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    iget-object v1, v1, Lcom/lge/launcher3/theme/GridAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getInstance(Landroid/content/Context;)Lcom/lge/launcher3/theme/LGThemeChange;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/theme/LGThemeChange;->getCurrentTheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 170
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->selectView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    :cond_55
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->info:Lcom/lge/launcher3/theme/LGThemeInfo;

    iget-object v0, v0, Lcom/lge/launcher3/theme/LGThemeInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.lge.themepark.theme_plus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 173
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->viewHolder:Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;

    iget-object v0, v0, Lcom/lge/launcher3/theme/GridAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 174
    iget-object v1, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    iget-object v1, v1, Lcom/lge/launcher3/theme/GridAdapter;->context:Landroid/content/Context;

    const v2, 0x7f0f0089

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 176
    :cond_73
    iget-object v0, p0, Lcom/lge/launcher3/theme/GridAdapter$ThemePreviewLoadingTask;->this$0:Lcom/lge/launcher3/theme/GridAdapter;

    invoke-static {v0}, Lcom/lge/launcher3/theme/GridAdapter;->access$2(Lcom/lge/launcher3/theme/GridAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_f
.end method
