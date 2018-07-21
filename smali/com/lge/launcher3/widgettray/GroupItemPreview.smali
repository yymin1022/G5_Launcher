.class public Lcom/lge/launcher3/widgettray/GroupItemPreview;
.super Landroid/widget/ImageView;
.source "GroupItemPreview.java"

# interfaces
.implements Lcom/lge/launcher3/widgettray/PreviewAppliable;


# static fields
.field private static final FADE_IN_DURATION_MS:I = 0x5a


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 11
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/widgettray/GroupItemPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/launcher3/widgettray/GroupItemPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/launcher3/widgettray/GroupItemPreview;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    return-void
.end method


# virtual methods
.method public applyPreview(Landroid/graphics/Bitmap;)V
    .registers 6

    .prologue
    .line 30
    if-eqz p1, :cond_18

    .line 31
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->setAlpha(F)V

    .line 33
    invoke-virtual {p0}, Lcom/lge/launcher3/widgettray/GroupItemPreview;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 36
    :cond_18
    return-void
.end method
