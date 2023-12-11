.class public Lcom/samsung/android/hardware/context/SemContextApproach;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextApproach.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextApproach;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAR:I = 0x0

.field public static final NEAR:I = 0x1


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 95
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextApproach$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextApproach$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextApproach;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 117
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 122
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextApproach;->readFromParcel(Landroid/os/Parcel;)V

    .line 124
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 179
    return-void
.end method


# virtual methods
.method public getApproach()I
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    const-string v1, "Proximity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUserID()I
    .registers 3

    .line 143
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    const-string v1, "UserID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 154
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    .line 155
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 168
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextApproach;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 169
    return-void
.end method
