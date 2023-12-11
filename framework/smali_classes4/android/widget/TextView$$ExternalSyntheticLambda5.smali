.class public final synthetic Landroid/widget/TextView$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/widget/TextView;

.field public final synthetic f$1:Landroid/view/textclassifier/TextClassification$Request;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/TextView;

    iput-object p2, p0, Landroid/widget/TextView$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/widget/TextView$$ExternalSyntheticLambda5;->f$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$$ExternalSyntheticLambda5;->f$1:Landroid/view/textclassifier/TextClassification$Request;

    invoke-static {v0, v1}, Landroid/widget/TextView;->$r8$lambda$r7T8VBvplVWtp3PBSSwBlAe-cyE(Landroid/widget/TextView;Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    return-object v0
.end method
