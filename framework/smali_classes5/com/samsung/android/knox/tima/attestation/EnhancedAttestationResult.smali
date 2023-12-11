.class public Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;
.super Ljava/lang/Object;
.source "EnhancedAttestationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;",
            ">;"
        }
    .end annotation
.end field

.field static final DATA_FIELD_BLOB:Ljava/lang/String; = "dataFieldBlob"

.field static final DATA_FIELD_SERVER_RESPONSE_ID:Ljava/lang/String; = "serverResponseId"

.field static final DATA_FIELD_SERVER_RESPONSE_RAW_DATA:Ljava/lang/String; = "serverResponseRawData"

.field static final DATA_FIELD_UNIQUE_ID:Ljava/lang/String; = "dataFieldUniqueId"

.field static final DATA_FIELD_URL:Ljava/lang/String; = "dataFieldUrl"

.field static final ERROR_BAD_REQUEST:I = 0x190

.field static final ERROR_BIND_FAIL:I = -0x7

.field static final ERROR_CONFLICT:I = 0x199

.field static final ERROR_DEVICE_NOT_SUPPORTED:I = -0x4

.field static final ERROR_FORBIDDEN:I = 0x193

.field static final ERROR_INTERNAL_SERVER:I = 0x1f4

.field static final ERROR_INVALID_AUK:I = -0x6

.field static final ERROR_INVALID_NONCE:I = -0x5

.field static final ERROR_NETWORK:I = -0x8

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_NOT_FOUND:I = 0x194

.field static final ERROR_PERMISSION:I = -0x2

.field static final ERROR_RETRY_AFTER:Ljava/lang/String; = "Retry-After:"

.field static final ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field static final ERROR_TIMA_INTERNAL:I = -0x3

.field static final ERROR_UNAUTHORIZED:I = 0x191

.field static final ERROR_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SEMEAPolicyResult"


# instance fields
.field private data:Landroid/os/Bundle;

.field private errorCode:I

.field private reason:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    .line 103
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method getBlob()[B
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 157
    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_6
    const-string v1, "dataFieldBlob"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method getError()I
    .registers 2

    .line 127
    iget v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    return v0
.end method

.method getReason()Ljava/lang/String;
    .registers 2

    .line 131
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    return-object v0
.end method

.method getResponseRawData()Ljava/lang/String;
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 150
    const/4 v0, 0x0

    return-object v0

    .line 152
    :cond_6
    const-string/jumbo v1, "serverResponseRawData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRetryAfterTime()I
    .registers 5

    .line 170
    const-string v0, "Retry-After:"

    const/4 v1, -0x1

    .line 172
    .local v1, "time":I
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    if-eqz v2, :cond_1c

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 173
    iget-object v2, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    const-string v3, ""

    .line 174
    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_1d

    .line 175
    .local v0, "tempTime":I
    if-lez v0, :cond_1c

    .line 176
    move v1, v0

    .line 181
    .end local v0    # "tempTime":I
    :cond_1c
    goto :goto_3b

    .line 179
    :catch_1d
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRetryAfterTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SEMEAPolicyResult"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3b
    return v1
.end method

.method getServerResponseId()Ljava/lang/String;
    .registers 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_6
    const-string/jumbo v1, "serverResponseId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUniqueId()Ljava/lang/String;
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 136
    const/4 v0, 0x0

    return-object v0

    .line 138
    :cond_6
    const-string v1, "dataFieldUniqueId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getUrl()Ljava/lang/String;
    .registers 3

    .line 142
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    if-nez v0, :cond_6

    .line 143
    const/4 v0, 0x0

    return-object v0

    .line 145
    :cond_6
    const-string v1, "dataFieldUrl"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setData(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .line 116
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method public setErrorCode(I)V
    .registers 2
    .param p1, "errorCode"    # I

    .line 109
    iput p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    .line 110
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg"    # I

    .line 94
    iget v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->errorCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/knox/tima/attestation/EnhancedAttestationResult;->data:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method
