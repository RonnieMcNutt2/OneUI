.class public Lcom/samsung/android/hardware/context/SemContextActivityNotification;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextActivityNotification.java"


# static fields
.field public static final ACCURACY_HIGH:I = 0x2

.field public static final ACCURACY_LOW:I = 0x0

.field public static final ACCURACY_MID:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_BIKE:I = 0x5

.field public static final STATUS_RUN:I = 0x3

.field public static final STATUS_STATIONARY:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field public static final STATUS_VEHICLE:I = 0x4

.field public static final STATUS_WALK:I = 0x2


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotification$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 192
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    .line 193
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 200
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 268
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    .line 269
    return-void
.end method


# virtual methods
.method public getAccuracy()I
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    const-string v1, "Accuracy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .registers 3

    .line 221
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    const-string v1, "ActivityType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getTimeStamp()J
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    const-string v1, "TimeStamp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 244
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    .line 245
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 258
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotification;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 259
    return-void
.end method
