.class public final synthetic Landroid/security/KeyStore2$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/security/KeyStore2$CheckedRemoteRequest;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;->f$0:I

    iput-wide p2, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;->f$1:J

    return-void
.end method


# virtual methods
.method public final execute(Landroid/system/keystore2/IKeystoreService;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;->f$0:I

    iget-wide v1, p0, Landroid/security/KeyStore2$$ExternalSyntheticLambda3;->f$1:J

    invoke-static {v0, v1, v2, p1}, Landroid/security/KeyStore2;->lambda$list$1(IJLandroid/system/keystore2/IKeystoreService;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object p1

    return-object p1
.end method
