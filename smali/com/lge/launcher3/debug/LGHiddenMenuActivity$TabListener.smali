.class public Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;
.super Ljava/lang/Object;
.source "LGHiddenMenuActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/debug/LGHiddenMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Fragment;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/ActionBar$TabListener;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArgs:Landroid/os/Bundle;

.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mFragment:Landroid/app/Fragment;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mActivity:Landroid/app/Activity;

    .line 60
    iput-object p2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mTag:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mClass:Ljava/lang/Class;

    .line 62
    iput-object p4, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mArgs:Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 68
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_37

    .line 69
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 71
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    :cond_37
    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 6

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mActivity:Landroid/app/Activity;

    const-string v1, "Reselected!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 95
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 6

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-nez v0, :cond_1f

    .line 78
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mArgs:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    .line 79
    const v0, 0x1020002

    iget-object v1, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    iget-object v2, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mTag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 83
    :goto_1e
    return-void

    .line 81
    :cond_1f
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1e
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .registers 4

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Lcom/lge/launcher3/debug/LGHiddenMenuActivity$TabListener;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p2, v0}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 90
    :cond_9
    return-void
.end method
