.class public final synthetic Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InlineSuggestion;

.field public final synthetic f$1:Landroid/widget/inline/InlineContentView;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    iput-object p2, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;->f$1:Landroid/widget/inline/InlineContentView;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    iget-object v1, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda3;->f$1:Landroid/widget/inline/InlineContentView;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InlineSuggestion;->$r8$lambda$7StBJAgQaRQjWH1XSTci1hRTPig(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    return-void
.end method
