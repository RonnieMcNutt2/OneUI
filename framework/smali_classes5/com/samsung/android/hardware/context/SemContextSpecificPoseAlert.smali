.class public Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextSpecificPoseAlert.java"


# static fields
.field public static final ACTION:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 103
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 124
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->mContext:Landroid/os/Bundle;

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 131
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 132
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 179
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->mContext:Landroid/os/Bundle;

    .line 180
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 155
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->mContext:Landroid/os/Bundle;

    .line 156
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSpecificPoseAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    return-void
.end method
