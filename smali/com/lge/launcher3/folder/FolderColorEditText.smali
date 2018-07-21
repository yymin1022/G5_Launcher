.class public Lcom/lge/launcher3/folder/FolderColorEditText;
.super Landroid/widget/EditText;
.source "FolderColorEditText.java"


# instance fields
.field private menuContext:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    .line 13
    return-void
.end method


# virtual methods
.method public isDictionaryCalled()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    return v0
.end method

.method public onTextContextMenuItem(I)Z
    .registers 3

    .prologue
    .line 27
    const v0, 0x102002a

    if-ne p1, v0, :cond_8

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    .line 30
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    return v0
.end method

.method public setIsDictionaryCalled(Z)V
    .registers 2

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/lge/launcher3/folder/FolderColorEditText;->menuContext:Z

    .line 39
    return-void
.end method
