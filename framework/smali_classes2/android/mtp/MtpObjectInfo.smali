.class public final Landroid/mtp/MtpObjectInfo;
.super Ljava/lang/Object;
.source "MtpObjectInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpObjectInfo$Builder;
    }
.end annotation


# instance fields
.field private mAssociationDesc:I

.field private mAssociationType:I

.field private mCompressedSize:I

.field private mDateCreated:J

.field private mDateModified:J

.field private mFormat:I

.field private mHandle:I

.field private mImagePixDepth:I

.field private mImagePixHeight:I

.field private mImagePixWidth:I

.field private mKeywords:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParent:I

.field private mProtectionStatus:I

.field private mSequenceNumber:I

.field private mStorageId:I

.field private mThumbCompressedSize:I

.field private mThumbFormat:I

.field private mThumbPixHeight:I

.field private mThumbPixWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAssociationDesc(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAssociationType(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompressedSize(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDateCreated(Landroid/mtp/MtpObjectInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDateModified(Landroid/mtp/MtpObjectInfo;)J
    .registers 3

    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmFormat(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImagePixDepth(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImagePixHeight(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImagePixWidth(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeywords(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmName(Landroid/mtp/MtpObjectInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmParent(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProtectionStatus(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSequenceNumber(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageId(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbFormat(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbPixHeight(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbPixWidth(Landroid/mtp/MtpObjectInfo;)I
    .registers 1

    iget p0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAssociationDesc(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAssociationType(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCompressedSize(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDateCreated(Landroid/mtp/MtpObjectInfo;J)V
    .registers 3

    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDateModified(Landroid/mtp/MtpObjectInfo;J)V
    .registers 3

    iput-wide p1, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFormat(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandle(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImagePixDepth(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImagePixHeight(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmImagePixWidth(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmKeywords(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmName(Landroid/mtp/MtpObjectInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmParent(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmProtectionStatus(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSequenceNumber(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStorageId(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbCompressedSize(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbFormat(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbPixHeight(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmThumbPixWidth(Landroid/mtp/MtpObjectInfo;I)V
    .registers 2

    iput p1, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$smlongToUint32(JLjava/lang/String;)I
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/mtp/MtpObjectInfo;->longToUint32(JLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method private constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string v0, ""

    iput-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpObjectInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/mtp/MtpObjectInfo;-><init>()V

    return-void
.end method

.method private static longToUint32(JLjava/lang/String;)I
    .registers 10
    .param p0, "value"    # J
    .param p2, "valueName"    # Ljava/lang/String;

    .line 520
    const-wide/16 v2, 0x0

    const-wide v4, 0xffffffffL

    move-wide v0, p0

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(JJJLjava/lang/String;)J

    .line 521
    long-to-int v0, p0

    return v0
.end method

.method private static uint32ToLong(I)J
    .registers 5
    .param p0, "value"    # I

    .line 516
    if-gez p0, :cond_a

    const-wide v0, 0x100000000L

    int-to-long v2, p0

    add-long/2addr v2, v0

    goto :goto_b

    :cond_a
    int-to-long v2, p0

    :goto_b
    return-wide v2
.end method


# virtual methods
.method public final getAssociationDesc()I
    .registers 2

    .line 286
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationDesc:I

    return v0
.end method

.method public final getAssociationType()I
    .registers 2

    .line 275
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mAssociationType:I

    return v0
.end method

.method public final getCompressedSize()I
    .registers 2

    .line 106
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 107
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    return v0
.end method

.method public final getCompressedSizeLong()J
    .registers 3

    .line 116
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mCompressedSize:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getDateCreated()J
    .registers 3

    .line 330
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateCreated:J

    return-wide v0
.end method

.method public final getDateModified()J
    .registers 3

    .line 340
    iget-wide v0, p0, Landroid/mtp/MtpObjectInfo;->mDateModified:J

    return-wide v0
.end method

.method public final getFormat()I
    .registers 2

    .line 81
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mFormat:I

    return v0
.end method

.method public final getImagePixDepth()I
    .registers 2

    .line 241
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 242
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    return v0
.end method

.method public final getImagePixDepthLong()J
    .registers 3

    .line 252
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixDepth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixHeight()I
    .registers 2

    .line 220
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 221
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    return v0
.end method

.method public final getImagePixHeightLong()J
    .registers 3

    .line 231
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixHeight:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getImagePixWidth()I
    .registers 2

    .line 199
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 200
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    return v0
.end method

.method public final getImagePixWidthLong()J
    .registers 3

    .line 210
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mImagePixWidth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .registers 2

    .line 349
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .line 320
    iget-object v0, p0, Landroid/mtp/MtpObjectInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public final getObjectHandle()I
    .registers 2

    .line 63
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mHandle:I

    return v0
.end method

.method public final getParent()I
    .registers 2

    .line 262
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mParent:I

    return v0
.end method

.method public final getProtectionStatus()I
    .registers 2

    .line 97
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mProtectionStatus:I

    return v0
.end method

.method public final getSequenceNumber()I
    .registers 2

    .line 298
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 299
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    return v0
.end method

.method public final getSequenceNumberLong()J
    .registers 3

    .line 311
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mSequenceNumber:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getStorageId()I
    .registers 2

    .line 72
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mStorageId:I

    return v0
.end method

.method public final getThumbCompressedSize()I
    .registers 2

    .line 136
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 137
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    return v0
.end method

.method public final getThumbCompressedSizeLong()J
    .registers 3

    .line 147
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbCompressedSize:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbFormat()I
    .registers 2

    .line 126
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbFormat:I

    return v0
.end method

.method public final getThumbPixHeight()I
    .registers 2

    .line 178
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 179
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    return v0
.end method

.method public final getThumbPixHeightLong()J
    .registers 3

    .line 189
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixHeight:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getThumbPixWidth()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 158
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    return v0
.end method

.method public final getThumbPixWidthLong()J
    .registers 3

    .line 168
    iget v0, p0, Landroid/mtp/MtpObjectInfo;->mThumbPixWidth:I

    invoke-static {v0}, Landroid/mtp/MtpObjectInfo;->uint32ToLong(I)J

    move-result-wide v0

    return-wide v0
.end method
