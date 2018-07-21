.class Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;
.super Landroid/widget/FrameLayout;
.source "ScreenEffectSelectionDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 177
    const-class v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 179
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    .line 180
    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    .line 189
    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->setupListView(Landroid/content/Context;)V

    .line 191
    new-instance v0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-direct {v0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    .line 192
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0, p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->setTargetView(Landroid/view/ViewGroup;)V

    .line 193
    return-void
.end method

.method private getAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    invoke-static {p1}, Lcom/lge/launcher3/screeneffect/ScreenEffectUtils;->getScreenEffectList(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 215
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 216
    sget v2, Lcom/lge/R$layout;->dialog_c_6:I

    const v3, 0x1020014

    .line 215
    invoke-direct {v1, p1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 217
    return-object v1
.end method

.method private setupListView(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 199
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    .line 200
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->getAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 202
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 203
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipChildren(Z)V

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 205
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->addView(Landroid/view/View;)V

    .line 207
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 279
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    if-eqz v0, :cond_c

    .line 280
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->destroy()V

    .line 281
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    .line 284
    :cond_c
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_18

    .line 285
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 286
    iput-object v2, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    .line 289
    :cond_18
    invoke-virtual {p0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->removeAllViews()V

    .line 290
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0, p1, p2}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;)Z

    move-result v0

    .line 253
    if-nez v0, :cond_c

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    .line 256
    :cond_c
    return v0
.end method

.method public getCheckedItemPosition()I
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->isPreviewAnimationStarted()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 265
    const/4 v0, 0x1

    .line 267
    :goto_9
    return v0

    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_9
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 224
    if-eqz p2, :cond_11

    .line 225
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p3, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 230
    :goto_b
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0, p3}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->startPreviewAnimation(I)V

    .line 231
    return-void

    .line 227
    :cond_11
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_b
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mScreenEffectPreviewManager:Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;

    invoke-virtual {v0}, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectPreviewManager;->cancelPreviewAnimation()V

    .line 274
    return-void
.end method

.method public setItemCheckedAndSelection(I)V
    .registers 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 238
    iget-object v0, p0, Lcom/lge/launcher3/screeneffect/dialog/ScreenEffectListLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelection(I)V

    .line 239
    return-void
.end method
