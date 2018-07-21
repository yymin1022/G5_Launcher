.class public Lcom/lge/launcher3/iconchange/IconChangeListBuilder;
.super Ljava/lang/Object;
.source "IconChangeListBuilder.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOriginalIcon:Landroid/graphics/Bitmap;

.field private mhelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mActivity:Landroid/app/Activity;

    .line 19
    iput-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mhelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    .line 23
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mActivity:Landroid/app/Activity;

    .line 24
    return-void
.end method

.method private addOriginalIcon(Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 46
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mOriginalIcon:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/lge/launcher3/util/FastBitmapDrawableAspect;->aspectOf()Lcom/lge/launcher3/util/FastBitmapDrawableAspect;

    move-result-object v2

    invoke-static {p0, v0, v2, v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->createConstructorFastBitmapDrawable_aroundBody1$advice(Lcom/lge/launcher3/iconchange/IconChangeListBuilder;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 47
    new-instance v0, Lcom/lge/launcher3/iconchange/IconItemInfo;

    sget-object v2, Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;->RESOURCE:Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;

    const/4 v6, -0x1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/lge/launcher3/iconchange/IconItemInfo;-><init>(Ljava/lang/String;Lcom/lge/launcher3/iconchange/IconItemInfo$IconSource;Landroid/graphics/drawable/Drawable;III)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method private addPhotoIcons(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mhelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    if-nez v0, :cond_5

    .line 65
    :cond_4
    :goto_4
    return-void

    .line 59
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mhelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeDbHelper;->load(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_4
.end method

.method private addTransparentIcon(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    return-void
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody0(Lcom/lge/launcher3/iconchange/IconChangeListBuilder;Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 3

    .prologue
    .line 46
    invoke-static {p1}, Lcom/lge/launcher3/util/Utilities;->createConstructorFastBitmapDrawable(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/util/IFastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructorFastBitmapDrawable_aroundBody1$advice(Lcom/lge/launcher3/iconchange/IconChangeListBuilder;Landroid/graphics/Bitmap;Lcom/lge/launcher3/util/FastBitmapDrawableAspect;Landroid/graphics/Bitmap;Lorg/aspectj/runtime/internal/AroundClosure;)Lcom/lge/launcher3/util/IFastBitmapDrawable;
    .registers 6

    .prologue
    .line 13
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p3}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 15
    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/launcher3/iconchange/IconItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-direct {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->addOriginalIcon(Ljava/util/ArrayList;)V

    .line 40
    invoke-direct {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->addTransparentIcon(Ljava/util/ArrayList;)V

    .line 41
    invoke-direct {p0, v0}, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->addPhotoIcons(Ljava/util/ArrayList;)V

    .line 42
    return-object v0
.end method

.method public setOriginalIcon(Landroid/graphics/Bitmap;)Lcom/lge/launcher3/iconchange/IconChangeListBuilder;
    .registers 2

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mOriginalIcon:Landroid/graphics/Bitmap;

    .line 33
    return-object p0
.end method

.method public setPhotoIconDBHelper(Lcom/lge/launcher3/iconchange/IconChangeDbHelper;)Lcom/lge/launcher3/iconchange/IconChangeListBuilder;
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeListBuilder;->mhelper:Lcom/lge/launcher3/iconchange/IconChangeDbHelper;

    .line 28
    return-object p0
.end method
