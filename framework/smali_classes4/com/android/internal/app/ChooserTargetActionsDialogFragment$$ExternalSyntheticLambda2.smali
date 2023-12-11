.class public final synthetic Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    check-cast p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    invoke-static {v0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment;->$r8$lambda$DtIezDLveyZs5N1lw6obaQiV_DY(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Lcom/android/internal/app/chooser/DisplayResolveInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
