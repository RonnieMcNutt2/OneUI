.class public final synthetic Landroid/app/AppOpsManager$OnOpNotedCallback$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

.field public final synthetic f$1:Landroid/app/AsyncNotedAppOp;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AppOpsManager$OnOpNotedCallback$1;Landroid/app/AsyncNotedAppOp;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/AppOpsManager$OnOpNotedCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

    iput-object p2, p0, Landroid/app/AppOpsManager$OnOpNotedCallback$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/AsyncNotedAppOp;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/app/AppOpsManager$OnOpNotedCallback$1$$ExternalSyntheticLambda0;->f$0:Landroid/app/AppOpsManager$OnOpNotedCallback$1;

    iget-object v1, p0, Landroid/app/AppOpsManager$OnOpNotedCallback$1$$ExternalSyntheticLambda0;->f$1:Landroid/app/AsyncNotedAppOp;

    invoke-static {v0, v1}, Landroid/app/AppOpsManager$OnOpNotedCallback$1;->$r8$lambda$CMsSZAv1UafQhb636GB40RrWhZY(Landroid/app/AppOpsManager$OnOpNotedCallback$1;Landroid/app/AsyncNotedAppOp;)V

    return-void
.end method
