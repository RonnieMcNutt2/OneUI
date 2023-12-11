.class public Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
.super Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.source "SemSmartClipExtendedMetaTag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SemSmartClipExtendedMetaTag"


# instance fields
.field protected mExtraData:[B

.field protected mParcelableData:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 160
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;

    invoke-direct {v0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag$1;-><init>()V

    sput-object v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 40
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "parcelableData"    # Landroid/os/Parcelable;

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 40
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 93
    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .param p1, "tagType"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "extraData"    # [B

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 40
    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 81
    iput-object p3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getExtraData()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    return-object v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "in"    # Landroid/os/Parcel;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "type":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->setType(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0, v1}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 143
    .local v2, "extraDataLen":I
    const/4 v3, 0x0

    if-ltz v2, :cond_1d

    .line 144
    new-array v4, v2, [B

    iput-object v4, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 145
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    goto :goto_1f

    .line 147
    :cond_1d
    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    .line 151
    :goto_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    .line 152
    .local v4, "parcelableDataExist":Z
    :goto_29
    if-ne v4, v5, :cond_32

    .line 153
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    goto :goto_34

    .line 155
    :cond_32
    iput-object v3, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    .line 157
    :goto_34
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    if-eqz v0, :cond_1c

    .line 117
    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mExtraData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_20

    .line 120
    :cond_1c
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    :goto_20
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;->mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_32

    .line 128
    :cond_2f
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    :goto_32
    return-void
.end method
