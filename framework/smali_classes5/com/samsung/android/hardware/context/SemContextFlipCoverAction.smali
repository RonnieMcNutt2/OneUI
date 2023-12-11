.class public Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextFlipCoverAction.java"


# static fields
.field public static final CLOSE:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final OPEN:I = 0x0

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 112
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->mContext:Landroid/os/Bundle;

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 140
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->readFromParcel(Landroid/os/Parcel;)V

    .line 141
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->mContext:Landroid/os/Bundle;

    .line 187
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 162
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->mContext:Landroid/os/Bundle;

    .line 163
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 176
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlipCoverAction;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method
