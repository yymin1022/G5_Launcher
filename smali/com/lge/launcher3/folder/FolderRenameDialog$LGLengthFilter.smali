.class Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;
.super Ljava/lang/Object;
.source "FolderRenameDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/folder/FolderRenameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LGLengthFilter"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LGLengthFilter"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mMaxInputTextSize:I

.field final synthetic this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;


# direct methods
.method public constructor <init>(Lcom/lge/launcher3/folder/FolderRenameDialog;)V
    .registers 3

    .prologue
    .line 326
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mMaxInputTextSize:I

    .line 328
    return-void
.end method

.method public constructor <init>(Lcom/lge/launcher3/folder/FolderRenameDialog;Landroid/content/Context;Landroid/widget/EditText;I)V
    .registers 6

    .prologue
    .line 330
    iput-object p1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->this$0:Lcom/lge/launcher3/folder/FolderRenameDialog;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 323
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    .line 324
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mMaxInputTextSize:I

    .line 332
    iput-object p3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    .line 333
    iput p4, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mMaxInputTextSize:I

    .line 335
    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .registers 12

    .prologue
    .line 340
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v0

    .line 341
    invoke-interface {p4, p5, p6}, Landroid/text/Spanned;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 342
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 344
    sub-int v3, v0, v1

    add-int/2addr v3, v2

    iget v4, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mMaxInputTextSize:I

    if-le v3, v4, :cond_71

    .line 345
    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    .line 346
    const-string v1, "LGLengthFilter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " is greater than "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mMaxInputTextSize:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/launcher3/util/LGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 349
    iget-object v1, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 350
    iget-object v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v2, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 352
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearComposingText()V

    .line 354
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    if-eqz v0, :cond_71

    .line 355
    iget-object v0, p0, Lcom/lge/launcher3/folder/FolderRenameDialog$LGLengthFilter;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f00a0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 360
    :cond_71
    return-object p1
.end method
