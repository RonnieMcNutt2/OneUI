.class public Lcom/samsung/android/infoextraction/SemExtractedInfo;
.super Ljava/lang/Object;
.source "SemExtractedInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/infoextraction/SemExtractedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final HIDE_HERMES_UI:I = 0x2

.field private static final SUPPORT_HERMES_UI:I = 0x1

.field private static final USE_EXTRA:I = 0x2

.field private static final USE_RESULT:I = 0x1


# instance fields
.field private mAccuracy:F

.field private mEndPos:I

.field private mExtraDatas:Ljava/lang/Object;

.field private mResult:Ljava/lang/Object;

.field private mResultType:I

.field private mSrc:Ljava/lang/String;

.field private mStartPos:I

.field private mUIState:I

.field private mUsingData:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 219
    new-instance v0, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/infoextraction/SemExtractedInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIF)V
    .registers 8
    .param p1, "resultType"    # I
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "extraDatas"    # Ljava/lang/Object;
    .param p5, "startPos"    # I
    .param p6, "endPos"    # I
    .param p7, "accuracy"    # F

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 65
    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 67
    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 68
    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 69
    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 70
    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 71
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;IIFII)V
    .registers 10
    .param p1, "resultType"    # I
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "result"    # Ljava/lang/Object;
    .param p4, "extraDatas"    # Ljava/lang/Object;
    .param p5, "startPos"    # I
    .param p6, "endPos"    # I
    .param p7, "accuracy"    # F
    .param p8, "uiState"    # I
    .param p9, "usingData"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 92
    iput-object p2, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 94
    iput-object p4, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 95
    iput p5, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 96
    iput p6, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 97
    iput p7, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 98
    iput p8, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    .line 99
    iput p9, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    .line 100
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .registers 2

    .line 157
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    return v0
.end method

.method public getAdaptableData()Ljava/lang/Object;
    .registers 3

    .line 164
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 165
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndPosition()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    return v0
.end method

.method public getExtraData()Ljava/lang/Object;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    return-object v0
.end method

.method public getResult()Ljava/lang/Object;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultType()I
    .registers 2

    .line 109
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    return v0
.end method

.method public getSource()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public getStartPosition()I
    .registers 2

    .line 141
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    return v0
.end method

.method public isPossibleToShow()Z
    .registers 3

    .line 175
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 176
    return v1

    .line 178
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    .line 207
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    .line 208
    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    .line 214
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 190
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mSrc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mResult:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mExtraDatas:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mStartPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mEndPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 197
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUIState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/samsung/android/infoextraction/SemExtractedInfo;->mUsingData:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    return-void
.end method
