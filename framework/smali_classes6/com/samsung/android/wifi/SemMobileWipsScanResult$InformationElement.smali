.class public Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field public static final EID_BSS_LOAD:I = 0xb

.field public static final EID_ERP:I = 0x2a

.field public static final EID_EXTENDED_CAPS:I = 0x7f

.field public static final EID_EXTENDED_SUPPORTED_RATES:I = 0x32

.field public static final EID_EXTENSION_PRESENT:I = 0xff

.field public static final EID_EXT_HE_CAPABILITIES:I = 0x23

.field public static final EID_EXT_HE_OPERATION:I = 0x24

.field public static final EID_HT_CAPABILITIES:I = 0x2d

.field public static final EID_HT_OPERATION:I = 0x3d

.field public static final EID_INTERWORKING:I = 0x6b

.field public static final EID_ROAMING_CONSORTIUM:I = 0x6f

.field public static final EID_RSN:I = 0x30

.field public static final EID_SSID:I = 0x0

.field public static final EID_SUPPORTED_RATES:I = 0x1

.field public static final EID_TIM:I = 0x5

.field public static final EID_VHT_CAPABILITIES:I = 0xbf

.field public static final EID_VHT_OPERATION:I = 0xc0

.field public static final EID_VSA:I = 0xdd


# instance fields
.field public bytes:[B

.field public id:I

.field public idExt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 977
    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;)V
    .registers 3
    .param p1, "rhs"    # Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    .line 936
    iget v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    iput v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    .line 937
    iget-object v0, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    .line 938
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 966
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 994
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 999
    :cond_4
    instance-of v1, p1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 1001
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    .line 1002
    .local v1, "thatIE":Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;
    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    iget v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    iget v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    if-ne v3, v4, :cond_24

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    iget-object v4, v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    .line 1004
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move v0, v2

    .line 1002
    :goto_25
    return v0
.end method

.method public getBytes()Ljava/nio/ByteBuffer;
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 945
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    return v0
.end method

.method public getIdExt()I
    .registers 2

    .line 953
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 1012
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 971
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 972
    iget v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->idExt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 974
    return-void
.end method
