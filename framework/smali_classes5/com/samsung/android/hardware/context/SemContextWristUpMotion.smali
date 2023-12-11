.class public Lcom/samsung/android/hardware/context/SemContextWristUpMotion;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextWristUpMotion.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextWristUpMotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NORMAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 115
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextWristUpMotion$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 159
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 169
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->readFromParcel(Landroid/os/Parcel;)V

    .line 173
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 263
    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 3

    .line 191
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->mContext:Landroid/os/Bundle;

    const-string v1, "Action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 213
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->mContext:Landroid/os/Bundle;

    .line 215
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 241
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextWristUpMotion;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 243
    return-void
.end method
