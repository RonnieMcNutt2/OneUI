.class Lcom/samsung/android/widget/SemTipPopup$TipWindow;
.super Landroid/widget/PopupWindow;
.source "SemTipPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemTipPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TipWindow"
.end annotation


# instance fields
.field protected mIsDismissing:Z

.field private mIsUsingDismissAnimation:Z

.field protected mPivotX:F

.field protected mPivotY:F


# direct methods
.method static bridge synthetic -$$Nest$msetPivot(Lcom/samsung/android/widget/SemTipPopup$TipWindow;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setPivot(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetUseDismissAnimation(Lcom/samsung/android/widget/SemTipPopup$TipWindow;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->setUseDismissAnimation(Z)V

    return-void
.end method

.method private constructor <init>(Landroid/view/View;IIZ)V
    .registers 6
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .line 1872
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 1866
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    .line 1868
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    .line 1869
    iput v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    .line 1873
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;IIZLcom/samsung/android/widget/SemTipPopup$TipWindow-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method private setPivot(FF)V
    .registers 3
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F

    .line 1880
    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotX:F

    .line 1881
    iput p2, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mPivotY:F

    .line 1882
    return-void
.end method

.method private setUseDismissAnimation(Z)V
    .registers 2
    .param p1, "useAnimation"    # Z

    .line 1876
    iput-boolean p1, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    .line 1877
    return-void
.end method


# virtual methods
.method animateViewOut()V
    .registers 1

    .line 1897
    return-void
.end method

.method public dismiss()V
    .registers 2

    .line 1886
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsUsingDismissAnimation:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->mIsDismissing:Z

    if-nez v0, :cond_c

    .line 1887
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemTipPopup$TipWindow;->animateViewOut()V

    goto :goto_f

    .line 1889
    :cond_c
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1891
    :goto_f
    return-void
.end method

.method dismissFinal()V
    .registers 1

    .line 1894
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1895
    return-void
.end method
