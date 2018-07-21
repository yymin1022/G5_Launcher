.class Lcom/lge/launcher3/iconchange/IconChangeActivity$5;
.super Ljava/lang/Object;
.source "IconChangeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/iconchange/IconChangeActivity;->showDeleteDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/iconchange/IconChangeActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 533
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    iget-object v1, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    invoke-static {v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$16(Lcom/lge/launcher3/iconchange/IconChangeActivity;)Lcom/lge/launcher3/iconchange/IconChangeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/launcher3/iconchange/IconChangeManager;->getOriginIconShortcutInfo()Lcom/android/launcher3/ShortcutInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$17(Lcom/lge/launcher3/iconchange/IconChangeActivity;Lcom/android/launcher3/ShortcutInfo;)V

    .line 534
    iget-object v0, p0, Lcom/lge/launcher3/iconchange/IconChangeActivity$5;->this$0:Lcom/lge/launcher3/iconchange/IconChangeActivity;

    sget-object v1, Lcom/lge/launcher3/iconchange/IconChangeActivity$State;->SELECT_ICON:Lcom/lge/launcher3/iconchange/IconChangeActivity$State;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/lge/launcher3/iconchange/IconChangeActivity;->access$18(Lcom/lge/launcher3/iconchange/IconChangeActivity;Lcom/lge/launcher3/iconchange/IconChangeActivity$State;Z)V

    .line 535
    return-void
.end method
