.class Lcom/samsung/android/widget/SemTipPopup$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemTipPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemTipPopup;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemTipPopup;

    .line 400
    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 403
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 404
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v1, p0, Lcom/samsung/android/widget/SemTipPopup$3;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {v1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmContext(Lcom/samsung/android/widget/SemTipPopup;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-direct {v0, v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 405
    return-void
.end method
