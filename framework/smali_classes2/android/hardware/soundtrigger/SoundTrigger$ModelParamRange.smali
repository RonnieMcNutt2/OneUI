.class public final Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModelParamRange"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnd:I

.field private final mStart:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 991
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange$1;-><init>()V

    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 962
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    .line 963
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    .line 964
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    .line 969
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    .line 970
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 1009
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1024
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1025
    return v0

    .line 1027
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 1028
    return v1

    .line 1030
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 1031
    return v1

    .line 1033
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;

    .line 1034
    .local v2, "other":Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    if-eq v3, v4, :cond_1d

    .line 1035
    return v1

    .line 1037
    :cond_1d
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    iget v4, v2, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    if-eq v3, v4, :cond_24

    .line 1038
    return v1

    .line 1040
    :cond_24
    return v0
.end method

.method public getEnd()I
    .registers 2

    .line 987
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    return v0
.end method

.method public getStart()I
    .registers 2

    .line 978
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 1015
    const/16 v0, 0x1f

    .line 1016
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 1017
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    add-int/2addr v2, v3

    .line 1018
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    add-int/2addr v1, v3

    .line 1019
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelParamRange [start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1045
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$ModelParamRange;->mEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1047
    return-void
.end method
