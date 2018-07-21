.class public abstract Lcom/lge/launcher3/util/LGResourceManager;
.super Ljava/lang/Object;
.source "LGResourceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGResourceManager"


# instance fields
.field protected mPackageName:Ljava/lang/String;

.field protected mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    .line 9
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 63
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 67
    :goto_7
    return-object v0

    .line 65
    :catch_8
    move-exception v1

    const-string v1, "LGResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t load getDrawable (id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    .line 50
    const/4 v0, 0x0

    .line 52
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 53
    invoke-virtual {p0, v1}, Lcom/lge/launcher3/util/LGResourceManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_e} :catch_10

    move-result-object v0

    .line 57
    :goto_f
    return-object v0

    .line 55
    :catch_10
    move-exception v1

    const-string v1, "LGResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t load getDrawable ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_a

    move-result v0

    .line 22
    :goto_9
    return v0

    .line 19
    :catch_a
    move-exception v1

    const-string v1, "LGResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t load getIdentifier("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 20
    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method public getInteger(Ljava/lang/String;I)I
    .registers 6

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    .line 29
    const-string v1, "integer"

    iget-object v2, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 30
    iget-object v1, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result p2

    .line 35
    :goto_10
    return p2

    .line 32
    :catch_11
    move-exception v0

    const-string v0, "LGResourceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t load getInteger ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/util/LGLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    :try_start_1
    iget-object v1, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    const-string v2, "array"

    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 42
    iget-object v2, p0, Lcom/lge/launcher3/util/LGResourceManager;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_12

    move-result-object v0

    .line 46
    :goto_11
    return-object v0

    .line 44
    :catch_12
    move-exception v1

    const-string v1, "LGResourceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Couldn\'t load getStringArray("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/launcher3/util/LGResourceManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method
