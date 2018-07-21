.class Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;
.super Ljava/lang/Object;
.source "RUDeleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeleteViewHolder"
.end annotation


# instance fields
.field private appCheckBox:Landroid/widget/CheckBox;

.field private appName:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->this$0:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;Landroid/widget/CheckBox;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->appCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method static synthetic access$1(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;Landroid/widget/TextView;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->appName:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$2(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/CheckBox;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->appCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter$DeleteViewHolder;->appName:Landroid/widget/TextView;

    return-object v0
.end method
