.class public Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi$OAEPWithSHA512AndMGF1Padding;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.source "UcmKeyStoreCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEPWithSHA512AndMGF1Padding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 409
    const/4 v0, 0x3

    const-string v1, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-direct {p0, v0, v1}, Lcom/samsung/ucm/keystore/UcmKeyStoreCipherSpi;-><init>(ILjava/lang/String;)V

    .line 410
    return-void
.end method
