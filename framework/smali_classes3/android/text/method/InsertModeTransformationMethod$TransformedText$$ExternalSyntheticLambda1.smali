.class public final synthetic Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/text/method/InsertModeTransformationMethod$TransformedText;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/text/method/InsertModeTransformationMethod$TransformedText;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$0:Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    iput p2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$1:I

    iput p3, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$2:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$0:Landroid/text/method/InsertModeTransformationMethod$TransformedText;

    iget v1, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$1:I

    iget v2, p0, Landroid/text/method/InsertModeTransformationMethod$TransformedText$$ExternalSyntheticLambda1;->f$2:I

    invoke-static {v0, v1, v2, p1}, Landroid/text/method/InsertModeTransformationMethod$TransformedText;->$r8$lambda$SS5xhYWwXLj1zuFMbVp9FiOhXW4(Landroid/text/method/InsertModeTransformationMethod$TransformedText;IILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
