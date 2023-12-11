.class public final synthetic Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/view/inputmethod/InlineSuggestion;


# direct methods
.method public synthetic constructor <init>(Landroid/view/inputmethod/InlineSuggestion;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Landroid/view/inputmethod/InlineSuggestion$$ExternalSyntheticLambda2;->f$0:Landroid/view/inputmethod/InlineSuggestion;

    check-cast p1, Landroid/widget/inline/InlineContentView;

    invoke-static {v0, p1}, Landroid/view/inputmethod/InlineSuggestion;->$r8$lambda$Ppdwp4liOap3PwKg0I33FWQ_G1c(Landroid/view/inputmethod/InlineSuggestion;Landroid/widget/inline/InlineContentView;)V

    return-void
.end method
