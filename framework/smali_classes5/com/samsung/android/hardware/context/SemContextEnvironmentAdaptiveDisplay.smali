.class public Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;
.super Lcom/samsung/android/hardware/context/SemContextEventContext;
.source "SemContextEnvironmentAdaptiveDisplay.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 94
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 116
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "src"    # Landroid/os/Parcel;

    .line 121
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextEventContext;-><init>()V

    .line 122
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->readFromParcel(Landroid/os/Parcel;)V

    .line 123
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 203
    return-void
.end method


# virtual methods
.method public getBlue()F
    .registers 3

    .line 149
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v1, "B"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getCCT()I
    .registers 3

    .line 167
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v1, "CCT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getGreen()F
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v1, "G"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getLux()J
    .registers 3

    .line 158
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v1, "Lux"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRed()F
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    const-string v1, "R"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "context"    # Landroid/os/Bundle;

    .line 178
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    .line 179
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextEnvironmentAdaptiveDisplay;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 193
    return-void
.end method
