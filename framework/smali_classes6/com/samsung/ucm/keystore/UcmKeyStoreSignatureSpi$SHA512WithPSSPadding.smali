.class public final Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi$SHA512WithPSSPadding;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.source "UcmKeyStoreSignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SHA512WithPSSPadding"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 219
    const-string v0, "SHA512withRSA/PSS"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreSignatureSpi;-><init>(Ljava/lang/String;)V

    .line 220
    return-void
.end method
