.class Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;
.super Landroid/os/AsyncTask;
.source "GroupWidgetItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;->makeWidgetPreview(Ljava/lang/Object;Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;Landroid/view/ViewGroup;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

.field private final synthetic val$tag:Ljava/lang/Object;

.field private viewHolder:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->this$0:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter;

    iput-object p2, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->val$tag:Ljava/lang/Object;

    .line 104
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    .prologue
    .line 109
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    iput-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->viewHolder:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    .line 110
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->viewHolder:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getPreview(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->viewHolder:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$2(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/LGWidgetCell;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/launcher3/widgettray/LGWidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->val$tag:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 125
    :goto_12
    return-void

    .line 119
    :cond_13
    iget-object v0, p0, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->viewHolder:Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;

    invoke-static {v0}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;->access$3(Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$ViewHolder;)Lcom/lge/launcher3/widgettray/WidgetsImageView;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_1e

    .line 122
    invoke-virtual {v0, p1}, Lcom/lge/launcher3/widgettray/WidgetsImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_1e
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lge/launcher3/widgettray/GroupWidgetItemAdapter$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
