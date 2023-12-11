.class public Lcom/android/ims/internal/uce/options/OptionsSipResponse;
.super Ljava/lang/Object;
.source "OptionsSipResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/ims/internal/uce/options/OptionsSipResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

.field private mReasonHeader:Ljava/lang/String;

.field private mReasonPhrase:Ljava/lang/String;

.field private mRequestId:I

.field private mRetryAfter:I

.field private mSipResponseCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsSipResponse$1;-><init>()V

    sput-object v0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 30
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 31
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 142
    new-instance v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-direct {v0}, Lcom/android/ims/internal/uce/options/OptionsCmdId;-><init>()V

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 143
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 30
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 31
    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->readFromParcel(Landroid/os/Parcel;)V

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/ims/internal/uce/options/OptionsSipResponse-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/ims/internal/uce/options/OptionsSipResponse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getCmdId()Lcom/android/ims/internal/uce/options/OptionsCmdId;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    return-object v0
.end method

.method public getReasonHeader()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestId()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    return v0
.end method

.method public getRetryAfter()I
    .registers 2

    .line 108
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    return v0
.end method

.method public getSipResponseCode()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 183
    const-class v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ims/internal/uce/options/OptionsCmdId;

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setCmdId(Lcom/android/ims/internal/uce/options/OptionsCmdId;)V
    .registers 2
    .param p1, "cmdId"    # Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 49
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    .line 50
    return-void
.end method

.method public setReasonHeader(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonHeader"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .registers 2
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 66
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    .line 67
    return-void
.end method

.method public setRetryAfter(I)V
    .registers 2
    .param p1, "retryAfter"    # I

    .line 117
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    .line 118
    return-void
.end method

.method public setSipResponseCode(I)V
    .registers 2
    .param p1, "sipResponseCode"    # I

    .line 83
    iput p1, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 153
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mSipResponseCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonPhrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mCmdId:Lcom/android/ims/internal/uce/options/OptionsCmdId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mRetryAfter:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/OptionsSipResponse;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method
