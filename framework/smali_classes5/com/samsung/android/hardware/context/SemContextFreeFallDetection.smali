.class public Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextFreeFallDetection.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;",
            ">;"
        }
    .end annotation
.end field

.field public static final END:I = 0x2

.field public static final START:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 109
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 131
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->readFromParcel(Landroid/os/Parcel;)V

    .line 138
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 187
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 188
    return-void
.end method


# virtual methods
.method public getHeight()J
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStatus()I
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 163
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    .line 164
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 177
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFreeFallDetection;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 178
    return-void
.end method
