.class public Lcom/sec/android/sdhms/OverheatReasonInternal;
.super Ljava/lang/Object;
.source "OverheatReasonInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CHARGER_TYPE_AC:I = 0x1

.field public static final CHARGER_TYPE_AFC:I = 0x8

.field public static final CHARGER_TYPE_USB:I = 0x2

.field public static final CHARGER_TYPE_WIRELESS:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/android/sdhms/OverheatReasonInternal;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENVIRONMENT_TYPE_AMBIENT:I = 0x4

.field public static final ENVIRONMENT_TYPE_BLANKET:I = 0x2

.field public static final ENVIRONMENT_TYPE_SUNLIGHT:I = 0x1

.field public static final REASON_CHARGING:I = 0x1

.field public static final REASON_ENVIRONMENT:I = 0x8

.field public static final REASON_HIGH_NETWORK_USAGE:I = 0x2

.field public static final REASON_HIGH_PROCESS_USAGE:I = 0x4

.field public static final REASON_SCENARIO_CAMERA:I = 0x10000

.field public static final REASON_SCENARIO_GAME:I = 0x20000

.field public static final REASON_SCENARIO_NAVIGATION:I = 0x40000


# instance fields
.field private beginTime:J

.field private cameraApp:Ljava/lang/String;

.field private chargerType:I

.field private endTime:J

.field private environmentType:I

.field private gameApp:Ljava/lang/String;

.field private navigationApp:Ljava/lang/String;

.field private networkApp:Ljava/lang/String;

.field private processApp:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Lcom/sec/android/sdhms/OverheatReasonInternal$1;

    invoke-direct {v0}, Lcom/sec/android/sdhms/OverheatReasonInternal$1;-><init>()V

    sput-object v0, Lcom/sec/android/sdhms/OverheatReasonInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "begin"    # J
    .param p3, "end"    # J
    .param p5, "charger"    # I
    .param p6, "camera"    # Ljava/lang/String;
    .param p7, "game"    # Ljava/lang/String;
    .param p8, "navigation"    # Ljava/lang/String;
    .param p9, "network"    # Ljava/lang/String;
    .param p10, "process"    # Ljava/lang/String;
    .param p11, "environment"    # I

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->beginTime:J

    .line 58
    iput-wide p3, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->endTime:J

    .line 59
    iput p5, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->chargerType:I

    .line 60
    iput-object p6, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->cameraApp:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->gameApp:Ljava/lang/String;

    .line 62
    iput-object p8, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->navigationApp:Ljava/lang/String;

    .line 63
    iput-object p9, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->networkApp:Ljava/lang/String;

    .line 64
    iput-object p10, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->processApp:Ljava/lang/String;

    .line 65
    iput p11, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->environmentType:I

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->beginTime:J

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->endTime:J

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->chargerType:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->cameraApp:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->gameApp:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->navigationApp:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->networkApp:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString16NoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->processApp:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->environmentType:I

    .line 114
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 130
    const/4 v0, 0x0

    return v0
.end method

.method public getBeginTime()J
    .registers 3

    .line 69
    iget-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->beginTime:J

    return-wide v0
.end method

.method public getCameraApp()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->cameraApp:Ljava/lang/String;

    return-object v0
.end method

.method public getChargerType()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->chargerType:I

    return v0
.end method

.method public getEndTime()J
    .registers 3

    .line 73
    iget-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->endTime:J

    return-wide v0
.end method

.method public getEnvironmentType()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->environmentType:I

    return v0
.end method

.method public getGameApp()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->gameApp:Ljava/lang/String;

    return-object v0
.end method

.method public getNavigationApp()Ljava/lang/String;
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->navigationApp:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkApp()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->networkApp:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessApp()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->processApp:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 135
    iget-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->beginTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 136
    iget-wide v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->endTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    iget v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->chargerType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->cameraApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->gameApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->navigationApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->networkApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->processApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString16NoHelper(Ljava/lang/String;)V

    .line 143
    iget v0, p0, Lcom/sec/android/sdhms/OverheatReasonInternal;->environmentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    return-void
.end method
