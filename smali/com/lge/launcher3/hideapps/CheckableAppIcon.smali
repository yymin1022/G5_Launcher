.class public Lcom/lge/launcher3/hideapps/CheckableAppIcon;
.super Landroid/widget/FrameLayout;
.source "CheckableAppIcon.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mIconSize:I

.field private mStrCheckBox:Ljava/lang/String;

.field private mStrChecked:Ljava/lang/String;

.field private mStrUnchecked:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method


# virtual methods
.method public getCheckableAppTalkbackString(Z)Ljava/lang/CharSequence;
    .registers 4

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrCheckBox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrChecked:Ljava/lang/String;

    :goto_21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    return-object v1

    .line 77
    :cond_25
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrUnchecked:Ljava/lang/String;

    goto :goto_21
.end method

.method public initCheckBox()V
    .registers 5

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 56
    const-string v1, "btn_blocked_check_selector"

    const-string v2, "drawable"

    const-string v3, "com.lge"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 57
    if-eqz v0, :cond_15

    .line 58
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setButtonDrawable(I)V

    .line 60
    :cond_15
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 40
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 41
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mIconSize:I

    .line 43
    const v0, 0x7f0e0027

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mTextView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e0028

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mCheckBox:Landroid/widget/CheckBox;

    .line 45
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrCheckBox:Ljava/lang/String;

    .line 47
    const v1, 0x7f0f00f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrChecked:Ljava/lang/String;

    .line 48
    const v1, 0x7f0f00f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mStrUnchecked:Ljava/lang/String;

    .line 50
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setLayoutDirection(I)V

    .line 51
    invoke-virtual {p0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->initCheckBox()V

    .line 52
    return-void
.end method

.method public setChecked(Z)V
    .registers 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 70
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getCheckableAppTalkbackString(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->getCheckableAppTalkbackString(Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 96
    if-nez p1, :cond_5

    .line 104
    :goto_4
    return-void

    .line 100
    :cond_5
    new-instance v0, Lcom/android/launcher3/FastBitmapDrawable;

    invoke-direct {v0, p1}, Lcom/android/launcher3/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 101
    iget v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mIconSize:I

    iget v2, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mIconSize:I

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/android/launcher3/FastBitmapDrawable;->setBounds(IIII)V

    .line 102
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/FastBitmapDrawable;->setFilterBitmap(Z)V

    .line 103
    iget-object v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_5

    .line 93
    :goto_4
    return-void

    .line 91
    :cond_5
    iget v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mIconSize:I

    iget v1, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mIconSize:I

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 92
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lge/launcher3/hideapps/CheckableAppIcon;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 84
    return-void
.end method
