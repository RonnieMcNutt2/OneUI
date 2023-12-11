.class public final Landroid/media/BluetoothProfileConnectionInfo;
.super Ljava/lang/Object;
.source "BluetoothProfileConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/BluetoothProfileConnectionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsLeOutput:Z

.field private final mProfile:I

.field private final mSupprNoisy:Z

.field private final mVolume:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 51
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo$1;

    invoke-direct {v0}, Landroid/media/BluetoothProfileConnectionInfo$1;-><init>()V

    sput-object v0, Landroid/media/BluetoothProfileConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "profile"    # I

    .line 48
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v0}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    .line 49
    return-void
.end method

.method private constructor <init>(IZIZ)V
    .registers 5
    .param p1, "profile"    # I
    .param p2, "suppressNoisyIntent"    # Z
    .param p3, "volume"    # I
    .param p4, "isLeOutput"    # Z

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    .line 38
    iput-boolean p2, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    .line 39
    iput p3, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    .line 40
    iput-boolean p4, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    .line 41
    return-void
.end method

.method synthetic constructor <init>(IZIZLandroid/media/BluetoothProfileConnectionInfo-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-void
.end method

.method public static createA2dpInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "volume"    # I

    .line 88
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static createA2dpSinkInfo(I)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "volume"    # I

    .line 99
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-direct {v0, v3, v1, p0, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static createHearingAidInfo(Z)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z

    .line 110
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x15

    invoke-direct {v0, v3, p0, v1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static createLeAudioInfo(ZZ)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "isLeOutput"    # Z

    .line 126
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2, p1}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method

.method public static createLeAudioOutputInfo(ZI)Landroid/media/BluetoothProfileConnectionInfo;
    .registers 5
    .param p0, "suppressNoisyIntent"    # Z
    .param p1, "volume"    # I

    .line 142
    new-instance v0, Landroid/media/BluetoothProfileConnectionInfo;

    const/16 v1, 0x16

    const/4 v2, 0x1

    invoke-direct {v0, v1, p0, p1, v2}, Landroid/media/BluetoothProfileConnectionInfo;-><init>(IZIZ)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getProfile()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    return v0
.end method

.method public getVolume()I
    .registers 2

    .line 166
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    return v0
.end method

.method public isLeOutput()Z
    .registers 2

    .line 175
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    return v0
.end method

.method public isSuppressNoisyIntent()Z
    .registers 2

    .line 158
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mProfile:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mSupprNoisy:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 69
    iget v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mVolume:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget-boolean v0, p0, Landroid/media/BluetoothProfileConnectionInfo;->mIsLeOutput:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 71
    return-void
.end method
