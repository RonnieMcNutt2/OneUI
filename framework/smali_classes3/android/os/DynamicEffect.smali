.class public final Landroid/os/DynamicEffect;
.super Landroid/os/VibrationEffect;
.source "DynamicEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/DynamicEffect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mJson:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 91
    new-instance v0, Landroid/os/DynamicEffect$1;

    invoke-direct {v0}, Landroid/os/DynamicEffect$1;-><init>()V

    sput-object v0, Landroid/os/DynamicEffect;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 19
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "json"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 23
    iput-object p1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static create(Ljava/lang/String;)Landroid/os/DynamicEffect;
    .registers 2
    .param p0, "json"    # Ljava/lang/String;

    .line 16
    new-instance v0, Landroid/os/DynamicEffect;

    invoke-direct {v0, p0}, Landroid/os/DynamicEffect;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public areVibrationFeaturesSupported(Landroid/os/Vibrator;)Z
    .registers 3
    .param p1, "vibrator"    # Landroid/os/Vibrator;

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public computeCreateWaveformOffOnTimingsOrNull()[J
    .registers 2

    .line 73
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Landroid/os/DynamicEffect;

    if-nez v0, :cond_6

    .line 55
    const/4 v0, 0x0

    return v0

    .line 57
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/os/DynamicEffect;

    iget-object v0, v0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    iget-object v1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getDuration()J
    .registers 3

    .line 37
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEffectInfo()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public resolve(I)Landroid/os/DynamicEffect;
    .registers 2
    .param p1, "defaultAmplitude"    # I

    .line 43
    return-object p0
.end method

.method public bridge synthetic resolve(I)Landroid/os/VibrationEffect;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->resolve(I)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public scale(F)Landroid/os/DynamicEffect;
    .registers 2
    .param p1, "scaleFactor"    # F

    .line 49
    return-object p0
.end method

.method public bridge synthetic scale(F)Landroid/os/VibrationEffect;
    .registers 2

    .line 11
    invoke-virtual {p0, p1}, Landroid/os/DynamicEffect;->scale(F)Landroid/os/DynamicEffect;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DynamicEffect{mJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/DynamicEffect;->mJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .registers 1

    .line 33
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 83
    return-void
.end method
