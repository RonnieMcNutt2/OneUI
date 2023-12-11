.class public final synthetic Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telecom/CallDiagnosticService;

.field public final synthetic f$1:Landroid/telecom/CallDiagnostics;


# direct methods
.method public synthetic constructor <init>(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;->f$0:Landroid/telecom/CallDiagnosticService;

    iput-object p2, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;->f$1:Landroid/telecom/CallDiagnostics;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;->f$0:Landroid/telecom/CallDiagnosticService;

    iget-object v1, p0, Landroid/telecom/CallDiagnosticService$$ExternalSyntheticLambda3;->f$1:Landroid/telecom/CallDiagnostics;

    invoke-static {v0, v1}, Landroid/telecom/CallDiagnosticService;->$r8$lambda$NkkxUtWNlMAIOhG8OHbmSiTzkiA(Landroid/telecom/CallDiagnosticService;Landroid/telecom/CallDiagnostics;)V

    return-void
.end method
