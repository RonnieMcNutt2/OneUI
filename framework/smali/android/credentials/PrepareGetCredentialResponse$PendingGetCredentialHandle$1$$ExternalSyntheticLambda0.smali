.class public final synthetic Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/OutcomeReceiver;

.field public final synthetic f$1:Landroid/credentials/GetCredentialResponse;


# direct methods
.method public synthetic constructor <init>(Landroid/os/OutcomeReceiver;Landroid/credentials/GetCredentialResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iput-object p2, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1$$ExternalSyntheticLambda0;->f$1:Landroid/credentials/GetCredentialResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1$$ExternalSyntheticLambda0;->f$0:Landroid/os/OutcomeReceiver;

    iget-object v1, p0, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1$$ExternalSyntheticLambda0;->f$1:Landroid/credentials/GetCredentialResponse;

    invoke-static {v0, v1}, Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle$1;->lambda$onResponse$1(Landroid/os/OutcomeReceiver;Landroid/credentials/GetCredentialResponse;)V

    return-void
.end method
