.class public final synthetic Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

.field public final synthetic f$1:Landroid/telecom/CallAudioState;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/CallAudioState;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder$$ExternalSyntheticLambda0;->f$1:Landroid/telecom/CallAudioState;

    invoke-static {v0, v1}, Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;->$r8$lambda$rRDmXDBPZ-lsTZifYebC3-sxk7w(Landroid/telecom/CallDiagnosticService$CallDiagnosticServiceBinder;Landroid/telecom/CallAudioState;)V

    return-void
.end method
