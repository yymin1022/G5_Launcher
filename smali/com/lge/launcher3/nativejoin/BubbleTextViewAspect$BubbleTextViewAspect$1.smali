.class Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;
.super Ljava/lang/Object;
.source "BubbleTextViewAspect.aj"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;->ajc$after$com_lge_launcher3_nativejoin_BubbleTextViewAspect$1$9398dc72(Landroid/content/Context;Landroid/util/AttributeSet;Lorg/aspectj/lang/JoinPoint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

.field private final synthetic val$textView:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method constructor <init>(Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;->this$0:Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect;

    iput-object p2, p0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;->val$textView:Lcom/android/launcher3/BubbleTextView;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 12

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;->val$textView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 47
    const/4 v1, 0x6

    if-lt v0, v1, :cond_1f

    iget-object v0, p0, Lcom/lge/launcher3/nativejoin/BubbleTextViewAspect$BubbleTextViewAspect$1;->val$textView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1f

    .line 48
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/lge/launcher3/util/TextUtils;->setTextScaleX(Landroid/widget/TextView;)V

    .line 50
    :cond_1f
    return-void
.end method
