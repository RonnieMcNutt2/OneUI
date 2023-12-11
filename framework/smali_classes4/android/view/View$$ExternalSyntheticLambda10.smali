.class public final synthetic Landroid/view/View$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/View$$ExternalSyntheticLambda10;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Landroid/view/View$$ExternalSyntheticLambda10;->f$0:I

    check-cast p1, Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/View;->lambda$findUserSetNextKeyboardNavigationCluster$4(ILandroid/view/View;)Z

    move-result p1

    return p1
.end method
