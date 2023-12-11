.class final Landroid/view/inputmethod/ViewFocusParameterInfo;
.super Ljava/lang/Object;
.source "ViewFocusParameterInfo.java"


# instance fields
.field final mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field final mPreviousSoftInputMode:I

.field final mPreviousStartInputFlags:I

.field final mPreviousStartInputReason:I

.field final mPreviousWindowFlags:I


# direct methods
.method constructor <init>(Landroid/view/inputmethod/EditorInfo;IIII)V
    .registers 6
    .param p1, "previousEditorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "previousStartInputFlags"    # I
    .param p3, "previousStartInputReason"    # I
    .param p4, "previousSoftInputMode"    # I
    .param p5, "previousWindowFlags"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 45
    iput p2, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    .line 46
    iput p3, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    .line 47
    iput p4, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    .line 48
    iput p5, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    .line 49
    return-void
.end method


# virtual methods
.method sameAs(Landroid/view/inputmethod/EditorInfo;IIII)Z
    .registers 7
    .param p1, "currentEditorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "startInputFlags"    # I
    .param p3, "startInputReason"    # I
    .param p4, "softInputMode"    # I
    .param p5, "windowFlags"    # I

    .line 56
    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputFlags:I

    if-ne v0, p2, :cond_1e

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousStartInputReason:I

    if-ne v0, p3, :cond_1e

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousSoftInputMode:I

    if-ne v0, p4, :cond_1e

    iget v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousWindowFlags:I

    if-ne v0, p5, :cond_1e

    iget-object v0, p0, Landroid/view/inputmethod/ViewFocusParameterInfo;->mPreviousEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eq v0, p1, :cond_1c

    if-eqz v0, :cond_1e

    .line 62
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/EditorInfo;->kindofEquals(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 56
    :goto_1f
    return v0
.end method
