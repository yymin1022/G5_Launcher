.class public Lcom/lge/launcher3/theme/LGIconResource;
.super Ljava/lang/Object;
.source "LGIconResource.java"


# instance fields
.field private mImage:Landroid/graphics/drawable/Drawable;

.field private mIndex:I

.field private mIntent:Landroid/content/Intent;

.field private mOriginalImage:Landroid/graphics/drawable/Drawable;

.field private mResourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDrawable()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mImage:Landroid/graphics/drawable/Drawable;

    .line 65
    iput-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mOriginalImage:Landroid/graphics/drawable/Drawable;

    .line 66
    return-void
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mIndex:I

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getOriginalImage()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mOriginalImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lge/launcher3/theme/LGIconResource;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGIconResource;->mImage:Landroid/graphics/drawable/Drawable;

    .line 38
    return-void
.end method

.method public setIndex(I)V
    .registers 2

    .prologue
    .line 21
    iput p1, p0, Lcom/lge/launcher3/theme/LGIconResource;->mIndex:I

    .line 22
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGIconResource;->mIntent:Landroid/content/Intent;

    .line 57
    return-void
.end method

.method public setOriginalImage(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    .prologue
    .line 45
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_23

    move-object v0, p1

    .line 46
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_23

    .line 48
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gt v1, v2, :cond_21

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v0, v1, :cond_23

    .line 50
    :cond_21
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGIconResource;->mOriginalImage:Landroid/graphics/drawable/Drawable;

    .line 53
    :cond_23
    return-void
.end method

.method public setResourceName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/lge/launcher3/theme/LGIconResource;->mResourceName:Ljava/lang/String;

    .line 30
    return-void
.end method
