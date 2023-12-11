.class public Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;
.super Ljava/lang/Object;
.source "SemEnhancedAttestationError.java"


# static fields
.field public static final ERROR_BIND_FAIL:I = -0x7

.field public static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x4

.field public static final ERROR_HTTP_BAD_REQUEST:I = 0x190

.field public static final ERROR_HTTP_CONFLICT:I = 0x199

.field public static final ERROR_HTTP_FORBIDDEN:I = 0x193

.field public static final ERROR_HTTP_INTERNAL_SERVER:I = 0x1f4

.field public static final ERROR_HTTP_NOT_FOUND:I = 0x194

.field public static final ERROR_HTTP_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final ERROR_HTTP_UNAUTHORIZED:I = 0x191

.field public static final ERROR_INVALID_AUK:I = -0x6

.field public static final ERROR_INVALID_NONCE:I = -0x5

.field public static final ERROR_NETWORK_UNAVAILABLE:I = -0x8

.field public static final ERROR_PERMISSION:I = -0x2

.field public static final ERROR_TIMA_INTERNAL:I = -0x3

.field public static final ERROR_UNKNOWN:I = -0x1


# instance fields
.field private result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;)V
    .registers 2
    .param p1, "result"    # Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    .line 78
    return-void
.end method


# virtual methods
.method public getError()I
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getError()I

    move-result v0

    return v0

    .line 104
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseId()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getServerResponseId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRetryAfter()I
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getRetryAfterTime()I

    move-result v0

    return v0

    .line 153
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/SemEnhancedAttestationError;->result:Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;

    if-eqz v0, :cond_9

    .line 126
    invoke-virtual {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method
