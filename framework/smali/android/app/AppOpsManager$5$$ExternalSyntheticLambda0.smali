.class public final synthetic Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:I

.field public final synthetic f$6:I


# direct methods
.method public synthetic constructor <init>(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$0:I

    iput-object p2, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

    iput p3, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$2:I

    iput-object p4, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iput p6, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$5:I

    iput p7, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$6:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 8

    iget v0, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$0:I

    iget-object v1, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$1:Landroid/app/AppOpsManager$OnOpNotedListener;

    iget v2, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$2:I

    iget-object v3, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$4:Ljava/lang/String;

    iget v5, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$5:I

    iget v6, p0, Landroid/app/AppOpsManager$5$$ExternalSyntheticLambda0;->f$6:I

    invoke-static/range {v0 .. v6}, Landroid/app/AppOpsManager$5;->lambda$opNoted$0(ILandroid/app/AppOpsManager$OnOpNotedListener;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
