.class public Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi$HmacSHA256;
.super Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;
.source "UcmKeyStoreMacSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HmacSHA256"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 108
    const-string v0, "HmacSHA256"

    invoke-direct {p0, v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreMacSpi;-><init>(Ljava/lang/String;)V

    .line 109
    return-void
.end method
