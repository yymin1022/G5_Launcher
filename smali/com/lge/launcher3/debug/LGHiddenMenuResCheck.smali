.class public Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;
.super Landroid/app/Fragment;
.source "LGHiddenMenuResCheck.java"


# static fields
.field private static final GET_CODE:I

.field private static sCheckStartFlag:Z

.field private static sResultString:Ljava/lang/StringBuilder;


# instance fields
.field private mResults:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sCheckStartFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Z)V
    .registers 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sCheckStartFlag:Z

    return-void
.end method

.method static synthetic access$1()Ljava/lang/StringBuilder;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->mResults:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    .prologue
    .line 100
    if-nez p1, :cond_16

    .line 103
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->mResults:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 108
    if-nez p2, :cond_17

    .line 109
    const-string v1, "(cancelled)"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 122
    :cond_11
    :goto_11
    const-string v1, "\n"

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 124
    :cond_16
    return-void

    .line 114
    :cond_17
    const-string v1, "(okay "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 116
    const-string v1, ") "

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 117
    if-eqz p3, :cond_11

    .line 118
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    sget-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sCheckStartFlag:Z

    if-eqz v0, :cond_4c

    .line 34
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_19

    .line 35
    sget-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    const-string v1, "LANDSCAPE check \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_19
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v2, :cond_2a

    .line 38
    sget-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    const-string v1, "PORTRAIT check \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_2a
    sget-object v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/launcher3/debug/LGResouceCheckTool;->checkAllRes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_4c

    .line 44
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 47
    :cond_4c
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .prologue
    .line 51
    const v0, 0x7f040022

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 54
    const v0, 0x7f0e006a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->mResults:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0e006b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    const-string v2, "Check Res"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 59
    new-instance v2, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$1;

    invoke-direct {v2, p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$1;-><init>(Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f0e006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 68
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 69
    sget-boolean v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sCheckStartFlag:Z

    if-eqz v0, :cond_50

    .line 70
    invoke-virtual {p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_50

    .line 71
    new-instance v0, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$2;

    invoke-direct {v0, p0}, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck$2;-><init>(Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;)V

    .line 79
    const-wide/16 v2, 0xc8

    .line 71
    invoke-virtual {v1, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_50
    return-object v1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 88
    const-string v0, "result"

    sget-object v1, Lcom/lge/launcher3/debug/LGHiddenMenuResCheck;->sResultString:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method
