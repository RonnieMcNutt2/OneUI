.class Landroid/widget/Editor$SuggestionsPopupWindow$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;->initContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .registers 2
    .param p1, "this$1"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .line 4727
    iput-object p1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .line 4729
    iget-object v0, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 4731
    .local v0, "editable":Landroid/text/Editable;
    iget-object v1, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v1, v1, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v1}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 4732
    .local v1, "spanUnionStart":I
    iget-object v2, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v2, v2, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    invoke-interface {v0, v2}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 4733
    .local v2, "spanUnionEnd":I
    if-ltz v1, :cond_51

    if-le v2, v1, :cond_51

    .line 4736
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 4737
    invoke-interface {v0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_46

    if-eqz v1, :cond_44

    add-int/lit8 v3, v1, -0x1

    .line 4740
    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    .line 4739
    invoke-static {v3}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 4741
    :cond_44
    add-int/lit8 v2, v2, 0x1

    .line 4743
    :cond_46
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    iget-object v3, v3, Landroid/widget/Editor$SuggestionsPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-static {v3}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 4745
    :cond_51
    iget-object v3, p0, Landroid/widget/Editor$SuggestionsPopupWindow$2;->this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-static {v3}, Landroid/widget/Editor$SuggestionsPopupWindow;->-$$Nest$mhideWithCleanUp(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    .line 4746
    return-void
.end method
