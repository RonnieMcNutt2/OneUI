.class public Lcom/samsung/android/hardware/context/SemContextStepCountAlert;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextStepCountAlert.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextStepCountAlert;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXPIRED:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 98
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 120
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 125
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 126
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->readFromParcel(Landroid/os/Parcel;)V

    .line 127
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 175
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 176
    return-void
.end method


# virtual methods
.method public getAlert()I
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 137
    return v1

    .line 139
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 151
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    .line 152
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextStepCountAlert;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method
