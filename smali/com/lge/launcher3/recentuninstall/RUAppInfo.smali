.class public Lcom/lge/launcher3/recentuninstall/RUAppInfo;
.super Ljava/lang/Object;
.source "RUAppInfo.java"


# instance fields
.field private icon:Landroid/graphics/drawable/Drawable;

.field private isSelected:Z

.field private packageName:Ljava/lang/String;

.field private title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 15
    iput-object p2, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->title:Ljava/lang/CharSequence;

    .line 16
    iput-object p3, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->packageName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->title:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected:Z

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 26
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->packageName:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSelected(Z)V
    .registers 2

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->isSelected:Z

    .line 50
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUAppInfo;->title:Ljava/lang/CharSequence;

    .line 34
    return-void
.end method
