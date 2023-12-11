.class public Lcom/samsung/android/hardware/context/SemContextFlatMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextFlatMotion.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextFlatMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final FALSE:I = 0x2

.field public static final TRUE:I = 0x1

.field public static final UNKNOWN:I


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 108
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextFlatMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 129
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->mContext:Landroid/os/Bundle;

    .line 130
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 136
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 137
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->mContext:Landroid/os/Bundle;

    .line 183
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 147
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 158
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->mContext:Landroid/os/Bundle;

    .line 159
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 172
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextFlatMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 173
    return-void
.end method
