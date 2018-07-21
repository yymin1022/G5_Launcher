.class Lcom/lge/launcher3/recentuninstall/RUActivity$1;
.super Ljava/lang/Object;
.source "RUActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/launcher3/recentuninstall/RUActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;


# direct methods
.method static synthetic $SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I
    .registers 3

    .prologue
    .line 194
    sget-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->values()[Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->NORMAL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_23

    :goto_15
    :try_start_15
    sget-object v1, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->SELECT_ALL:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_21

    :goto_1e
    sput-object v0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE:[I

    goto :goto_4

    :catch_21
    move-exception v1

    goto :goto_1e

    :catch_23
    move-exception v1

    goto :goto_15
.end method

.method constructor <init>(Lcom/lge/launcher3/recentuninstall/RUActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->$SWITCH_TABLE$com$lge$launcher3$recentuninstall$RUActivity$RECENT_UNINSTALL_MODE()[I

    move-result-object v0

    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v1, v1, Lcom/lge/launcher3/recentuninstall/RUActivity;->mCurState:Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;

    invoke-virtual {v1}, Lcom/lge/launcher3/recentuninstall/RUActivity$RECENT_UNINSTALL_MODE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_56

    .line 214
    :cond_11
    :goto_11
    :pswitch_11
    return-void

    .line 201
    :pswitch_12
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    instance-of v0, v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    if-eqz v0, :cond_11

    .line 202
    iget-object v1, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mAdapter:Landroid/widget/ArrayAdapter;

    check-cast v0, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    iput-object v0, v1, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    .line 204
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0, p3}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->setChecked(I)V

    .line 205
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->notifyDataSetChanged()V

    .line 207
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->access$2(Lcom/lge/launcher3/recentuninstall/RUActivity;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 208
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v0, v0, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v0}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getCount()I

    move-result v0

    iget-object v2, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    iget-object v2, v2, Lcom/lge/launcher3/recentuninstall/RUActivity;->mDeleteAdapter:Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;

    invoke-virtual {v2}, Lcom/lge/launcher3/recentuninstall/RUDeleteAdapter;->getSelectedCount()I

    move-result v2

    if-ne v0, v2, :cond_54

    const/4 v0, 0x1

    :goto_4b
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 209
    iget-object v0, p0, Lcom/lge/launcher3/recentuninstall/RUActivity$1;->this$0:Lcom/lge/launcher3/recentuninstall/RUActivity;

    invoke-static {v0}, Lcom/lge/launcher3/recentuninstall/RUActivity;->access$3(Lcom/lge/launcher3/recentuninstall/RUActivity;)V

    goto :goto_11

    .line 208
    :cond_54
    const/4 v0, 0x0

    goto :goto_4b

    .line 197
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method
