.class public final synthetic Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/credentials/CredentialManager$GetCredentialTransport;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/credentials/CredentialManager$GetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$0:Landroid/credentials/CredentialManager$GetCredentialTransport;

    iput-object p2, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$0:Landroid/credentials/CredentialManager$GetCredentialTransport;

    iget-object v1, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/credentials/CredentialManager$GetCredentialTransport$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/credentials/CredentialManager$GetCredentialTransport;->$r8$lambda$nlbYav9mLBoE6Yh1vFKCvITF3ks(Landroid/credentials/CredentialManager$GetCredentialTransport;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
