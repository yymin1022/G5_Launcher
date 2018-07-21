.class public Lcom/android/launcher3/PagedView$PagedViewItds$1;
.super Ljava/lang/Object;
.source "PagedViewItds.aj"

# interfaces
.implements Lcom/lge/launcher3/pageindicator/PageIndicatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/PagedView;->ajc$interMethod$com_lge_launcher3_nativeitds_PagedViewItds$com_android_launcher3_PagedView$setPageIndicator(Lcom/android/launcher3/PagedView;Lcom/lge/launcher3/pageindicator/PageIndicatorExtension;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/PagedView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/PagedView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/PagedView$PagedViewItds$1;->this$0:Lcom/android/launcher3/PagedView;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChangePage(I)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/launcher3/PagedView$PagedViewItds$1;->this$0:Lcom/android/launcher3/PagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/PagedView;->snapToPage(I)V

    .line 67
    return-void
.end method
