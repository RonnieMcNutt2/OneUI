.class public final synthetic Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;->f$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v0

    return-object v0
.end method
