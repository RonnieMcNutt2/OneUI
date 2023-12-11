.class public Lcom/samsung/android/ims/im/SemImParticipantData;
.super Ljava/lang/Object;
.source "SemImParticipantData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/ims/im/SemImParticipantData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChatId:Ljava/lang/String;

.field private mId:I

.field private mStatus:I

.field private mUriString:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 181
    new-instance v0, Lcom/samsung/android/ims/im/SemImParticipantData$1;

    invoke-direct {v0}, Lcom/samsung/android/ims/im/SemImParticipantData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/ims/im/SemImParticipantData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/ims/im/SemImParticipantData-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/im/SemImParticipantData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6
    .param p1, "chatId"    # Ljava/lang/String;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "status"    # I
    .param p5, "userAlias"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 42
    iput p3, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 43
    iput p4, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 44
    iput-object p5, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getChatId()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 78
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    return v0
.end method

.method public getUriString()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAlias()Ljava/lang/String;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    return-object v0
.end method

.method public setChatId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mChatId"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "mId"    # I

    .line 117
    iput p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    .line 118
    return-void
.end method

.method public setStatus(I)V
    .registers 2
    .param p1, "mStatus"    # I

    .line 127
    iput p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    .line 128
    return-void
.end method

.method public setUriString(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUriString"    # Ljava/lang/String;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .registers 2
    .param p1, "mUserAlias"    # Ljava/lang/String;

    .line 136
    iput-object p1, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 159
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mChatId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUriString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/ims/im/SemImParticipantData;->mUserAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    return-void
.end method
